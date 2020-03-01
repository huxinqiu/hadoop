# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hu/Program/java/hadoop/hadoop-tools/hadoop-pipes/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hu/Program/java/hadoop

# Include any dependencies generated for this target.
include CMakeFiles/hadooputils.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hadooputils.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hadooputils.dir/flags.make

CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.o: CMakeFiles/hadooputils.dir/flags.make
CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.o: hadoop-tools/hadoop-pipes/src/main/native/utils/impl/StringUtils.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hu/Program/java/hadoop/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.o -c /home/hu/Program/java/hadoop/hadoop-tools/hadoop-pipes/src/main/native/utils/impl/StringUtils.cc

CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hu/Program/java/hadoop/hadoop-tools/hadoop-pipes/src/main/native/utils/impl/StringUtils.cc > CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.i

CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hu/Program/java/hadoop/hadoop-tools/hadoop-pipes/src/main/native/utils/impl/StringUtils.cc -o CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.s

CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.o: CMakeFiles/hadooputils.dir/flags.make
CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.o: hadoop-tools/hadoop-pipes/src/main/native/utils/impl/SerialUtils.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hu/Program/java/hadoop/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.o -c /home/hu/Program/java/hadoop/hadoop-tools/hadoop-pipes/src/main/native/utils/impl/SerialUtils.cc

CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hu/Program/java/hadoop/hadoop-tools/hadoop-pipes/src/main/native/utils/impl/SerialUtils.cc > CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.i

CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hu/Program/java/hadoop/hadoop-tools/hadoop-pipes/src/main/native/utils/impl/SerialUtils.cc -o CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.s

# Object files for target hadooputils
hadooputils_OBJECTS = \
"CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.o" \
"CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.o"

# External object files for target hadooputils
hadooputils_EXTERNAL_OBJECTS =

libhadooputils.a: CMakeFiles/hadooputils.dir/main/native/utils/impl/StringUtils.cc.o
libhadooputils.a: CMakeFiles/hadooputils.dir/main/native/utils/impl/SerialUtils.cc.o
libhadooputils.a: CMakeFiles/hadooputils.dir/build.make
libhadooputils.a: CMakeFiles/hadooputils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hu/Program/java/hadoop/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libhadooputils.a"
	$(CMAKE_COMMAND) -P CMakeFiles/hadooputils.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hadooputils.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hadooputils.dir/build: libhadooputils.a

.PHONY : CMakeFiles/hadooputils.dir/build

CMakeFiles/hadooputils.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hadooputils.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hadooputils.dir/clean

CMakeFiles/hadooputils.dir/depend:
	cd /home/hu/Program/java/hadoop && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hu/Program/java/hadoop/hadoop-tools/hadoop-pipes/src /home/hu/Program/java/hadoop/hadoop-tools/hadoop-pipes/src /home/hu/Program/java/hadoop /home/hu/Program/java/hadoop /home/hu/Program/java/hadoop/CMakeFiles/hadooputils.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hadooputils.dir/depend

