#include <iostream>
#include <Python.h>

int main() {
    std::cout << "Hello, World!" << std::endl;
    //动态库部分
    Py_Initialize();
    return 0;
}
