cmake_minimum_required(VERSION 3.10)

project(GameOfLife)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_BUILD_DIRECTORY ../build)
add_subdirectory(project)
add_subdirectory(tests)