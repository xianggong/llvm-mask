all: 

synthesis.so: synthesis.cc
	g++ -g -fPIC -shared $? -o $@ -std=c++11 `llvm-config --cppflags`

test_and.ll: test_and.cc
	clang $? -S -emit-llvm -o $@

test_and.opt.ll: test_and.ll
	opt -mem2reg $? -o test_and.opt.bc
	llvm-dis test_and.opt.bc

test_and.opt.synthesis.ll: test_and.opt.ll synthesis.so
	opt -load ./synthesis.so -synthesis $< -o test_and.opt.synthesis.bc
	llvm-dis test_and.opt.synthesis.bc
