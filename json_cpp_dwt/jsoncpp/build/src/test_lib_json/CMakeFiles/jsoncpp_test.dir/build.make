# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build

# Include any dependencies generated for this target.
include src/test_lib_json/CMakeFiles/jsoncpp_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/test_lib_json/CMakeFiles/jsoncpp_test.dir/compiler_depend.make

# Include the progress variables for this target.
include src/test_lib_json/CMakeFiles/jsoncpp_test.dir/progress.make

# Include the compile flags for this target's objects.
include src/test_lib_json/CMakeFiles/jsoncpp_test.dir/flags.make

src/test_lib_json/CMakeFiles/jsoncpp_test.dir/jsontest.cpp.o: src/test_lib_json/CMakeFiles/jsoncpp_test.dir/flags.make
src/test_lib_json/CMakeFiles/jsoncpp_test.dir/jsontest.cpp.o: /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/jsontest.cpp
src/test_lib_json/CMakeFiles/jsoncpp_test.dir/jsontest.cpp.o: src/test_lib_json/CMakeFiles/jsoncpp_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/test_lib_json/CMakeFiles/jsoncpp_test.dir/jsontest.cpp.o"
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/test_lib_json/CMakeFiles/jsoncpp_test.dir/jsontest.cpp.o -MF CMakeFiles/jsoncpp_test.dir/jsontest.cpp.o.d -o CMakeFiles/jsoncpp_test.dir/jsontest.cpp.o -c /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/jsontest.cpp

src/test_lib_json/CMakeFiles/jsoncpp_test.dir/jsontest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jsoncpp_test.dir/jsontest.cpp.i"
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/jsontest.cpp > CMakeFiles/jsoncpp_test.dir/jsontest.cpp.i

src/test_lib_json/CMakeFiles/jsoncpp_test.dir/jsontest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jsoncpp_test.dir/jsontest.cpp.s"
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/jsontest.cpp -o CMakeFiles/jsoncpp_test.dir/jsontest.cpp.s

src/test_lib_json/CMakeFiles/jsoncpp_test.dir/fuzz.cpp.o: src/test_lib_json/CMakeFiles/jsoncpp_test.dir/flags.make
src/test_lib_json/CMakeFiles/jsoncpp_test.dir/fuzz.cpp.o: /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/fuzz.cpp
src/test_lib_json/CMakeFiles/jsoncpp_test.dir/fuzz.cpp.o: src/test_lib_json/CMakeFiles/jsoncpp_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/test_lib_json/CMakeFiles/jsoncpp_test.dir/fuzz.cpp.o"
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/test_lib_json/CMakeFiles/jsoncpp_test.dir/fuzz.cpp.o -MF CMakeFiles/jsoncpp_test.dir/fuzz.cpp.o.d -o CMakeFiles/jsoncpp_test.dir/fuzz.cpp.o -c /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/fuzz.cpp

src/test_lib_json/CMakeFiles/jsoncpp_test.dir/fuzz.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jsoncpp_test.dir/fuzz.cpp.i"
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/fuzz.cpp > CMakeFiles/jsoncpp_test.dir/fuzz.cpp.i

src/test_lib_json/CMakeFiles/jsoncpp_test.dir/fuzz.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jsoncpp_test.dir/fuzz.cpp.s"
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/fuzz.cpp -o CMakeFiles/jsoncpp_test.dir/fuzz.cpp.s

src/test_lib_json/CMakeFiles/jsoncpp_test.dir/main.cpp.o: src/test_lib_json/CMakeFiles/jsoncpp_test.dir/flags.make
src/test_lib_json/CMakeFiles/jsoncpp_test.dir/main.cpp.o: /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/main.cpp
src/test_lib_json/CMakeFiles/jsoncpp_test.dir/main.cpp.o: src/test_lib_json/CMakeFiles/jsoncpp_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/test_lib_json/CMakeFiles/jsoncpp_test.dir/main.cpp.o"
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/test_lib_json/CMakeFiles/jsoncpp_test.dir/main.cpp.o -MF CMakeFiles/jsoncpp_test.dir/main.cpp.o.d -o CMakeFiles/jsoncpp_test.dir/main.cpp.o -c /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/main.cpp

src/test_lib_json/CMakeFiles/jsoncpp_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jsoncpp_test.dir/main.cpp.i"
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/main.cpp > CMakeFiles/jsoncpp_test.dir/main.cpp.i

src/test_lib_json/CMakeFiles/jsoncpp_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jsoncpp_test.dir/main.cpp.s"
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json/main.cpp -o CMakeFiles/jsoncpp_test.dir/main.cpp.s

# Object files for target jsoncpp_test
jsoncpp_test_OBJECTS = \
"CMakeFiles/jsoncpp_test.dir/jsontest.cpp.o" \
"CMakeFiles/jsoncpp_test.dir/fuzz.cpp.o" \
"CMakeFiles/jsoncpp_test.dir/main.cpp.o"

# External object files for target jsoncpp_test
jsoncpp_test_EXTERNAL_OBJECTS =

bin/jsoncpp_test: src/test_lib_json/CMakeFiles/jsoncpp_test.dir/jsontest.cpp.o
bin/jsoncpp_test: src/test_lib_json/CMakeFiles/jsoncpp_test.dir/fuzz.cpp.o
bin/jsoncpp_test: src/test_lib_json/CMakeFiles/jsoncpp_test.dir/main.cpp.o
bin/jsoncpp_test: src/test_lib_json/CMakeFiles/jsoncpp_test.dir/build.make
bin/jsoncpp_test: lib/libjsoncpp.so.1.9.5
bin/jsoncpp_test: src/test_lib_json/CMakeFiles/jsoncpp_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../bin/jsoncpp_test"
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jsoncpp_test.dir/link.txt --verbose=$(VERBOSE)
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && ../../bin/jsoncpp_test

# Rule to build all files generated by this target.
src/test_lib_json/CMakeFiles/jsoncpp_test.dir/build: bin/jsoncpp_test
.PHONY : src/test_lib_json/CMakeFiles/jsoncpp_test.dir/build

src/test_lib_json/CMakeFiles/jsoncpp_test.dir/clean:
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json && $(CMAKE_COMMAND) -P CMakeFiles/jsoncpp_test.dir/cmake_clean.cmake
.PHONY : src/test_lib_json/CMakeFiles/jsoncpp_test.dir/clean

src/test_lib_json/CMakeFiles/jsoncpp_test.dir/depend:
	cd /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/jsoncpp-master/src/test_lib_json /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json /home/cpp/cpp_code/dwt_cpp/json_cpp_dwt/jsoncpp/build/src/test_lib_json/CMakeFiles/jsoncpp_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/test_lib_json/CMakeFiles/jsoncpp_test.dir/depend

