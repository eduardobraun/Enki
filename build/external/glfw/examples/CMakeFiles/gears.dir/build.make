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

# Include any dependencies generated for this target.
include external/glfw/examples/CMakeFiles/gears.dir/depend.make

# Include the progress variables for this target.
include external/glfw/examples/CMakeFiles/gears.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw/examples/CMakeFiles/gears.dir/flags.make

external/glfw/examples/CMakeFiles/gears.dir/gears.c.o: external/glfw/examples/CMakeFiles/gears.dir/flags.make
external/glfw/examples/CMakeFiles/gears.dir/gears.c.o: ../external/glfw/examples/gears.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peer/Development/graphics/enki/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object external/glfw/examples/CMakeFiles/gears.dir/gears.c.o"
	cd /home/peer/Development/graphics/enki/build/external/glfw/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/gears.dir/gears.c.o   -c /home/peer/Development/graphics/enki/external/glfw/examples/gears.c

external/glfw/examples/CMakeFiles/gears.dir/gears.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gears.dir/gears.c.i"
	cd /home/peer/Development/graphics/enki/build/external/glfw/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/peer/Development/graphics/enki/external/glfw/examples/gears.c > CMakeFiles/gears.dir/gears.c.i

external/glfw/examples/CMakeFiles/gears.dir/gears.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gears.dir/gears.c.s"
	cd /home/peer/Development/graphics/enki/build/external/glfw/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/peer/Development/graphics/enki/external/glfw/examples/gears.c -o CMakeFiles/gears.dir/gears.c.s

external/glfw/examples/CMakeFiles/gears.dir/gears.c.o.requires:
.PHONY : external/glfw/examples/CMakeFiles/gears.dir/gears.c.o.requires

external/glfw/examples/CMakeFiles/gears.dir/gears.c.o.provides: external/glfw/examples/CMakeFiles/gears.dir/gears.c.o.requires
	$(MAKE) -f external/glfw/examples/CMakeFiles/gears.dir/build.make external/glfw/examples/CMakeFiles/gears.dir/gears.c.o.provides.build
.PHONY : external/glfw/examples/CMakeFiles/gears.dir/gears.c.o.provides

external/glfw/examples/CMakeFiles/gears.dir/gears.c.o.provides.build: external/glfw/examples/CMakeFiles/gears.dir/gears.c.o

# Object files for target gears
gears_OBJECTS = \
"CMakeFiles/gears.dir/gears.c.o"

# External object files for target gears
gears_EXTERNAL_OBJECTS =

bin/gears: external/glfw/examples/CMakeFiles/gears.dir/gears.c.o
bin/gears: external/glfw/examples/CMakeFiles/gears.dir/build.make
bin/gears: lib/libglfw3.a
bin/gears: /usr/lib64/libGLU.so
bin/gears: /usr/lib64/libX11.so
bin/gears: /usr/lib64/libXrandr.so
bin/gears: /usr/lib64/libXinerama.so
bin/gears: /usr/lib64/libXi.so
bin/gears: /usr/lib64/libXxf86vm.so
bin/gears: /usr/lib64/librt.so
bin/gears: /usr/lib64/libm.so
bin/gears: /usr/lib64/libXcursor.so
bin/gears: /usr/lib64/libGL.so
bin/gears: external/glfw/examples/CMakeFiles/gears.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../../bin/gears"
	cd /home/peer/Development/graphics/enki/build/external/glfw/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gears.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw/examples/CMakeFiles/gears.dir/build: bin/gears
.PHONY : external/glfw/examples/CMakeFiles/gears.dir/build

external/glfw/examples/CMakeFiles/gears.dir/requires: external/glfw/examples/CMakeFiles/gears.dir/gears.c.o.requires
.PHONY : external/glfw/examples/CMakeFiles/gears.dir/requires

external/glfw/examples/CMakeFiles/gears.dir/clean:
	cd /home/peer/Development/graphics/enki/build/external/glfw/examples && $(CMAKE_COMMAND) -P CMakeFiles/gears.dir/cmake_clean.cmake
.PHONY : external/glfw/examples/CMakeFiles/gears.dir/clean

external/glfw/examples/CMakeFiles/gears.dir/depend:
	cd /home/peer/Development/graphics/enki/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peer/Development/graphics/enki /home/peer/Development/graphics/enki/external/glfw/examples /home/peer/Development/graphics/enki/build /home/peer/Development/graphics/enki/build/external/glfw/examples /home/peer/Development/graphics/enki/build/external/glfw/examples/CMakeFiles/gears.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw/examples/CMakeFiles/gears.dir/depend

