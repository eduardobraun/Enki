# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

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
CMAKE_SOURCE_DIR = /home/peer/Development/graphics/enki

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/peer/Development/graphics/enki/build

# Utility rule file for all_unity.

# Include the progress variables for this target.
include specs/CMakeFiles/all_unity.dir/progress.make

all_unity: specs/CMakeFiles/all_unity.dir/build.make
.PHONY : all_unity

# Rule to build all files generated by this target.
specs/CMakeFiles/all_unity.dir/build: all_unity
.PHONY : specs/CMakeFiles/all_unity.dir/build

specs/CMakeFiles/all_unity.dir/clean:
	cd /home/peer/Development/graphics/enki/build/specs && $(CMAKE_COMMAND) -P CMakeFiles/all_unity.dir/cmake_clean.cmake
.PHONY : specs/CMakeFiles/all_unity.dir/clean

specs/CMakeFiles/all_unity.dir/depend:
	cd /home/peer/Development/graphics/enki/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peer/Development/graphics/enki /home/peer/Development/graphics/enki/specs /home/peer/Development/graphics/enki/build /home/peer/Development/graphics/enki/build/specs /home/peer/Development/graphics/enki/build/specs/CMakeFiles/all_unity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : specs/CMakeFiles/all_unity.dir/depend
