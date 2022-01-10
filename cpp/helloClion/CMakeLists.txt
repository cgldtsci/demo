cmake_minimum_required(VERSION 3.17)
project(helloClion)

set(CMAKE_CXX_STANDARD 11)

get_property(dirs DIRECTORY ${CMAKE_SOURCE_DIR} PROPERTY INCLUDE_DIRECTORIES)
MESSAGE(">>> include_dirs=${dirs}") #打印一下目录情况

FIND_PACKAGE(PYTHON REQUIRED)
INCLUDE_DIRECTORIES("/usr/local/Cellar/python@3.9/3.9.8/Frameworks/Python.framework/Versions/3.9/include/python3.9")
# 添加python动态链接库文件目录
link_directories("/usr/local/Cellar/python@3.9/3.9.8/Frameworks/Python.framework/Versions/3.9/lib")


FIND_PACKAGE(GTEST REQUIRED)
INCLUDE_DIRECTORIES("/usr/local/include")
INCLUDE_DIRECTORIES(${GTEST_INCLUDE_DIRS})  # 不知为何，如果没有后面的target_link,则会报找不到gtest/gtest.h的错误

add_executable(helloClion main.cpp)
target_link_libraries(helloClion ${GTEST_LIBRARIES} libpython3.9.dylib)
# target_link_libraries(helloClion libpython3.9.dylib)


