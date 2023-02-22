cmake_minimum_required(VERSION 3.0.0)

project(GameOfLife)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
include_directories(./GameOfLife/include)
set(SOURCES ./src/main.cpp)

add_executable(GameOfLife ${SOURCES})