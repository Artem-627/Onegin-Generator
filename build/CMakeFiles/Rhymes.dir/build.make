# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_SOURCE_DIR = /home/artem627/Documents/olymp/phtl/pracs/rhymes

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/artem627/Documents/olymp/phtl/pracs/rhymes/build

# Include any dependencies generated for this target.
include CMakeFiles/Rhymes.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Rhymes.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Rhymes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Rhymes.dir/flags.make

CMakeFiles/Rhymes.dir/Source/main.cpp.o: CMakeFiles/Rhymes.dir/flags.make
CMakeFiles/Rhymes.dir/Source/main.cpp.o: /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/main.cpp
CMakeFiles/Rhymes.dir/Source/main.cpp.o: CMakeFiles/Rhymes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/artem627/Documents/olymp/phtl/pracs/rhymes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Rhymes.dir/Source/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Rhymes.dir/Source/main.cpp.o -MF CMakeFiles/Rhymes.dir/Source/main.cpp.o.d -o CMakeFiles/Rhymes.dir/Source/main.cpp.o -c /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/main.cpp

CMakeFiles/Rhymes.dir/Source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Rhymes.dir/Source/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/main.cpp > CMakeFiles/Rhymes.dir/Source/main.cpp.i

CMakeFiles/Rhymes.dir/Source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Rhymes.dir/Source/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/main.cpp -o CMakeFiles/Rhymes.dir/Source/main.cpp.s

CMakeFiles/Rhymes.dir/Source/File.cpp.o: CMakeFiles/Rhymes.dir/flags.make
CMakeFiles/Rhymes.dir/Source/File.cpp.o: /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/File.cpp
CMakeFiles/Rhymes.dir/Source/File.cpp.o: CMakeFiles/Rhymes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/artem627/Documents/olymp/phtl/pracs/rhymes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Rhymes.dir/Source/File.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Rhymes.dir/Source/File.cpp.o -MF CMakeFiles/Rhymes.dir/Source/File.cpp.o.d -o CMakeFiles/Rhymes.dir/Source/File.cpp.o -c /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/File.cpp

CMakeFiles/Rhymes.dir/Source/File.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Rhymes.dir/Source/File.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/File.cpp > CMakeFiles/Rhymes.dir/Source/File.cpp.i

CMakeFiles/Rhymes.dir/Source/File.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Rhymes.dir/Source/File.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/File.cpp -o CMakeFiles/Rhymes.dir/Source/File.cpp.s

CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.o: CMakeFiles/Rhymes.dir/flags.make
CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.o: /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/Rhyme.cpp
CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.o: CMakeFiles/Rhymes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/artem627/Documents/olymp/phtl/pracs/rhymes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.o -MF CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.o.d -o CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.o -c /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/Rhyme.cpp

CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/Rhyme.cpp > CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.i

CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/artem627/Documents/olymp/phtl/pracs/rhymes/Source/Rhyme.cpp -o CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.s

# Object files for target Rhymes
Rhymes_OBJECTS = \
"CMakeFiles/Rhymes.dir/Source/main.cpp.o" \
"CMakeFiles/Rhymes.dir/Source/File.cpp.o" \
"CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.o"

# External object files for target Rhymes
Rhymes_EXTERNAL_OBJECTS =

Rhymes: CMakeFiles/Rhymes.dir/Source/main.cpp.o
Rhymes: CMakeFiles/Rhymes.dir/Source/File.cpp.o
Rhymes: CMakeFiles/Rhymes.dir/Source/Rhyme.cpp.o
Rhymes: CMakeFiles/Rhymes.dir/build.make
Rhymes: CMakeFiles/Rhymes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/artem627/Documents/olymp/phtl/pracs/rhymes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Rhymes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Rhymes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Rhymes.dir/build: Rhymes
.PHONY : CMakeFiles/Rhymes.dir/build

CMakeFiles/Rhymes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Rhymes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Rhymes.dir/clean

CMakeFiles/Rhymes.dir/depend:
	cd /home/artem627/Documents/olymp/phtl/pracs/rhymes/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/artem627/Documents/olymp/phtl/pracs/rhymes /home/artem627/Documents/olymp/phtl/pracs/rhymes /home/artem627/Documents/olymp/phtl/pracs/rhymes/build /home/artem627/Documents/olymp/phtl/pracs/rhymes/build /home/artem627/Documents/olymp/phtl/pracs/rhymes/build/CMakeFiles/Rhymes.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Rhymes.dir/depend

