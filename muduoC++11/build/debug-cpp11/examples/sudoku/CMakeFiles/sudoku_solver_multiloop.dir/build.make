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
include examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/depend.make

# Include the progress variables for this target.
include examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/progress.make

# Include the compile flags for this target's objects.
include examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/flags.make

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/flags.make
examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o: /home/skye/MyTest/aa/muduoC++11/muduo/examples/sudoku/server_multiloop.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/sudoku && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o -c /home/skye/MyTest/aa/muduoC++11/muduo/examples/sudoku/server_multiloop.cc

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.i"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/sudoku && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/skye/MyTest/aa/muduoC++11/muduo/examples/sudoku/server_multiloop.cc > CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.i

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.s"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/sudoku && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/skye/MyTest/aa/muduoC++11/muduo/examples/sudoku/server_multiloop.cc -o CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.s

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o.requires:

.PHONY : examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o.requires

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o.provides: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o.requires
	$(MAKE) -f examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/build.make examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o.provides.build
.PHONY : examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o.provides

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o.provides.build: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o


examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/flags.make
examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o: /home/skye/MyTest/aa/muduoC++11/muduo/examples/sudoku/sudoku.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/sudoku && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o -c /home/skye/MyTest/aa/muduoC++11/muduo/examples/sudoku/sudoku.cc

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.i"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/sudoku && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/skye/MyTest/aa/muduoC++11/muduo/examples/sudoku/sudoku.cc > CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.i

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.s"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/sudoku && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/skye/MyTest/aa/muduoC++11/muduo/examples/sudoku/sudoku.cc -o CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.s

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o.requires:

.PHONY : examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o.requires

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o.provides: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o.requires
	$(MAKE) -f examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/build.make examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o.provides.build
.PHONY : examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o.provides

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o.provides.build: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o


# Object files for target sudoku_solver_multiloop
sudoku_solver_multiloop_OBJECTS = \
"CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o" \
"CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o"

# External object files for target sudoku_solver_multiloop
sudoku_solver_multiloop_EXTERNAL_OBJECTS =

bin/sudoku_solver_multiloop: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o
bin/sudoku_solver_multiloop: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o
bin/sudoku_solver_multiloop: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/build.make
bin/sudoku_solver_multiloop: lib/libmuduo_net.a
bin/sudoku_solver_multiloop: lib/libmuduo_base.a
bin/sudoku_solver_multiloop: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../bin/sudoku_solver_multiloop"
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/sudoku && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sudoku_solver_multiloop.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/build: bin/sudoku_solver_multiloop

.PHONY : examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/build

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/requires: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/server_multiloop.cc.o.requires
examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/requires: examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/sudoku.cc.o.requires

.PHONY : examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/requires

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/clean:
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/sudoku && $(CMAKE_COMMAND) -P CMakeFiles/sudoku_solver_multiloop.dir/cmake_clean.cmake
.PHONY : examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/clean

examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/depend:
	cd /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/skye/MyTest/aa/muduoC++11/muduo /home/skye/MyTest/aa/muduoC++11/muduo/examples/sudoku /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11 /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/sudoku /home/skye/MyTest/aa/muduoC++11/build/debug-cpp11/examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/sudoku/CMakeFiles/sudoku_solver_multiloop.dir/depend

