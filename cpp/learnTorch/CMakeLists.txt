CMAKE_MINIMUM_REQUIRED(VERSION 3.17)
PROJECT(learnTorch)

SET(CMAKE_CXX_STANDARD 11)

#SET(PYTHON_INCLUDE_DIR /usr/local/Cellar/python@3.9/3.9.8/Frameworks/Python.framework/Versions/3.9/include/python3.9)
#SET(PYTHON_DYNAMIC_LIB_DIR /usr/local/Cellar/python@3.9/3.9.8/Frameworks/Python.framework/Versions/3.9/lib)
#SET(PYTHON_DYNAMIC_LIB libpython3.9.dylib)

SET(PYTHON_INCLUDE_DIR /usr/local/Cellar/python@3.6/3.6.15/Frameworks/Python.framework/Versions/3.6/include/python3.6m)
SET(PYTHON_DYNAMIC_LIB_DIR /usr/local/Cellar/python@3.6/3.6.15/Frameworks/Python.framework/Versions/3.6/lib)
SET(PYTHON_DYNAMIC_LIB libpython3.6m.dylib)

#SET(PYTHON_INCLUDE_DIR /Library/Frameworks/Python.framework/Versions/3.6/include/python3.6m)
#SET(PYTHON_DYNAMIC_LIB_DIR /Library/Frameworks/Python.framework/Versions/3.6/lib)
#SET(PYTHON_DYNAMIC_LIB libpython3.6m.dylib)


INCLUDE_DIRECTORIES(/usr/local/include)


# 添加Python.h头文件路径
INCLUDE_DIRECTORIES("${PYTHON_INCLUDE_DIR}")
# 添加python动态链接库文件目录
link_directories("${PYTHON_DYNAMIC_LIB_DIR}")

#
#set(TORCH_LIB_DIR "/Users/cgl/Desktop/demo/cpp/learnTorch/torch/lib")
#INCLUDE_DIRECTORIES("${TORCH_LIB_DIR}")

#CONFIGURE_FILE("${TORCH_LIB_DIR}/THGeneral.h.in" "${TH_DIR}/THGeneral.h")

set(SOURCE_FILES main.cpp)
add_executable(learnTorch main.cpp)
target_link_libraries(learnTorch "${PYTHON_DYNAMIC_LIB}")


