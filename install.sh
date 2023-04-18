#!/bin/bash

PROJECT_DIR=$(pwd)
SRC_DIR=${PROJECT_DIR}/GameOfLife
BUILD_DIR=${PROJECT_DIR}/build
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

if [ "$#" -eq 0 ]; then cmake -B . -S${SRC_DIR}
elif [ $1 == "GameOfLife" ]; then cmake -B${BUILD_DIR} -S${SRC_DIR} #--target GameOfLife 
elif [ $1 == "GameOfLife_UT" ]; then cmake -B${BUILD_DIR} -S${SRC_DIR} #--target GameOfLife_UT
elif [ $1 ]; then echo "Bad target!"; exit 3
fi

make
TO_CLEANUP="CMakeFiles cmake_install.cmake CMakeCache.txt compile_commands.json Makefile CTestTestfile.cmake"

cd ${SRC_DIR}
rm -fdr ${TO_CLEANUP}

cd ${SRC_DIR}/project
rm -fdr ${TO_CLEANUP}

cd ${SRC_DIR}/tests
rm -fdr ${TO_CLEANUP}

cd ${BUILD_DIR}/project; ./GameOfLife
cd ${BUILD_DIR}/tests; ./GameOfLife_UT
