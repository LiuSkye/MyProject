# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/skye/MyTest/aa/muduoC++11/muduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11

# Include any dependencies generated for this target.
include muduo/net/tests/CMakeFiles/echoserver_unittest.dir/depend.make

# Include the progress variables for this target.
include muduo/net/tests/CMakeFiles/echoserver_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include muduo/net/tests/CMakeFiles/echoserver_unittest.dir/flags.make

muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o: muduo/net/tests/CMakeFiles/echoserver_unittest.dir/flags.make
muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o: /home/skye/MyTest/aa/muduoC++11/muduo/muduo/net/tests/EchoServer_unittest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/muduo/net/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o -c /home/skye/MyTest/aa/muduoC++11/muduo/muduo/net/tests/EchoServer_unittest.cc

muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.i"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/muduo/net/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/skye/MyTest/aa/muduoC++11/muduo/muduo/net/tests/EchoServer_unittest.cc > CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.i

muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.s"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/muduo/net/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/skye/MyTest/aa/muduoC++11/muduo/muduo/net/tests/EchoServer_unittest.cc -o CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.s

muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o.requires:

.PHONY : muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o.requires

muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o.provides: muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o.requires
	$(MAKE) -f muduo/net/tests/CMakeFiles/echoserver_unittest.dir/build.make muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o.provides.build
.PHONY : muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o.provides

muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o.provides.build: muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o


# Object files for target echoserver_unittest
echoserver_unittest_OBJECTS = \
"CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o"

# External object files for target echoserver_unittest
echoserver_unittest_EXTERNAL_OBJECTS =

bin/echoserver_unittest: muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o
bin/echoserver_unittest: muduo/net/tests/CMakeFiles/echoserver_unittest.dir/build.make
bin/echoserver_unittest: lib/libmuduo_net.a
bin/echoserver_unittest: lib/libmuduo_base.a
bin/echoserver_unittest: muduo/net/tests/CMakeFiles/echoserver_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/echoserver_unittest"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/muduo/net/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/echoserver_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
muduo/net/tests/CMakeFiles/echoserver_unittest.dir/build: bin/echoserver_unittest

.PHONY : muduo/net/tests/CMakeFiles/echoserver_unittest.dir/build

muduo/net/tests/CMakeFiles/echoserver_unittest.dir/requires: muduo/net/tests/CMakeFiles/echoserver_unittest.dir/EchoServer_unittest.cc.o.requires

.PHONY : muduo/net/tests/CMakeFiles/echoserver_unittest.dir/requires

muduo/net/tests/CMakeFiles/echoserver_unittest.dir/clean:
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/muduo/net/tests && $(CMAKE_COMMAND) -P CMakeFiles/echoserver_unittest.dir/cmake_clean.cmake
.PHONY : muduo/net/tests/CMakeFiles/echoserver_unittest.dir/clean

muduo/net/tests/CMakeFiles/echoserver_unittest.dir/depend:
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/skye/MyTest/aa/muduoC++11/muduo /home/skye/MyTest/aa/muduoC++11/muduo/muduo/net/tests /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11 /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/muduo/net/tests /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/muduo/net/tests/CMakeFiles/echoserver_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : muduo/net/tests/CMakeFiles/echoserver_unittest.dir/depend

