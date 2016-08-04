#include "llvm/Pass.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/Debug.h"

using namespace llvm;

namespace {

class Synthesis : public llvm::FunctionPass {
 private:
  Module *module;

  // Copy of original function
  llvm::Function *function_org;

  // Check if xor/or/not/and instruction, only synthesis on these instructions
  bool isInstModifiable(Value *val);

  // Verification on equivalence
  bool isEquivalent();

  // Verification on pefect masking
  bool isMasked();

 public:
  // Identifier
  static char ID;

  // Constructor. The first argument of the parent constructor is
  // a unique pass identifier.
  Synthesis() : llvm::FunctionPass(ID) {}

  // Virtual function overridden to implement the pass functionality.
  bool doInitialization(Module &module) override;

  // Virtual function overridden to implement the pass functionality.
  bool runOnFunction(llvm::Function &function) override;
};

bool Synthesis::doInitialization(Module &M) {
  this->module = &M;

  return false;
}

bool Synthesis::isInstModifiable(Value *val) {
  auto bin_op_inst = dyn_cast<BinaryOperator>(val);
  if (bin_op_inst) {
    return true;
  } else {
    return false;
  }
}

bool Synthesis::runOnFunction(llvm::Function &function) {
  // Save a copy of original function
  ValueToValueMapTy VMap;
  function_org = CloneFunction(&function, VMap, false, nullptr);

  for (auto &basic_block : function.getBasicBlockList()) {
    for (auto &instruction : basic_block.getInstList()) {
      isInstModifiable(&instruction);
    }
  }

  // Function was modified
  return true;
}

// Pass identifier
char Synthesis::ID = 0;

// Pass registration.
static llvm::RegisterPass<Synthesis> X("synthesis", "Exhausive Synthesis",
                                       false, false);
}