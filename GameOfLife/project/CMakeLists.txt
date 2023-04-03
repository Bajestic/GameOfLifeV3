file(GLOB APP_SRC
  "include/*.hpp"
  "include/types/*.hpp"
  "./*.cpp"
)

add_executable(app ${APP_SRC})