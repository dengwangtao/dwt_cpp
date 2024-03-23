# Install script for directory: /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/json" TYPE FILE FILES
    "/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/include/json/allocator.h"
    "/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/include/json/assertions.h"
    "/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/include/json/config.h"
    "/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/include/json/forwards.h"
    "/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/include/json/json.h"
    "/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/include/json/json_features.h"
    "/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/include/json/reader.h"
    "/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/include/json/value.h"
    "/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/include/json/version.h"
    "/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/include/json/writer.h"
    )
endif()

