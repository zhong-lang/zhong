#!/bin/sh
VERSION=12.0.1
#wget https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.1/llvm-project-${VERSION}.src.tar.xz
#xz -d -k llvm-project-${VERSION}.src.tar.xz
#tar xvf llvm-project-${VERSION}.src.tar.xz
cp -rf clang/* llvm-project-${VERSION}.src/clang/
cd llvm-project-${VERSION}.src
mkdir build
cd build
cmake -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_BUILD_TYPE=Release -G "Unix Makefiles" ../llvm
make -j8
sudo make install
