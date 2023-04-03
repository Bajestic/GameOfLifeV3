#pragma once

#include <vector>
#include "types/State.hpp"
#include "ICell.hpp"

namespace app::component
{
class Cell : public ICell
{
public:
    Cell() = default;
    types::State getState() const override { return types::State::DEAD; };
    void setState(const types::State) override {};

    ~Cell() {};
private:
    types::State state{types::State::DEAD};
};

using Cells = std::vector<Cell>;
} // namespace app::component