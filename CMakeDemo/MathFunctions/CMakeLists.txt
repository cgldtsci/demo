# 使用特定的源码为项目增加lib 
add_library(MathFunctions mysqrt.cpp) 

install(TARGETS MathFunctions DESTINATION lib) 
install(FILES MathFunctions.h DESTINATION include) 