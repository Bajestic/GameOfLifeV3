#pragma once

namespace app
{
namespace types
{
enum class State;
} // namespace types
namespace component
{
class ICell
{
public:
    virtual types::State getState() const = 0;
    virtual void setState(const types::State) = 0;

    virtual ~ICell() {};
};
} // namespace component
} // namespace app