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
include examples/protobuf/codec/CMakeFiles/protobuf_server.dir/depend.make

# Include the progress variables for this target.
include examples/protobuf/codec/CMakeFiles/protobuf_server.dir/progress.make

# Include the compile flags for this target's objects.
include examples/protobuf/codec/CMakeFiles/protobuf_server.dir/flags.make

examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o: examples/protobuf/codec/CMakeFiles/protobuf_server.dir/flags.make
examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o: /home/skye/MyTest/aa/muduoC++11/muduo/examples/protobuf/codec/server.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/protobuf/codec && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/protobuf_server.dir/server.cc.o -c /home/skye/MyTest/aa/muduoC++11/muduo/examples/protobuf/codec/server.cc

examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/protobuf_server.dir/server.cc.i"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/protobuf/codec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/skye/MyTest/aa/muduoC++11/muduo/examples/protobuf/codec/server.cc > CMakeFiles/protobuf_server.dir/server.cc.i

examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/protobuf_server.dir/server.cc.s"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/protobuf/codec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/skye/MyTest/aa/muduoC++11/muduo/examples/protobuf/codec/server.cc -o CMakeFiles/protobuf_server.dir/server.cc.s

examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o.requires:

.PHONY : examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o.requires

examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o.provides: examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o.requires
	$(MAKE) -f examples/protobuf/codec/CMakeFiles/protobuf_server.dir/build.make examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o.provides.build
.PHONY : examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o.provides

examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o.provides.build: examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o


# Object files for target protobuf_server
protobuf_server_OBJECTS = \
"CMakeFiles/protobuf_server.dir/server.cc.o"

# External object files for target protobuf_server
protobuf_server_EXTERNAL_OBJECTS =

bin/protobuf_server: examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o
bin/protobuf_server: examples/protobuf/codec/CMakeFiles/protobuf_server.dir/build.make
bin/protobuf_server: lib/libprotobuf_codec.a
bin/protobuf_server: lib/libquery_proto.a
bin/protobuf_server: lib/libmuduo_net.a
bin/protobuf_server: lib/libmuduo_base.a
bin/protobuf_server: examples/protobuf/codec/CMakeFiles/protobuf_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/protobuf_server"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/protobuf/codec && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/protobuf_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/protobuf/codec/CMakeFiles/protobuf_server.dir/build: bin/protobuf_server

.PHONY : examples/protobuf/codec/CMakeFiles/protobuf_server.dir/build

examples/protobuf/codec/CMakeFiles/protobuf_server.dir/requires: examples/protobuf/codec/CMakeFiles/protobuf_server.dir/server.cc.o.requires

.PHONY : examples/protobuf/codec/CMakeFiles/protobuf_server.dir/requires

examples/protobuf/codec/CMakeFiles/protobuf_server.dir/clean:
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/protobuf/codec && $(CMAKE_COMMAND) -P CMakeFiles/protobuf_server.dir/cmake_clean.cmake
.PHONY : examples/protobuf/codec/CMakeFiles/protobuf_server.dir/clean

examples/protobuf/codec/CMakeFiles/protobuf_server.dir/depend:
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/skye/MyTest/aa/muduoC++11/muduo /home/skye/MyTest/aa/muduoC++11/muduo/examples/protobuf/codec /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11 /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/protobuf/codec /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/protobuf/codec/CMakeFiles/protobuf_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/protobuf/codec/CMakeFiles/protobuf_server.dir/depend

