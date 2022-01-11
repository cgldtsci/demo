#include <iostream>
#include <stdio.h>

#include <Python.h>
#include <structmember.h>

#include <stdbool.h>
#include <TH/TH.h>
#include "THP.h"

#include "generic/Storage.cpp"


int main() {
    std::cout << "Hello, World!" << std::endl;
    //动态库部分
    Py_Initialize();
//    struct a a1;

    std::cout << TH_GENERIC_FILE << std::endl;
//    std::cout << a1.num << std::endl;

    return 0;
}
