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
include examples/simple/CMakeFiles/simple_daytime.dir/depend.make

# Include the progress variables for this target.
include examples/simple/CMakeFiles/simple_daytime.dir/progress.make

# Include the compile flags for this target's objects.
include examples/simple/CMakeFiles/simple_daytime.dir/flags.make

examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o: examples/simple/CMakeFiles/simple_daytime.dir/flags.make
examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o: ../examples/simple/daytime/daytime.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/skye/MyTest/aa/muduoC++11/muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o -c /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/daytime/daytime.cc

examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_daytime.dir/daytime/daytime.cc.i"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/daytime/daytime.cc > CMakeFiles/simple_daytime.dir/daytime/daytime.cc.i

examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_daytime.dir/daytime/daytime.cc.s"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/daytime/daytime.cc -o CMakeFiles/simple_daytime.dir/daytime/daytime.cc.s

examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o.requires:

.PHONY : examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o.requires

examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o.provides: examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o.requires
	$(MAKE) -f examples/simple/CMakeFiles/simple_daytime.dir/build.make examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o.provides.build
.PHONY : examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o.provides

examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o.provides.build: examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o


examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o: examples/simple/CMakeFiles/simple_daytime.dir/flags.make
examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o: ../examples/simple/daytime/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/skye/MyTest/aa/muduoC++11/muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_daytime.dir/daytime/main.cc.o -c /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/daytime/main.cc

examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_daytime.dir/daytime/main.cc.i"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/daytime/main.cc > CMakeFiles/simple_daytime.dir/daytime/main.cc.i

examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_daytime.dir/daytime/main.cc.s"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/daytime/main.cc -o CMakeFiles/simple_daytime.dir/daytime/main.cc.s

examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o.requires:

.PHONY : examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o.requires

examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o.provides: examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o.requires
	$(MAKE) -f examples/simple/CMakeFiles/simple_daytime.dir/build.make examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o.provides.build
.PHONY : examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o.provides

examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o.provides.build: examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o


# Object files for target simple_daytime
simple_daytime_OBJECTS = \
"CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o" \
"CMakeFiles/simple_daytime.dir/daytime/main.cc.o"

# External object files for target simple_daytime
simple_daytime_EXTERNAL_OBJECTS =

bin/simple_daytime: examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o
bin/simple_daytime: examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o
bin/simple_daytime: examples/simple/CMakeFiles/simple_daytime.dir/build.make
bin/simple_daytime: lib/libmuduo_net.a
bin/simple_daytime: lib/libmuduo_base.a
bin/simple_daytime: examples/simple/CMakeFiles/simple_daytime.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/skye/MyTest/aa/muduoC++11/muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../bin/simple_daytime"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_daytime.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/simple/CMakeFiles/simple_daytime.dir/build: bin/simple_daytime

.PHONY : examples/simple/CMakeFiles/simple_daytime.dir/build

examples/simple/CMakeFiles/simple_daytime.dir/requires: examples/simple/CMakeFiles/simple_daytime.dir/daytime/daytime.cc.o.requires
examples/simple/CMakeFiles/simple_daytime.dir/requires: examples/simple/CMakeFiles/simple_daytime.dir/daytime/main.cc.o.requires

.PHONY : examples/simple/CMakeFiles/simple_daytime.dir/requires

examples/simple/CMakeFiles/simple_daytime.dir/clean:
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && $(CMAKE_COMMAND) -P CMakeFiles/simple_daytime.dir/cmake_clean.cmake
.PHONY : examples/simple/CMakeFiles/simple_daytime.dir/clean

examples/simple/CMakeFiles/simple_daytime.dir/depend:
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/skye/MyTest/aa/muduoC++11/muduo /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple /home/skye/MyTest/aa/muduoC++11/muduo/build /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple/CMakeFiles/simple_daytime.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/simple/CMakeFiles/simple_daytime.dir/depend
