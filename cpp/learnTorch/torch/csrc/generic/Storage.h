#ifndef TH_GENERIC_FILE
#define TH_GENERIC_FILE "generic/Storage.h"
#else

// THP TorchPython Storage 定义了个结构体
/* PyObject_HEAD defines the initial segment of every PyObject. */
// #define PyObject_HEAD                   PyObject ob_base;

// typedef struct _object {
//    _PyObject_HEAD_EXTRA
//    Py_ssize_t ob_refcnt;
//    PyTypeObject *ob_type;
//} PyObject;

//所以 THPStorage 有一个 pyobject,一个THStorage,两者结合就是THPStorage
struct THPStorage {
  PyObject_HEAD
  THStorage *cdata;
};

// struct _typeobject {很多}，在 cpython/object.h
//typedef struct _typeobject PyTypeObject;
// extern可以置于变量或者函数前，以标示变量或者函数的定义在别的文件中，提示编译器遇到此变量和函数时在其他模块中寻找其定义
// extern 表明该变量在别的地方已经定义过了,在这里要使用那个变量
// extern用在变量声明中常常有这样一个作用，你在*.c文件中声明了一个全局的变量，
// 这个全局的变量如果要被引用，就放在*.h中并用extern来声明
// extern char g_str[]; // 声明全局变量g_str
extern PyTypeObject THPStorageType;

// 定义了storage的初始化、实例化、子类判断
bool THPStorage_(init)(PyObject *module);
PyObject * THPStorage_(newObject)(THStorage *storage);
bool THPStorage_(IsSubclass)(PyObject *storage);

#endif
