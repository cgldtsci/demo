#include <iostream>
#include <Python.h>

//#include "torch/lib/TH/THStorage.h"
//#include "torch/lib/TH/generic/THStorage.h"

int main() {
    std::cout << "Hello, World!" << std::endl;
    //动态库部分
    Py_Initialize();

    return 0;
}
