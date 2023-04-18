cmake_minimum_required(VERSION 3.22)

project(GameOfLife_UT)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_BUILD_DIRECTORY ../../build)

find_package(GTest REQUIRED)

add_executable(GameOfLife_UT main.cpp)
target_link_libraries(GameOfLife_UT ${GTEST_LIBRARIES})

enable_testing()
add_test(add GameOfLife_UT)