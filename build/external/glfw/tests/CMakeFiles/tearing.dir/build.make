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
include external/glfw/tests/CMakeFiles/tearing.dir/depend.make

# Include the progress variables for this target.
include external/glfw/tests/CMakeFiles/tearing.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw/tests/CMakeFiles/tearing.dir/flags.make

external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o: external/glfw/tests/CMakeFiles/tearing.dir/flags.make
external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o: ../external/glfw/tests/tearing.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peer/Development/graphics/enki/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/tearing.dir/tearing.c.o   -c /home/peer/Development/graphics/enki/external/glfw/tests/tearing.c

external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tearing.dir/tearing.c.i"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/peer/Development/graphics/enki/external/glfw/tests/tearing.c > CMakeFiles/tearing.dir/tearing.c.i

external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tearing.dir/tearing.c.s"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/peer/Development/graphics/enki/external/glfw/tests/tearing.c -o CMakeFiles/tearing.dir/tearing.c.s

external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o.requires:
.PHONY : external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o.requires

external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o.provides: external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o.requires
	$(MAKE) -f external/glfw/tests/CMakeFiles/tearing.dir/build.make external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o.provides.build
.PHONY : external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o.provides

external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o.provides.build: external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o

# Object files for target tearing
tearing_OBJECTS = \
"CMakeFiles/tearing.dir/tearing.c.o"

# External object files for target tearing
tearing_EXTERNAL_OBJECTS =

bin/tearing: external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o
bin/tearing: external/glfw/tests/CMakeFiles/tearing.dir/build.make
bin/tearing: lib/libglfw3.a
bin/tearing: /usr/lib64/libGLU.so
bin/tearing: /usr/lib64/libX11.so
bin/tearing: /usr/lib64/libXrandr.so
bin/tearing: /usr/lib64/libXinerama.so
bin/tearing: /usr/lib64/libXi.so
bin/tearing: /usr/lib64/libXxf86vm.so
bin/tearing: /usr/lib64/librt.so
bin/tearing: /usr/lib64/libm.so
bin/tearing: /usr/lib64/libXcursor.so
bin/tearing: /usr/lib64/libGL.so
bin/tearing: external/glfw/tests/CMakeFiles/tearing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../../bin/tearing"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tearing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw/tests/CMakeFiles/tearing.dir/build: bin/tearing
.PHONY : external/glfw/tests/CMakeFiles/tearing.dir/build

external/glfw/tests/CMakeFiles/tearing.dir/requires: external/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o.requires
.PHONY : external/glfw/tests/CMakeFiles/tearing.dir/requires

external/glfw/tests/CMakeFiles/tearing.dir/clean:
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/tearing.dir/cmake_clean.cmake
.PHONY : external/glfw/tests/CMakeFiles/tearing.dir/clean

external/glfw/tests/CMakeFiles/tearing.dir/depend:
	cd /home/peer/Development/graphics/enki/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peer/Development/graphics/enki /home/peer/Development/graphics/enki/external/glfw/tests /home/peer/Development/graphics/enki/build /home/peer/Development/graphics/enki/build/external/glfw/tests /home/peer/Development/graphics/enki/build/external/glfw/tests/CMakeFiles/tearing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw/tests/CMakeFiles/tearing.dir/depend

