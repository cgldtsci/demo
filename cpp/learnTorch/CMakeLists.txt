cmake_minimum_required(VERSION 3.17)
project(learnTorch)

set(CMAKE_CXX_STANDARD 11)

# 添加Python.h头文件路径
INCLUDE_DIRECTORIES("/usr/local/Cellar/python@3.9/3.9.8/Frameworks/Python.framework/Versions/3.9/include/python3.9")
# 添加python动态链接库文件目录
link_directories("/usr/local/Cellar/python@3.9/3.9.8/Frameworks/Python.framework/Versions/3.9/lib")

set(SOURCE_FILES main.cpp)
add_executable(learnTorch main.cpp)
target_link_libraries(learnTorch libpython3.9.dylib)


