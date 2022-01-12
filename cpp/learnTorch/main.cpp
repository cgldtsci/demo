#include <iostream>
#include <stdio.h>

#include <Python.h>
#include <structmember.h>

#include <stdbool.h>
#include <TH/TH.h>
#include "THP.h"

#include "generic/Storage.cpp"
//#include <TH/THGenerateAllTypes.h>
#include "THGenerateAllTypes.h"


int main() {
    std::cout << "Hello, World!" << std::endl;
    //动态库部分
    Py_Initialize();

    THPByteStorage;
    THPDoubleStorage;


    return 0;
}
