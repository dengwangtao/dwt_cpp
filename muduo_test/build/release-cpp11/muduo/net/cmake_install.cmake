# Install script for directory: /dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/dwt/cpp_code/dwt_cpp/muduo_test/build/release-cpp11/lib/libmuduo_net.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/dwt/cpp_code/dwt_cpp/muduo_test/build/release-cpp11/muduo/net/CMakeFiles/muduo_net.dir/install-cxx-module-bmi-release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/muduo/net" TYPE FILE FILES
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/Buffer.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/Callbacks.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/Channel.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/Endian.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/EventLoop.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/EventLoopThread.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/EventLoopThreadPool.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/InetAddress.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/TcpClient.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/TcpConnection.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/TcpServer.h"
    "/dwt/cpp_code/dwt_cpp/muduo_test/muduo/muduo/net/TimerId.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/dwt/cpp_code/dwt_cpp/muduo_test/build/release-cpp11/muduo/net/http/cmake_install.cmake")
  include("/dwt/cpp_code/dwt_cpp/muduo_test/build/release-cpp11/muduo/net/inspect/cmake_install.cmake")
  include("/dwt/cpp_code/dwt_cpp/muduo_test/build/release-cpp11/muduo/net/protobuf/cmake_install.cmake")
  include("/dwt/cpp_code/dwt_cpp/muduo_test/build/release-cpp11/muduo/net/protorpc/cmake_install.cmake")

endif()

