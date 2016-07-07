all: demo.bin demo.mask.bin

mask-linear-function.so: mask-linear-function.cc
	g++ -g -fPIC -shared $? -o $@ -std=c++11 `llvm-config --cppflags`

demo.ll: demo.c
	clang $? -S -emit-llvm -o $@

demo.opt.ll: demo.ll
	opt -mem2reg $? -o demo.opt.bc
	llvm-dis demo.opt.bc

demo.opt.mask.ll: demo.opt.ll mask-linear-function.so
	opt -load ./mask-linear-function.so -mask-linear-function $< -o demo.opt.mask.bc
	llvm-dis demo.opt.mask.bc

demo.o: demo.opt.ll
	llc -filetype=obj $? -o $@

demo.mask.o: demo.opt.mask.ll
	llc -filetype=obj $? -o $@

getMask.o: getMask.c
	gcc -c $? -o $@

demo.bin: demo.o getMask.o
	gcc $? -o $@

demo.mask.bin: demo.mask.o getMask.o
	gcc $? -o $@

clean:
	rm -f *.ll *.bc *.o *bin *.so