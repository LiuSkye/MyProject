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
include examples/netty/discard/CMakeFiles/netty_discard_client.dir/depend.make

# Include the progress variables for this target.
include examples/netty/discard/CMakeFiles/netty_discard_client.dir/progress.make

# Include the compile flags for this target's objects.
include examples/netty/discard/CMakeFiles/netty_discard_client.dir/flags.make

examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o: examples/netty/discard/CMakeFiles/netty_discard_client.dir/flags.make
examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o: /home/skye/MyTest/aa/muduoC++11/muduo/examples/netty/discard/client.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/netty/discard && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/netty_discard_client.dir/client.cc.o -c /home/skye/MyTest/aa/muduoC++11/muduo/examples/netty/discard/client.cc

examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/netty_discard_client.dir/client.cc.i"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/netty/discard && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/skye/MyTest/aa/muduoC++11/muduo/examples/netty/discard/client.cc > CMakeFiles/netty_discard_client.dir/client.cc.i

examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/netty_discard_client.dir/client.cc.s"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/netty/discard && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/skye/MyTest/aa/muduoC++11/muduo/examples/netty/discard/client.cc -o CMakeFiles/netty_discard_client.dir/client.cc.s

examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o.requires:

.PHONY : examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o.requires

examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o.provides: examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o.requires
	$(MAKE) -f examples/netty/discard/CMakeFiles/netty_discard_client.dir/build.make examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o.provides.build
.PHONY : examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o.provides

examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o.provides.build: examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o


# Object files for target netty_discard_client
netty_discard_client_OBJECTS = \
"CMakeFiles/netty_discard_client.dir/client.cc.o"

# External object files for target netty_discard_client
netty_discard_client_EXTERNAL_OBJECTS =

bin/netty_discard_client: examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o
bin/netty_discard_client: examples/netty/discard/CMakeFiles/netty_discard_client.dir/build.make
bin/netty_discard_client: lib/libmuduo_net.a
bin/netty_discard_client: lib/libmuduo_base.a
bin/netty_discard_client: examples/netty/discard/CMakeFiles/netty_discard_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/netty_discard_client"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/netty/discard && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/netty_discard_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/netty/discard/CMakeFiles/netty_discard_client.dir/build: bin/netty_discard_client

.PHONY : examples/netty/discard/CMakeFiles/netty_discard_client.dir/build

examples/netty/discard/CMakeFiles/netty_discard_client.dir/requires: examples/netty/discard/CMakeFiles/netty_discard_client.dir/client.cc.o.requires

.PHONY : examples/netty/discard/CMakeFiles/netty_discard_client.dir/requires

examples/netty/discard/CMakeFiles/netty_discard_client.dir/clean:
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/netty/discard && $(CMAKE_COMMAND) -P CMakeFiles/netty_discard_client.dir/cmake_clean.cmake
.PHONY : examples/netty/discard/CMakeFiles/netty_discard_client.dir/clean

examples/netty/discard/CMakeFiles/netty_discard_client.dir/depend:
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/skye/MyTest/aa/muduoC++11/muduo /home/skye/MyTest/aa/muduoC++11/muduo/examples/netty/discard /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11 /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/netty/discard /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/netty/discard/CMakeFiles/netty_discard_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/netty/discard/CMakeFiles/netty_discard_client.dir/depend

