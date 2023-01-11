cmake_minimum_required(VERSION 3.16)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

if(CROSS_ROOT)
  set(CMAKE_SYSROOT ${CROSS_ROOT})
  #set(CMAKE_FIND_ROOT_PATH ${CROSS_ROOT})
elseif("${CMAKE_SYSROOT}" STREQUAL "")
  #set(CMAKE_SYSROOT /usr/aarch64-linux-gnu)
  set(CMAKE_FIND_ROOT_PATH /usr/aarch64-linux-gnu)
endif()

if(CROSS_C)
  set(CMAKE_C_COMPILER ${CROSS_C})
else()
  set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
endif()
if(CROSS_CXX)
  set(CMAKE_CXX_COMPILER ${CROSS_CXX})
else()
  set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)
endif()

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
