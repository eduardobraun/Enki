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
include external/glfw/tests/CMakeFiles/threads.dir/depend.make

# Include the progress variables for this target.
include external/glfw/tests/CMakeFiles/threads.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw/tests/CMakeFiles/threads.dir/flags.make

external/glfw/tests/CMakeFiles/threads.dir/threads.c.o: external/glfw/tests/CMakeFiles/threads.dir/flags.make
external/glfw/tests/CMakeFiles/threads.dir/threads.c.o: ../external/glfw/tests/threads.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peer/Development/graphics/enki/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object external/glfw/tests/CMakeFiles/threads.dir/threads.c.o"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/threads.dir/threads.c.o   -c /home/peer/Development/graphics/enki/external/glfw/tests/threads.c

external/glfw/tests/CMakeFiles/threads.dir/threads.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/threads.c.i"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/peer/Development/graphics/enki/external/glfw/tests/threads.c > CMakeFiles/threads.dir/threads.c.i

external/glfw/tests/CMakeFiles/threads.dir/threads.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/threads.c.s"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/peer/Development/graphics/enki/external/glfw/tests/threads.c -o CMakeFiles/threads.dir/threads.c.s

external/glfw/tests/CMakeFiles/threads.dir/threads.c.o.requires:
.PHONY : external/glfw/tests/CMakeFiles/threads.dir/threads.c.o.requires

external/glfw/tests/CMakeFiles/threads.dir/threads.c.o.provides: external/glfw/tests/CMakeFiles/threads.dir/threads.c.o.requires
	$(MAKE) -f external/glfw/tests/CMakeFiles/threads.dir/build.make external/glfw/tests/CMakeFiles/threads.dir/threads.c.o.provides.build
.PHONY : external/glfw/tests/CMakeFiles/threads.dir/threads.c.o.provides

external/glfw/tests/CMakeFiles/threads.dir/threads.c.o.provides.build: external/glfw/tests/CMakeFiles/threads.dir/threads.c.o

external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o: external/glfw/tests/CMakeFiles/threads.dir/flags.make
external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o: ../external/glfw/deps/tinycthread.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peer/Development/graphics/enki/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/threads.dir/__/deps/tinycthread.c.o   -c /home/peer/Development/graphics/enki/external/glfw/deps/tinycthread.c

external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/__/deps/tinycthread.c.i"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/peer/Development/graphics/enki/external/glfw/deps/tinycthread.c > CMakeFiles/threads.dir/__/deps/tinycthread.c.i

external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/__/deps/tinycthread.c.s"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/peer/Development/graphics/enki/external/glfw/deps/tinycthread.c -o CMakeFiles/threads.dir/__/deps/tinycthread.c.s

external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires:
.PHONY : external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires

external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides: external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires
	$(MAKE) -f external/glfw/tests/CMakeFiles/threads.dir/build.make external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides.build
.PHONY : external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides

external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides.build: external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o

# Object files for target threads
threads_OBJECTS = \
"CMakeFiles/threads.dir/threads.c.o" \
"CMakeFiles/threads.dir/__/deps/tinycthread.c.o"

# External object files for target threads
threads_EXTERNAL_OBJECTS =

bin/threads: external/glfw/tests/CMakeFiles/threads.dir/threads.c.o
bin/threads: external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o
bin/threads: external/glfw/tests/CMakeFiles/threads.dir/build.make
bin/threads: lib/libglfw3.a
bin/threads: /usr/lib64/libGLU.so
bin/threads: /usr/lib64/libX11.so
bin/threads: /usr/lib64/libXrandr.so
bin/threads: /usr/lib64/libXinerama.so
bin/threads: /usr/lib64/libXi.so
bin/threads: /usr/lib64/libXxf86vm.so
bin/threads: /usr/lib64/librt.so
bin/threads: /usr/lib64/libm.so
bin/threads: /usr/lib64/libXcursor.so
bin/threads: /usr/lib64/libGL.so
bin/threads: /usr/lib64/librt.so
bin/threads: /usr/lib64/libXrandr.so
bin/threads: /usr/lib64/libXinerama.so
bin/threads: /usr/lib64/libXi.so
bin/threads: /usr/lib64/libXxf86vm.so
bin/threads: /usr/lib64/libm.so
bin/threads: /usr/lib64/libXcursor.so
bin/threads: /usr/lib64/libGL.so
bin/threads: external/glfw/tests/CMakeFiles/threads.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../../bin/threads"
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/threads.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw/tests/CMakeFiles/threads.dir/build: bin/threads
.PHONY : external/glfw/tests/CMakeFiles/threads.dir/build

external/glfw/tests/CMakeFiles/threads.dir/requires: external/glfw/tests/CMakeFiles/threads.dir/threads.c.o.requires
external/glfw/tests/CMakeFiles/threads.dir/requires: external/glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires
.PHONY : external/glfw/tests/CMakeFiles/threads.dir/requires

external/glfw/tests/CMakeFiles/threads.dir/clean:
	cd /home/peer/Development/graphics/enki/build/external/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/threads.dir/cmake_clean.cmake
.PHONY : external/glfw/tests/CMakeFiles/threads.dir/clean

external/glfw/tests/CMakeFiles/threads.dir/depend:
	cd /home/peer/Development/graphics/enki/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peer/Development/graphics/enki /home/peer/Development/graphics/enki/external/glfw/tests /home/peer/Development/graphics/enki/build /home/peer/Development/graphics/enki/build/external/glfw/tests /home/peer/Development/graphics/enki/build/external/glfw/tests/CMakeFiles/threads.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw/tests/CMakeFiles/threads.dir/depend
