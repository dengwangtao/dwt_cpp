# Install script for directory: /dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/dwt/cpp_code/dwt_cpp/muduo_test/build/release-install-cpp11")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/dwt/cpp_code/dwt_cpp/muduo_test/build/release-cpp11/lib/libmuduo_base.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/dwt/cpp_code/dwt_cpp/muduo_test/build/release-cpp11/muduo/base/CMakeFiles/muduo_base.dir/install-cxx-module-bmi-release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/muduo/base" TYPE FILE FILES
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/AsyncLogging.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/Atomic.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/BlockingQueue.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/BoundedBlockingQueue.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/Condition.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/CountDownLatch.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/CurrentThread.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/Date.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/Exception.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/FileUtil.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/GzipFile.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/LogFile.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/LogStream.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/Logging.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/Mutex.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/ProcessInfo.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/Singleton.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/StringPiece.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/Thread.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/ThreadLocal.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/ThreadLocalSingleton.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/ThreadPool.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/TimeZone.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/Timestamp.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/Types.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/WeakCallback.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/copyable.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/base/noncopyable.h"
    )
endif()

