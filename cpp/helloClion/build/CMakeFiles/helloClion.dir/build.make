# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.22.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.22.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/cgl/Desktop/demo/cpp/helloClion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/cgl/Desktop/demo/cpp/helloClion/build

# Include any dependencies generated for this target.
include CMakeFiles/helloClion.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/helloClion.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/helloClion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/helloClion.dir/flags.make

CMakeFiles/helloClion.dir/main.cpp.o: CMakeFiles/helloClion.dir/flags.make
CMakeFiles/helloClion.dir/main.cpp.o: ../main.cpp
CMakeFiles/helloClion.dir/main.cpp.o: CMakeFiles/helloClion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/cgl/Desktop/demo/cpp/helloClion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/helloClion.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/helloClion.dir/main.cpp.o -MF CMakeFiles/helloClion.dir/main.cpp.o.d -o CMakeFiles/helloClion.dir/main.cpp.o -c /Users/cgl/Desktop/demo/cpp/helloClion/main.cpp

CMakeFiles/helloClion.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/helloClion.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cgl/Desktop/demo/cpp/helloClion/main.cpp > CMakeFiles/helloClion.dir/main.cpp.i

CMakeFiles/helloClion.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/helloClion.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cgl/Desktop/demo/cpp/helloClion/main.cpp -o CMakeFiles/helloClion.dir/main.cpp.s

# Object files for target helloClion
helloClion_OBJECTS = \
"CMakeFiles/helloClion.dir/main.cpp.o"

# External object files for target helloClion
helloClion_EXTERNAL_OBJECTS =

helloClion: CMakeFiles/helloClion.dir/main.cpp.o
helloClion: CMakeFiles/helloClion.dir/build.make
helloClion: /usr/local/lib/libgtest.a
helloClion: CMakeFiles/helloClion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/cgl/Desktop/demo/cpp/helloClion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable helloClion"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/helloClion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/helloClion.dir/build: helloClion
.PHONY : CMakeFiles/helloClion.dir/build

CMakeFiles/helloClion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/helloClion.dir/cmake_clean.cmake
.PHONY : CMakeFiles/helloClion.dir/clean

CMakeFiles/helloClion.dir/depend:
	cd /Users/cgl/Desktop/demo/cpp/helloClion/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cgl/Desktop/demo/cpp/helloClion /Users/cgl/Desktop/demo/cpp/helloClion /Users/cgl/Desktop/demo/cpp/helloClion/build /Users/cgl/Desktop/demo/cpp/helloClion/build /Users/cgl/Desktop/demo/cpp/helloClion/build/CMakeFiles/helloClion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/helloClion.dir/depend

