#!/bin/bash
set -e
cmake -G Xcode -DCMAKE_TOOLCHAIN_FILE=./ios.toolchain.cmake -T buildsystem=1 -DPLATFORM=SIMULATOR64 -DCMAKE_BUILD_TYPE=Release -DENABLE_SHARED=OFF -DENABLE_BITCODE=1 -S  . -B build_sim

# cmake -DCMAKE_BUILD_TYPE=Release -DENABLE_SHARED=OFF -S . -B build
pushd build
make -j 4
popd
