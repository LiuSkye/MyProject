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
include examples/procmon/CMakeFiles/dummyload.dir/depend.make

# Include the progress variables for this target.
include examples/procmon/CMakeFiles/dummyload.dir/progress.make

# Include the compile flags for this target's objects.
include examples/procmon/CMakeFiles/dummyload.dir/flags.make

examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o: examples/procmon/CMakeFiles/dummyload.dir/flags.make
examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o: /home/skye/MyTest/aa/muduoC++11/muduo/examples/procmon/dummyload.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/procmon && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dummyload.dir/dummyload.cc.o -c /home/skye/MyTest/aa/muduoC++11/muduo/examples/procmon/dummyload.cc

examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dummyload.dir/dummyload.cc.i"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/procmon && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/skye/MyTest/aa/muduoC++11/muduo/examples/procmon/dummyload.cc > CMakeFiles/dummyload.dir/dummyload.cc.i

examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dummyload.dir/dummyload.cc.s"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/procmon && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/skye/MyTest/aa/muduoC++11/muduo/examples/procmon/dummyload.cc -o CMakeFiles/dummyload.dir/dummyload.cc.s

examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o.requires:

.PHONY : examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o.requires

examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o.provides: examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o.requires
	$(MAKE) -f examples/procmon/CMakeFiles/dummyload.dir/build.make examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o.provides.build
.PHONY : examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o.provides

examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o.provides.build: examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o


# Object files for target dummyload
dummyload_OBJECTS = \
"CMakeFiles/dummyload.dir/dummyload.cc.o"

# External object files for target dummyload
dummyload_EXTERNAL_OBJECTS =

bin/dummyload: examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o
bin/dummyload: examples/procmon/CMakeFiles/dummyload.dir/build.make
bin/dummyload: lib/libmuduo_net.a
bin/dummyload: lib/libmuduo_base.a
bin/dummyload: examples/procmon/CMakeFiles/dummyload.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/dummyload"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/procmon && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dummyload.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/procmon/CMakeFiles/dummyload.dir/build: bin/dummyload

.PHONY : examples/procmon/CMakeFiles/dummyload.dir/build

examples/procmon/CMakeFiles/dummyload.dir/requires: examples/procmon/CMakeFiles/dummyload.dir/dummyload.cc.o.requires

.PHONY : examples/procmon/CMakeFiles/dummyload.dir/requires

examples/procmon/CMakeFiles/dummyload.dir/clean:
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/procmon && $(CMAKE_COMMAND) -P CMakeFiles/dummyload.dir/cmake_clean.cmake
.PHONY : examples/procmon/CMakeFiles/dummyload.dir/clean

examples/procmon/CMakeFiles/dummyload.dir/depend:
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/skye/MyTest/aa/muduoC++11/muduo /home/skye/MyTest/aa/muduoC++11/muduo/examples/procmon /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11 /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/procmon /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/procmon/CMakeFiles/dummyload.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/procmon/CMakeFiles/dummyload.dir/depend

