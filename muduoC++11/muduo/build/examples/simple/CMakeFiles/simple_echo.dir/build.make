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
include examples/simple/CMakeFiles/simple_echo.dir/depend.make

# Include the progress variables for this target.
include examples/simple/CMakeFiles/simple_echo.dir/progress.make

# Include the compile flags for this target's objects.
include examples/simple/CMakeFiles/simple_echo.dir/flags.make

examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o: examples/simple/CMakeFiles/simple_echo.dir/flags.make
examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o: ../examples/simple/echo/echo.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/skye/MyTest/aa/muduoC++11/muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_echo.dir/echo/echo.cc.o -c /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/echo/echo.cc

examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_echo.dir/echo/echo.cc.i"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/echo/echo.cc > CMakeFiles/simple_echo.dir/echo/echo.cc.i

examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_echo.dir/echo/echo.cc.s"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/echo/echo.cc -o CMakeFiles/simple_echo.dir/echo/echo.cc.s

examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o.requires:

.PHONY : examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o.requires

examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o.provides: examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o.requires
	$(MAKE) -f examples/simple/CMakeFiles/simple_echo.dir/build.make examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o.provides.build
.PHONY : examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o.provides

examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o.provides.build: examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o


examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o: examples/simple/CMakeFiles/simple_echo.dir/flags.make
examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o: ../examples/simple/echo/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/skye/MyTest/aa/muduoC++11/muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_echo.dir/echo/main.cc.o -c /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/echo/main.cc

examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_echo.dir/echo/main.cc.i"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/echo/main.cc > CMakeFiles/simple_echo.dir/echo/main.cc.i

examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_echo.dir/echo/main.cc.s"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && /usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple/echo/main.cc -o CMakeFiles/simple_echo.dir/echo/main.cc.s

examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o.requires:

.PHONY : examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o.requires

examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o.provides: examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o.requires
	$(MAKE) -f examples/simple/CMakeFiles/simple_echo.dir/build.make examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o.provides.build
.PHONY : examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o.provides

examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o.provides.build: examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o


# Object files for target simple_echo
simple_echo_OBJECTS = \
"CMakeFiles/simple_echo.dir/echo/echo.cc.o" \
"CMakeFiles/simple_echo.dir/echo/main.cc.o"

# External object files for target simple_echo
simple_echo_EXTERNAL_OBJECTS =

bin/simple_echo: examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o
bin/simple_echo: examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o
bin/simple_echo: examples/simple/CMakeFiles/simple_echo.dir/build.make
bin/simple_echo: lib/libmuduo_net.a
bin/simple_echo: lib/libmuduo_base.a
bin/simple_echo: examples/simple/CMakeFiles/simple_echo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/skye/MyTest/aa/muduoC++11/muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../bin/simple_echo"
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_echo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/simple/CMakeFiles/simple_echo.dir/build: bin/simple_echo

.PHONY : examples/simple/CMakeFiles/simple_echo.dir/build

examples/simple/CMakeFiles/simple_echo.dir/requires: examples/simple/CMakeFiles/simple_echo.dir/echo/echo.cc.o.requires
examples/simple/CMakeFiles/simple_echo.dir/requires: examples/simple/CMakeFiles/simple_echo.dir/echo/main.cc.o.requires

.PHONY : examples/simple/CMakeFiles/simple_echo.dir/requires

examples/simple/CMakeFiles/simple_echo.dir/clean:
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple && $(CMAKE_COMMAND) -P CMakeFiles/simple_echo.dir/cmake_clean.cmake
.PHONY : examples/simple/CMakeFiles/simple_echo.dir/clean

examples/simple/CMakeFiles/simple_echo.dir/depend:
	cd /home/skye/MyTest/aa/muduoC++11/muduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/skye/MyTest/aa/muduoC++11/muduo /home/skye/MyTest/aa/muduoC++11/muduo/examples/simple /home/skye/MyTest/aa/muduoC++11/muduo/build /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple /home/skye/MyTest/aa/muduoC++11/muduo/build/examples/simple/CMakeFiles/simple_echo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/simple/CMakeFiles/simple_echo.dir/depend

