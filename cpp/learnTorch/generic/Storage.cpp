#ifndef TH_GENERIC_FILE
#define TH_GENERIC_FILE "generic/Storage.cpp"
#else

/* A pointer to RealStorage class defined later in Python */
extern PyObject *THPStorageClass;

PyObject * THPStorage_(newObject)(THStorage *ptr){
    // TODO: error checking
    PyObject *args = PyTuple_New(0); //0个参数

    //从指针 ptr 创建一个 Python 整数,可以使用 PyLong_AsVoidPtr() 返回的指针值
    PyObject *kwargs = Py_BuildValue("{s:N}", "cdata", PyLong_FromVoidPtr(ptr));
//    PyObject *instance = PyObject_Call(THPStorageClass, args, kwargs);
//
    Py_DECREF(args);
    Py_DECREF(kwargs);
    return args;

}

#endif
