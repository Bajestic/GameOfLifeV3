#include <memory>
#include <iostream>
#include "include/Cell.hpp"

int main(int argc, char *argv[])
{
    auto cell = std::make_shared<app::component::Cell>();
    std::cout << "Welcome in Game Of Life!\n";
    return 0;
}