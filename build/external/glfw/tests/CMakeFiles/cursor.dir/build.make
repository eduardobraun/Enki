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
include external/glfw/tests/CMakeFiles/cursor.dir/depend.make

# Include the progress variables for this target.
include external/glfw/tests/CMakeFiles/cursor.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw/tests/CMakeFiles/cursor.dir/flags.make

external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o: external/glfw/tests/CMakeFiles/cursor.dir/flags.make
external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o: ../external/glfw/tests/cursor.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peer/Development/graphics/enki/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cursor.dir/cursor.c.o   -c /home/peer/Development/graphics/enki/external/glfw/tests/cursor.c

external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cursor.dir/cursor.c.i"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/peer/Development/graphics/enki/external/glfw/tests/cursor.c > CMakeFiles/cursor.dir/cursor.c.i

external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cursor.dir/cursor.c.s"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/peer/Development/graphics/enki/external/glfw/tests/cursor.c -o CMakeFiles/cursor.dir/cursor.c.s

external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.requires:
.PHONY : external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.requires

external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.provides: external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.requires
	$(MAKE) -f external/glfw/tests/CMakeFiles/cursor.dir/build.make external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.provides.build
.PHONY : external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.provides

external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.provides.build: external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o

# Object files for target cursor
cursor_OBJECTS = \
"CMakeFiles/cursor.dir/cursor.c.o"

# External object files for target cursor
cursor_EXTERNAL_OBJECTS =

bin/cursor: external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o
bin/cursor: external/glfw/tests/CMakeFiles/cursor.dir/build.make
bin/cursor: lib/libglfw3.a
bin/cursor: /usr/lib64/libGLU.so
bin/cursor: /usr/lib64/libX11.so
bin/cursor: /usr/lib64/libXrandr.so
bin/cursor: /usr/lib64/libXinerama.so
bin/cursor: /usr/lib64/libXi.so
bin/cursor: /usr/lib64/libXxf86vm.so
bin/cursor: /usr/lib64/librt.so
bin/cursor: /usr/lib64/libm.so
bin/cursor: /usr/lib64/libXcursor.so
bin/cursor: /usr/lib64/libGL.so
bin/cursor: external/glfw/tests/CMakeFiles/cursor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../../bin/cursor"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cursor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw/tests/CMakeFiles/cursor.dir/build: bin/cursor
.PHONY : external/glfw/tests/CMakeFiles/cursor.dir/build

external/glfw/tests/CMakeFiles/cursor.dir/requires: external/glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.requires
.PHONY : external/glfw/tests/CMakeFiles/cursor.dir/requires

external/glfw/tests/CMakeFiles/cursor.dir/clean:
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/cursor.dir/cmake_clean.cmake
.PHONY : external/glfw/tests/CMakeFiles/cursor.dir/clean

external/glfw/tests/CMakeFiles/cursor.dir/depend:
	cd /home/peer/Development/graphics/enki/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peer/Development/graphics/enki /home/peer/Development/graphics/enki/external/glfw/tests /home/peer/Development/graphics/enki/build /home/peer/Development/graphics/enki/build/external/glfw/tests /home/peer/Development/graphics/enki/build/external/glfw/tests/CMakeFiles/cursor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw/tests/CMakeFiles/cursor.dir/depend

