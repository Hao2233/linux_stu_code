# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhanghao/linux_stu_code/cmake/002

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhanghao/linux_stu_code/cmake/002/build

# Include any dependencies generated for this target.
include CMakeFiles/math_stu.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/math_stu.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/math_stu.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/math_stu.dir/flags.make

CMakeFiles/math_stu.dir/code/src/main.cpp.o: CMakeFiles/math_stu.dir/flags.make
CMakeFiles/math_stu.dir/code/src/main.cpp.o: /home/zhanghao/linux_stu_code/cmake/002/code/src/main.cpp
CMakeFiles/math_stu.dir/code/src/main.cpp.o: CMakeFiles/math_stu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhanghao/linux_stu_code/cmake/002/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/math_stu.dir/code/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/math_stu.dir/code/src/main.cpp.o -MF CMakeFiles/math_stu.dir/code/src/main.cpp.o.d -o CMakeFiles/math_stu.dir/code/src/main.cpp.o -c /home/zhanghao/linux_stu_code/cmake/002/code/src/main.cpp

CMakeFiles/math_stu.dir/code/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/math_stu.dir/code/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhanghao/linux_stu_code/cmake/002/code/src/main.cpp > CMakeFiles/math_stu.dir/code/src/main.cpp.i

CMakeFiles/math_stu.dir/code/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/math_stu.dir/code/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhanghao/linux_stu_code/cmake/002/code/src/main.cpp -o CMakeFiles/math_stu.dir/code/src/main.cpp.s

# Object files for target math_stu
math_stu_OBJECTS = \
"CMakeFiles/math_stu.dir/code/src/main.cpp.o"

# External object files for target math_stu
math_stu_EXTERNAL_OBJECTS =

math_stu: CMakeFiles/math_stu.dir/code/src/main.cpp.o
math_stu: CMakeFiles/math_stu.dir/build.make
math_stu: CMakeFiles/math_stu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhanghao/linux_stu_code/cmake/002/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable math_stu"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/math_stu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/math_stu.dir/build: math_stu
.PHONY : CMakeFiles/math_stu.dir/build

CMakeFiles/math_stu.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/math_stu.dir/cmake_clean.cmake
.PHONY : CMakeFiles/math_stu.dir/clean

CMakeFiles/math_stu.dir/depend:
	cd /home/zhanghao/linux_stu_code/cmake/002/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhanghao/linux_stu_code/cmake/002 /home/zhanghao/linux_stu_code/cmake/002 /home/zhanghao/linux_stu_code/cmake/002/build /home/zhanghao/linux_stu_code/cmake/002/build /home/zhanghao/linux_stu_code/cmake/002/build/CMakeFiles/math_stu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/math_stu.dir/depend

