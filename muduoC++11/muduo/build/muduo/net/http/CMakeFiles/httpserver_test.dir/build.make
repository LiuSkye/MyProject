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
CMAKE_BINARY_DIR = /home/skye/MyTest/aa/muduoC++11/muduo/build

# Include any dependencies generated for this target.
include muduo/net/http/CMakeFiles/httpserver_test.dir/depend.make

# Include the progress variables for this target.
include muduo/net/http/CMakeFiles/httpserver_test.dir/progress.make

# Include the compile flags for this target's objects.
include muduo/net/http/CMakeFiles/httpserver_test.dir/flags.make

muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o: muduo/net/http/CMakeFiles/httpserver_test.dir/flags.make
muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o: ../muduo/net/http/tests/MyHttpServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/skye/MyTest/aa/muduoC++11/muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/muduo/net/http && /usr/bin/x86_64-linux-gnu-g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o -c /home/skye/MyTest/aa/muduoC++11/muduo/muduo/net/http/tests/MyHttpServer.cpp

muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.i"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/muduo/net/http && /usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/skye/MyTest/aa/muduoC++11/muduo/muduo/net/http/tests/MyHttpServer.cpp > CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.i

muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.s"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/muduo/net/http && /usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/skye/MyTest/aa/muduoC++11/muduo/muduo/net/http/tests/MyHttpServer.cpp -o CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.s

muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o.requires:

.PHONY : muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o.requires

muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o.provides: muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o.requires
	$(MAKE) -f muduo/net/http/CMakeFiles/httpserver_test.dir/build.make muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o.provides.build
.PHONY : muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o.provides

muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o.provides.build: muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o


# Object files for target httpserver_test
httpserver_test_OBJECTS = \
"CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o"

# External object files for target httpserver_test
httpserver_test_EXTERNAL_OBJECTS =

bin/httpserver_test: muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o
bin/httpserver_test: muduo/net/http/CMakeFiles/httpserver_test.dir/build.make
bin/httpserver_test: lib/libmuduo_http.a
bin/httpserver_test: lib/libmuduo_net.a
bin/httpserver_test: lib/libmuduo_base.a
bin/httpserver_test: muduo/net/http/CMakeFiles/httpserver_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/skye/MyTest/aa/muduoC++11/muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/httpserver_test"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/muduo/net/http && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/httpserver_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
muduo/net/http/CMakeFiles/httpserver_test.dir/build: bin/httpserver_test

.PHONY : muduo/net/http/CMakeFiles/httpserver_test.dir/build

muduo/net/http/CMakeFiles/httpserver_test.dir/requires: muduo/net/http/CMakeFiles/httpserver_test.dir/tests/MyHttpServer.cpp.o.requires

.PHONY : muduo/net/http/CMakeFiles/httpserver_test.dir/requires

muduo/net/http/CMakeFiles/httpserver_test.dir/clean:
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/muduo/net/http && $(CMAKE_COMMAND) -P CMakeFiles/httpserver_test.dir/cmake_clean.cmake
.PHONY : muduo/net/http/CMakeFiles/httpserver_test.dir/clean

muduo/net/http/CMakeFiles/httpserver_test.dir/depend:
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/skye/MyTest/aa/muduoC++11/muduo /home/skye/MyTest/aa/muduoC++11/muduo/muduo/net/http /home/skye/MyTest/aa/muduoC++11/muduo/build /home/skye/MyTest/aa/muduoC++11/muduo/build/muduo/net/http /home/skye/MyTest/aa/muduoC++11/muduo/build/muduo/net/http/CMakeFiles/httpserver_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : muduo/net/http/CMakeFiles/httpserver_test.dir/depend
