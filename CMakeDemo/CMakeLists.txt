cmake_minimum_required(VERSION 3.10) 

# set the project name 
project(CalculateSqrt VERSION 1.0) 


# 改变安装路径可以使用下面的语句，Unix: "/usr/local", Windows: "c:/Program Files/${PROJECT_NAME}" 为默认值，所有的DESTINATION均以此目录为根目录
set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR}/mymath)

option(USE_MYMATH "Use tutorial provided math implementation" ON) 

configure_file(CalculateSqrtConfig.h.in CalculateSqrtConfig.h) 

# specify the C++ standard 
set(CMAKE_CXX_STANDARD 11) 
set(CMAKE_CXX_STANDARD_REQUIRED True) 

# add the MathFunctions library,Add a subdirectory to the build，将新加的子目录用于build 
if(USE_MYMATH) 
  add_subdirectory(MathFunctions) 
  list(APPEND EXTRA_LIBS MathFunctions) 
  list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR}/MathFunctions") 
endif() 


# add the executable 
add_executable(CalculateSqrt calculate.cpp) 

# 该指令的作用为将目标文件与库文件进行链接 
# target_link_libraries官方文档:https://cmake.org/cmake/help/latest/command/target_link_libraries.html 
target_link_libraries(CalculateSqrt PUBLIC ${EXTRA_LIBS}) 


# PROJECT_BINARY_DIR -> ./build dir
# PROJECT_SOURCE_DIR -> CMakelists.txt dir

target_include_directories(CalculateSqrt PUBLIC 
                           "${PROJECT_BINARY_DIR}" 
                           "${EXTRA_INCLUDES}" 
                           )



install(TARGETS CalculateSqrt DESTINATION bin) 
install(FILES "${PROJECT_BINARY_DIR}/CalculateSqrtConfig.h" 
  DESTINATION include 
  ) 