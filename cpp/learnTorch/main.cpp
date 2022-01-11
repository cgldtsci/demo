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

    std::cout << TH_GENERIC_FILE << std::endl;

    return 0;
}
