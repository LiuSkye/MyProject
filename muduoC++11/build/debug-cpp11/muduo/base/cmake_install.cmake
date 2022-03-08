# Install script for directory: /home/skye/MyTest/aa/muduoC++11/muduo/muduo/base

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/skye/MyTest/aa/muduoC++11/build/debug-install-cpp11")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "debug")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/lib/libmuduo_base.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/muduo/base" TYPE FILE FILES
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/AsyncLogging.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/Atomic.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/BlockingQueue.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/BoundedBlockingQueue.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/Condition.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/CountDownLatch.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/CurrentThread.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/Date.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/Exception.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/FileUtil.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/GzipFile.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/LogFile.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/LogStream.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/Logging.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/Mutex.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/ProcessInfo.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/Singleton.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/StringPiece.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/Thread.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/ThreadLocal.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/ThreadLocalSingleton.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/ThreadPool.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/TimeZone.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/Timestamp.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/Types.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/WeakCallback.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/copyable.h"
    "/home/skye/MyTest/aa/muduoC++11/muduo/muduo/base/noncopyable.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/muduo/base/tests/cmake_install.cmake")

endif()

