file(GLOB APP_SRC
  "include/*.hpp"
  "include/types/*.hpp"
  "./*.cpp"
)

set(CMAKE_BUILD_DIRECTORY ../../build)
add_executable(GameOfLife ${APP_SRC})