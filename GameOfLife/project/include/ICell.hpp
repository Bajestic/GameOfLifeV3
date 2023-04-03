#pragma once
#include "types/State.hpp"

namespace app::component
{
class ICell
{
public:
    virtual types::State getState() const = 0;
    virtual void setState(const types::State) = 0;

    virtual ~ICell() {};
};
} // namespace app::component