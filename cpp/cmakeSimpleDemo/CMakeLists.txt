project(HELLO)
set(CODE_LIST main.cpp)
add_executable(hello ${CODE_LIST})
SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake )
message(${CMAKE_MODULE_PATH})

