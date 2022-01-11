cmake_minimum_required(VERSION 2.6)

MESSAGE(${CMAKE_BINARY_DIR}) #执行cmake指令所在的目录，如执行 cmake .. 就是build，执行cmake . 就是CMakeLists.txt所在的目录
MESSAGE(${CMAKE_CURRENT_BINARY_DIR})
# SET(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR}/TH)

# Can be compiled standalone
IF(NOT TH_INSTALL_BIN_SUBDIR
        OR NOT TH_INSTALL_LIB_SUBDIR
        OR NOT TH_INSTALL_INCLUDE_SUBDIR
        OR NOT TH_INSTALL_CMAKE_SUBDIR)

    SET(TH_INSTALL_BIN_SUBDIR "bin" CACHE PATH "TH install binary subdirectory")
    SET(TH_INSTALL_LIB_SUBDIR "lib" CACHE PATH "TH install library subdirectory")
    SET(TH_INSTALL_INCLUDE_SUBDIR "include" CACHE PATH "TH install include subdirectory")
    SET(TH_INSTALL_CMAKE_SUBDIR "share/cmake/TH" CACHE PATH "TH install cmake subdirectory")
ENDIF()

CONFIGURE_FILE(THGeneral.h.in "${CMAKE_CURRENT_BINARY_DIR}/THGeneral.h")

INSTALL(FILES
        TH.h
        ${CMAKE_CURRENT_BINARY_DIR}/THGeneral.h
        THGenerateAllTypes.h
        DESTINATION "${TH_INSTALL_INCLUDE_SUBDIR}/TH")