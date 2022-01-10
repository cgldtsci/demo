#include <iostream>
#include <Python.h>
#include <gtest/gtest.h>

int add(int a, int b){
    return a + b;
}

TEST(test, c1){
    EXPECT_EQ(3, add(1,2));
    EXPECT_EQ(12, add(2,6));
}

int main(int argc, char ** argv) {
    testing::InitGoogleTest(&argc, argv);
    std::cout << "Hello, World!" << std::endl;
    RUN_ALL_TESTS();

    //python头文件部分
    PyObject pa;
    std::cout << pa.ob_refcnt << std::endl;
    std::cout << pa.ob_type << std::endl;
    PyObject_HEAD;

    //动态库部分
    Py_Initialize();

    return 0;


}
