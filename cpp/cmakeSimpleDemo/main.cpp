//main.cpp
#define PI 3.14    //编译阶段替换掉宏
#define T2 (3+4) //7
#define PI2 PI*PI   //编译阶段替换掉宏  // 9.8596

//max和min的宏定义带参数
#define MAX(a,b) (a>b ? a:b)
#define MIN(a,b) (a<b ? a:b)

//使用带参数的宏定义
int sum= MAX(1,2) + MIN(1,2);    //替换后语句为：int sum = (1>2 ? 1:2) + (1<2 ? 1:2) -> 3

#define CONNECT(a,b) a##b
#define TOSTRING(a) #a


//a##b表示连接
int n = CONNECT(123, 456);                //结果  n = 123456

//#a 表示用双引号包括参数a，返回一个字符串
char * str1 = TOSTRING(123);    // str = "123"


#include <iostream>
//#include <python2.7/import.h>
int main()
{
    std::cout<<"Hello World!"<<std::endl;
    std::cout<< str1 <<std::endl;
    return 0;
}
