#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/Debug.h"

#include <set>
#include <iostream>

using namespace llvm;

namespace {

class MaskLinearFunction : public llvm::FunctionPass {
 private:
  std::set<LoadInst *> load_set;
  std::map<LoadInst *, CallInst *> load_mask_map;
  std::set<StoreInst *> store_set;
  std::map<StoreInst *, std::vector<CallInst *>> store_mask_map;

  unsigned mask_id;

  Module *module;

  void getLoadAndStore(llvm::Function &function);

  void maskLoad(LoadInst *ld_inst);
  void maskAll();

  void unmask(StoreInst *st_inst);
  void unmaskAll();

  std::string getMaskId() { return std::to_string(mask_id++); }

  void getDependencyAll();
  StoreInst *getDependency(Instruction *instruction);

 public:
  // Identifier
  static char ID;

  // Constructor. The first argument of the parent constructor is
  // a unique pass identifier.
  MaskLinearFunction() : llvm::FunctionPass(ID) {}

  // Virtual function overridden to implement the pass functionality.
  bool doInitialization(Module &module) override;

  // Virtual function overridden to implement the pass functionality.
  bool runOnFunction(llvm::Function &function) override;
};

void MaskLinearFunction::maskLoad(LoadInst *ld_inst) {
  std::string mask_id =
      ld_inst->hasName() ? ld_inst->getName().str() : getMaskId();

  // mask = getMask()
  LLVMContext &context = module->getContext();
  Type *int_32_type = Type::getInt32Ty(context);

  Constant *mask_func_const =
      module->getOrInsertFunction("getMask", int_32_type, (Type *)nullptr);
  CallInst *call_mask_func =
      CallInst::Create(mask_func_const, "mask." + mask_id);
  call_mask_func->insertBefore(ld_inst);

  // Dummpy instruction to be replaced soon
  BinaryOperator *dummy =
      BinaryOperator::Create(Instruction::Xor, call_mask_func, call_mask_func);
  dummy->insertAfter(ld_inst);
  ld_inst->replaceAllUsesWith(dummy);

  // mask ^ var
  BinaryOperator *xor_ld_mask = BinaryOperator::Create(
      Instruction::Xor, ld_inst, call_mask_func, "masked." + mask_id);
  xor_ld_mask->insertAfter(ld_inst);

  // Record the mapping
  load_mask_map[ld_inst] = call_mask_func;

  // Replace dummpy instruction with masked load
  dummy->replaceAllUsesWith(xor_ld_mask);
  dummy->eraseFromParent();
}

void MaskLinearFunction::maskAll() {
  for (auto ld_inst : load_set) {
    maskLoad(ld_inst);
  }
}

void MaskLinearFunction::unmask(StoreInst *st_inst) {
  std::string mask_id =
      st_inst->hasName() ? st_inst->getName().str() : getMaskId();
  // dbgs() << *st_inst << "\n";

  Instruction *prev_unmask = nullptr;
  for (auto call_mask_func : store_mask_map[st_inst]) {
    // dbgs() << *call_mask_func << "\n";
    BinaryOperator *xor_st_mask = nullptr;

    // var ^ mask
    if (prev_unmask) {
      xor_st_mask = BinaryOperator::Create(Instruction::Xor, prev_unmask,
                                           call_mask_func, "unmask." + mask_id);
    } else {
      xor_st_mask =
          BinaryOperator::Create(Instruction::Xor, st_inst->getOperand(0),
                                 call_mask_func, "unmask." + mask_id);
    }
    prev_unmask = xor_st_mask;
    xor_st_mask->insertBefore(st_inst);
  }
  if (prev_unmask) {
    StoreInst *unmask_st_inst =
        new StoreInst(prev_unmask, st_inst->getPointerOperand(), st_inst);
    st_inst->replaceAllUsesWith(unmask_st_inst);
    st_inst->eraseFromParent();
  }
}

void MaskLinearFunction::unmaskAll() {
  for (auto st_inst : store_set) {
    unmask(st_inst);
  }
}

void MaskLinearFunction::getDependencyAll() {
  for (auto ld_inst : load_set) {
    StoreInst *st_inst = getDependency(ld_inst);
    CallInst *call_mask_func = load_mask_map[ld_inst];
    store_mask_map[st_inst].push_back(call_mask_func);
  }
}

// Recursively visit all the use of an instruction
StoreInst *MaskLinearFunction::getDependency(Instruction *instruction) {
  for (Value::use_iterator i = instruction->use_begin(),
                           e = instruction->use_end();
       i != e; ++i) {
    if (Instruction *inst = dyn_cast<Instruction>(*i))
      if (StoreInst *st_inst = dyn_cast<StoreInst>(inst))
        return st_inst;
      else
        return getDependency(inst);
  }
}

bool MaskLinearFunction::doInitialization(Module &M) {
  this->module = &M;
  this->mask_id = 0;
  return false;
}

bool MaskLinearFunction::runOnFunction(llvm::Function &function) {
  // Get all loads and stores in this function
  getLoadAndStore(function);

  // Mask all loads
  maskAll();

  // Build dependency graph
  getDependencyAll();

  // Unmask all stores
  unmaskAll();

  // Function was modified
  return true;
}

void MaskLinearFunction::getLoadAndStore(llvm::Function &function) {
  // Clear
  this->load_set.clear();
  this->store_set.clear();

  // Assume all load need to be masked, all store need to be unmasked
  for (auto &basic_block : function.getBasicBlockList()) {
    for (auto &instruction : basic_block.getInstList()) {
      if (LoadInst *ld_inst = dyn_cast<LoadInst>(&instruction))
        load_set.insert(ld_inst);
      else if (StoreInst *st_inst = dyn_cast<StoreInst>(&instruction))
        store_set.insert(st_inst);
    }
  }

  // for (auto &st_inst : store_set)
  //   dbgs() << *st_inst << '\n';
  // for (auto &ld_inst : load_set)
  //   dbgs() << *ld_inst << '\n';
}

// Pass identifier
char MaskLinearFunction::ID = 0;

// Pass registration.
static llvm::RegisterPass<MaskLinearFunction> X("mask-linear-function",
                                                "Mask linear function", false,
                                                false);
}