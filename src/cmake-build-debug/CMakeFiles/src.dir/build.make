# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /cygdrive/c/Users/aeder/.CLion2018.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/aeder/.CLion2018.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/src.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/src.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/src.dir/flags.make

CMakeFiles/src.dir/main.cpp.o: CMakeFiles/src.dir/flags.make
CMakeFiles/src.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/src.dir/main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/main.cpp.o -c "/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src/main.cpp"

CMakeFiles/src.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src/main.cpp" > CMakeFiles/src.dir/main.cpp.i

CMakeFiles/src.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src/main.cpp" -o CMakeFiles/src.dir/main.cpp.s

# Object files for target src
src_OBJECTS = \
"CMakeFiles/src.dir/main.cpp.o"

# External object files for target src
src_EXTERNAL_OBJECTS =

src.exe: CMakeFiles/src.dir/main.cpp.o
src.exe: CMakeFiles/src.dir/build.make
src.exe: CMakeFiles/src.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable src.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/src.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/src.dir/build: src.exe

.PHONY : CMakeFiles/src.dir/build

CMakeFiles/src.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/src.dir/cmake_clean.cmake
.PHONY : CMakeFiles/src.dir/clean

CMakeFiles/src.dir/depend:
	cd "/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src" "/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src" "/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src/cmake-build-debug" "/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src/cmake-build-debug" "/cygdrive/g/My Drive/School/Year2/Semester2/67808_OS/Exercises/Ex5/src/cmake-build-debug/CMakeFiles/src.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/src.dir/depend

