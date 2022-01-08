#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "MyMath::mymath" for configuration ""
set_property(TARGET MyMath::mymath APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(MyMath::mymath PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libmymath.dylib"
  IMPORTED_SONAME_NOCONFIG "@rpath/libmymath.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS MyMath::mymath )
list(APPEND _IMPORT_CHECK_FILES_FOR_MyMath::mymath "${_IMPORT_PREFIX}/lib/libmymath.dylib" )

# Import target "MyMath::mymathapp" for configuration ""
set_property(TARGET MyMath::mymathapp APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(MyMath::mymathapp PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/mymathapp"
  )

list(APPEND _IMPORT_CHECK_TARGETS MyMath::mymathapp )
list(APPEND _IMPORT_CHECK_FILES_FOR_MyMath::mymathapp "${_IMPORT_PREFIX}/bin/mymathapp" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
