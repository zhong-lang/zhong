#!/bin/sh
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.1/llvm-project-10.0.1.tar.xz
xz -d -k llvm-project-10.0.1.tar.xz
tar xvf llvm-project-10.0.1.tar
cp -rf clang/* llvm-project-10.0.1/clang/
cd llvm-project-10.0.1
mkdir build
cd build
cmake -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_BUILD_TYPE=Release -G "Unix Makefiles" ../llvm
make -j8
sudo make install
