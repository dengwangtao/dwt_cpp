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
CMAKE_SOURCE_DIR = /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build

# Include any dependencies generated for this target.
include test/CMakeFiles/test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test.dir/flags.make

test/CMakeFiles/test.dir/Address.pb.cc.o: test/CMakeFiles/test.dir/flags.make
test/CMakeFiles/test.dir/Address.pb.cc.o: /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/Address.pb.cc
test/CMakeFiles/test.dir/Address.pb.cc.o: test/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test.dir/Address.pb.cc.o"
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/test.dir/Address.pb.cc.o -MF CMakeFiles/test.dir/Address.pb.cc.o.d -o CMakeFiles/test.dir/Address.pb.cc.o -c /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/Address.pb.cc

test/CMakeFiles/test.dir/Address.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test.dir/Address.pb.cc.i"
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/Address.pb.cc > CMakeFiles/test.dir/Address.pb.cc.i

test/CMakeFiles/test.dir/Address.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test.dir/Address.pb.cc.s"
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/Address.pb.cc -o CMakeFiles/test.dir/Address.pb.cc.s

test/CMakeFiles/test.dir/MyTest.cpp.o: test/CMakeFiles/test.dir/flags.make
test/CMakeFiles/test.dir/MyTest.cpp.o: /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/MyTest.cpp
test/CMakeFiles/test.dir/MyTest.cpp.o: test/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/test.dir/MyTest.cpp.o"
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/test.dir/MyTest.cpp.o -MF CMakeFiles/test.dir/MyTest.cpp.o.d -o CMakeFiles/test.dir/MyTest.cpp.o -c /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/MyTest.cpp

test/CMakeFiles/test.dir/MyTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test.dir/MyTest.cpp.i"
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/MyTest.cpp > CMakeFiles/test.dir/MyTest.cpp.i

test/CMakeFiles/test.dir/MyTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test.dir/MyTest.cpp.s"
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/MyTest.cpp -o CMakeFiles/test.dir/MyTest.cpp.s

test/CMakeFiles/test.dir/Person.pb.cc.o: test/CMakeFiles/test.dir/flags.make
test/CMakeFiles/test.dir/Person.pb.cc.o: /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/Person.pb.cc
test/CMakeFiles/test.dir/Person.pb.cc.o: test/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/test.dir/Person.pb.cc.o"
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/test.dir/Person.pb.cc.o -MF CMakeFiles/test.dir/Person.pb.cc.o.d -o CMakeFiles/test.dir/Person.pb.cc.o -c /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/Person.pb.cc

test/CMakeFiles/test.dir/Person.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test.dir/Person.pb.cc.i"
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/Person.pb.cc > CMakeFiles/test.dir/Person.pb.cc.i

test/CMakeFiles/test.dir/Person.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test.dir/Person.pb.cc.s"
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test/Person.pb.cc -o CMakeFiles/test.dir/Person.pb.cc.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/Address.pb.cc.o" \
"CMakeFiles/test.dir/MyTest.cpp.o" \
"CMakeFiles/test.dir/Person.pb.cc.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test/libtest.a: test/CMakeFiles/test.dir/Address.pb.cc.o
test/libtest.a: test/CMakeFiles/test.dir/MyTest.cpp.o
test/libtest.a: test/CMakeFiles/test.dir/Person.pb.cc.o
test/libtest.a: test/CMakeFiles/test.dir/build.make
test/libtest.a: test/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libtest.a"
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean_target.cmake
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test.dir/build: test/libtest.a
.PHONY : test/CMakeFiles/test.dir/build

test/CMakeFiles/test.dir/clean:
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test.dir/clean

test/CMakeFiles/test.dir/depend:
	cd /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/test /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test /home/cpp/cpp_code/dwt_cpp/protobuf_dwt/src/build/test/CMakeFiles/test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/test.dir/depend

