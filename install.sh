#!/bin/bash

BUILD_DIR=./build
GCC_COMPILER_PATH=$(which gcc)
cmake -D CMAKE_C_COMPILER="${GCC_COMPILER_PATH}" -D CMAKE_CXX_COMPILER="${GCC_COMPILER_PATH}" ./GameOfLife/CMakeLists.txt

if [ -d "$BUILD_DIR" ];
then
    echo "$BUILD_DIR directory already exists. Make cleanup"
    cd ${BUILD_DIR}
    rm -fdr *

else
	echo "$BUILD_DIR directory does not exist. Create build folder"
    mkdir build
    cd ${BUILD_DIR}
fi

cmake ../GameOfLife -B./
pwd
make
echo "Installed successful"
cd ../GameOfLife
rm -fdr CMakeFiles cmake_install.cmake CMakeCache.txt compile_commands.json Makefile