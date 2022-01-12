#ifndef TH_ALLOCATOR_INC
#define TH_ALLOCATOR_INC

#include "THGeneral.h"

#define TH_ALLOCATOR_MAPPED_SHARED 1
#define TH_ALLOCATOR_MAPPED_SHAREDMEM 2

/* Custom allocator
 */
typedef struct THAllocator {
    void* (*malloc)(void*, long);
    void* (*realloc)(void*, void*, long);
    void (*free)(void*, void*);
} THAllocator;

#endif
