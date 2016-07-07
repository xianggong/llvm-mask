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
  std::set<StoreInst *> store_set;
  std::map<StoreInst *, std::vector<LoadInst *>> dependency_map;

  unsigned mask_id;

  Module *module;

  void getLoadAndStore(llvm::Function &function);
  void maskLoad(LoadInst *ld_inst);
  void maskAll();

  std::string getMaskId() { return std::to_string(mask_id++); }

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
  BinaryOperator *dummy = BinaryOperator::Create(
      Instruction::Xor, call_mask_func, call_mask_func);
  dummy->insertAfter(ld_inst);
  ld_inst->replaceAllUsesWith(dummy);

  // mask ^ var
  BinaryOperator *xor_ld_mask = BinaryOperator::Create(
      Instruction::Xor, ld_inst, call_mask_func, "masked." + mask_id);
  xor_ld_mask->insertAfter(ld_inst);

  // Replace dummpy instruction with masked load
  dummy->replaceAllUsesWith(xor_ld_mask);
  dummy->eraseFromParent();
}

void MaskLinearFunction::maskAll() {
  for (auto ld_inst : load_set) {
    maskLoad(ld_inst);
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

  // Build dependency graph

  // Mask all loads
  maskAll();

  // Unmask all stores

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

// Pass registration. Pass will be available as 'print' from the LLVM
// optimizer tool.
static llvm::RegisterPass<MaskLinearFunction> X("mask-linear-function",
                                                "Mask linear function", false,
                                                false);
}