# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /opt/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SortingAlgorithms.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/SortingAlgorithms.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SortingAlgorithms.dir/flags.make

CMakeFiles/SortingAlgorithms.dir/main.cpp.o: CMakeFiles/SortingAlgorithms.dir/flags.make
CMakeFiles/SortingAlgorithms.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SortingAlgorithms.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SortingAlgorithms.dir/main.cpp.o -c /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/main.cpp

CMakeFiles/SortingAlgorithms.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SortingAlgorithms.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/main.cpp > CMakeFiles/SortingAlgorithms.dir/main.cpp.i

CMakeFiles/SortingAlgorithms.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SortingAlgorithms.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/main.cpp -o CMakeFiles/SortingAlgorithms.dir/main.cpp.s

CMakeFiles/SortingAlgorithms.dir/sorting.cpp.o: CMakeFiles/SortingAlgorithms.dir/flags.make
CMakeFiles/SortingAlgorithms.dir/sorting.cpp.o: ../sorting.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SortingAlgorithms.dir/sorting.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SortingAlgorithms.dir/sorting.cpp.o -c /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/sorting.cpp

CMakeFiles/SortingAlgorithms.dir/sorting.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SortingAlgorithms.dir/sorting.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/sorting.cpp > CMakeFiles/SortingAlgorithms.dir/sorting.cpp.i

CMakeFiles/SortingAlgorithms.dir/sorting.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SortingAlgorithms.dir/sorting.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/sorting.cpp -o CMakeFiles/SortingAlgorithms.dir/sorting.cpp.s

# Object files for target SortingAlgorithms
SortingAlgorithms_OBJECTS = \
"CMakeFiles/SortingAlgorithms.dir/main.cpp.o" \
"CMakeFiles/SortingAlgorithms.dir/sorting.cpp.o"

# External object files for target SortingAlgorithms
SortingAlgorithms_EXTERNAL_OBJECTS =

SortingAlgorithms: CMakeFiles/SortingAlgorithms.dir/main.cpp.o
SortingAlgorithms: CMakeFiles/SortingAlgorithms.dir/sorting.cpp.o
SortingAlgorithms: CMakeFiles/SortingAlgorithms.dir/build.make
SortingAlgorithms: CMakeFiles/SortingAlgorithms.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable SortingAlgorithms"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SortingAlgorithms.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SortingAlgorithms.dir/build: SortingAlgorithms
.PHONY : CMakeFiles/SortingAlgorithms.dir/build

CMakeFiles/SortingAlgorithms.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SortingAlgorithms.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SortingAlgorithms.dir/clean

CMakeFiles/SortingAlgorithms.dir/depend:
	cd /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/cmake-build-debug /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/cmake-build-debug /home/victoriya/CLionProjects/Algorithms/SortingAlgorithms/cmake-build-debug/CMakeFiles/SortingAlgorithms.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SortingAlgorithms.dir/depend

