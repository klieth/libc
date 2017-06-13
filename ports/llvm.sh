#!/bin/bash
source environ.sh

UNSTABLE

GIT=https://github.com/ids1024/llvm.git
BRANCH=redox2
DIR=llvm

MAKE_DIR="build"
CMAKE_ARGS=(-Wno-dev -DCMAKE_CROSSCOMPILING=True -DCMAKE_INSTALL_PREFIX="$PREFIX" -DLLVM_DEFAULT_TARGET_TRIPLE=$HOST -DLLVM_TARGET_ARCH=$ARCH -DLLVM_TARGETS_TO_BUILD=X86 -DCMAKE_SYSTEM_NAME=Generic -DPYTHON_EXECUTABLE=/usr/bin/python2 -DUNIX=1 -DLLVM_ENABLE_THREADS=Off -DLLVM_INCLUDE_TESTS=OFF -target=$HOST --sysroot="$SYSROOT" -DLLVM_TABLEGEN=/usr/bin/llvm-tblgen -I${BUILD}/prefix/${HOST}/include -DCMAKE_CXX_FLAGS='--std=gnu++11' -DLLVM_TOOL_LTO_BUILD=Off -DLLVM_TOOL_LLVM_PROFDATA_BUILD=Off -DLLVM_TOOL_LLI_BUILD=Off -DLLVM_TOOL_RDOBJ_BUILD=Off -DLLVM_TOOL_LLVM_COV_BUILD=Off -DLLVM_TOOL_LLVM_XRAY_BUILD=Off -DLLVM_TOOL_LLVM_LTO2_BUILD=Off -DLLVM_TOOL_LLVM_LTO_BUILD=Off -DLLVM_TOOL_LLVM_RTDYLD_BUILD=Off)

cmake_template $*
