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
CMAKE_SOURCE_DIR = /dwt/cpp_code/dwt_cpp/group_chat_pro

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /dwt/cpp_code/dwt_cpp/group_chat_pro/build

# Include any dependencies generated for this target.
include src/server/CMakeFiles/chatServer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/server/CMakeFiles/chatServer.dir/compiler_depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/chatServer.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/chatServer.dir/flags.make

src/server/CMakeFiles/chatServer.dir/chatserver.cpp.o: src/server/CMakeFiles/chatServer.dir/flags.make
src/server/CMakeFiles/chatServer.dir/chatserver.cpp.o: /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/chatserver.cpp
src/server/CMakeFiles/chatServer.dir/chatserver.cpp.o: src/server/CMakeFiles/chatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/dwt/cpp_code/dwt_cpp/group_chat_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/server/CMakeFiles/chatServer.dir/chatserver.cpp.o"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/chatServer.dir/chatserver.cpp.o -MF CMakeFiles/chatServer.dir/chatserver.cpp.o.d -o CMakeFiles/chatServer.dir/chatserver.cpp.o -c /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/chatserver.cpp

src/server/CMakeFiles/chatServer.dir/chatserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/chatServer.dir/chatserver.cpp.i"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/chatserver.cpp > CMakeFiles/chatServer.dir/chatserver.cpp.i

src/server/CMakeFiles/chatServer.dir/chatserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/chatServer.dir/chatserver.cpp.s"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/chatserver.cpp -o CMakeFiles/chatServer.dir/chatserver.cpp.s

src/server/CMakeFiles/chatServer.dir/chatservice.cpp.o: src/server/CMakeFiles/chatServer.dir/flags.make
src/server/CMakeFiles/chatServer.dir/chatservice.cpp.o: /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/chatservice.cpp
src/server/CMakeFiles/chatServer.dir/chatservice.cpp.o: src/server/CMakeFiles/chatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/dwt/cpp_code/dwt_cpp/group_chat_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/server/CMakeFiles/chatServer.dir/chatservice.cpp.o"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/chatServer.dir/chatservice.cpp.o -MF CMakeFiles/chatServer.dir/chatservice.cpp.o.d -o CMakeFiles/chatServer.dir/chatservice.cpp.o -c /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/chatservice.cpp

src/server/CMakeFiles/chatServer.dir/chatservice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/chatServer.dir/chatservice.cpp.i"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/chatservice.cpp > CMakeFiles/chatServer.dir/chatservice.cpp.i

src/server/CMakeFiles/chatServer.dir/chatservice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/chatServer.dir/chatservice.cpp.s"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/chatservice.cpp -o CMakeFiles/chatServer.dir/chatservice.cpp.s

src/server/CMakeFiles/chatServer.dir/main.cpp.o: src/server/CMakeFiles/chatServer.dir/flags.make
src/server/CMakeFiles/chatServer.dir/main.cpp.o: /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/main.cpp
src/server/CMakeFiles/chatServer.dir/main.cpp.o: src/server/CMakeFiles/chatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/dwt/cpp_code/dwt_cpp/group_chat_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/server/CMakeFiles/chatServer.dir/main.cpp.o"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/chatServer.dir/main.cpp.o -MF CMakeFiles/chatServer.dir/main.cpp.o.d -o CMakeFiles/chatServer.dir/main.cpp.o -c /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/main.cpp

src/server/CMakeFiles/chatServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/chatServer.dir/main.cpp.i"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/main.cpp > CMakeFiles/chatServer.dir/main.cpp.i

src/server/CMakeFiles/chatServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/chatServer.dir/main.cpp.s"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/main.cpp -o CMakeFiles/chatServer.dir/main.cpp.s

src/server/CMakeFiles/chatServer.dir/db/db.cpp.o: src/server/CMakeFiles/chatServer.dir/flags.make
src/server/CMakeFiles/chatServer.dir/db/db.cpp.o: /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/db/db.cpp
src/server/CMakeFiles/chatServer.dir/db/db.cpp.o: src/server/CMakeFiles/chatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/dwt/cpp_code/dwt_cpp/group_chat_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/server/CMakeFiles/chatServer.dir/db/db.cpp.o"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/chatServer.dir/db/db.cpp.o -MF CMakeFiles/chatServer.dir/db/db.cpp.o.d -o CMakeFiles/chatServer.dir/db/db.cpp.o -c /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/db/db.cpp

src/server/CMakeFiles/chatServer.dir/db/db.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/chatServer.dir/db/db.cpp.i"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/db/db.cpp > CMakeFiles/chatServer.dir/db/db.cpp.i

src/server/CMakeFiles/chatServer.dir/db/db.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/chatServer.dir/db/db.cpp.s"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/db/db.cpp -o CMakeFiles/chatServer.dir/db/db.cpp.s

src/server/CMakeFiles/chatServer.dir/model/friendmodel.cpp.o: src/server/CMakeFiles/chatServer.dir/flags.make
src/server/CMakeFiles/chatServer.dir/model/friendmodel.cpp.o: /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/friendmodel.cpp
src/server/CMakeFiles/chatServer.dir/model/friendmodel.cpp.o: src/server/CMakeFiles/chatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/dwt/cpp_code/dwt_cpp/group_chat_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/server/CMakeFiles/chatServer.dir/model/friendmodel.cpp.o"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/chatServer.dir/model/friendmodel.cpp.o -MF CMakeFiles/chatServer.dir/model/friendmodel.cpp.o.d -o CMakeFiles/chatServer.dir/model/friendmodel.cpp.o -c /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/friendmodel.cpp

src/server/CMakeFiles/chatServer.dir/model/friendmodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/chatServer.dir/model/friendmodel.cpp.i"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/friendmodel.cpp > CMakeFiles/chatServer.dir/model/friendmodel.cpp.i

src/server/CMakeFiles/chatServer.dir/model/friendmodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/chatServer.dir/model/friendmodel.cpp.s"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/friendmodel.cpp -o CMakeFiles/chatServer.dir/model/friendmodel.cpp.s

src/server/CMakeFiles/chatServer.dir/model/groupmodel.cpp.o: src/server/CMakeFiles/chatServer.dir/flags.make
src/server/CMakeFiles/chatServer.dir/model/groupmodel.cpp.o: /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/groupmodel.cpp
src/server/CMakeFiles/chatServer.dir/model/groupmodel.cpp.o: src/server/CMakeFiles/chatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/dwt/cpp_code/dwt_cpp/group_chat_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/server/CMakeFiles/chatServer.dir/model/groupmodel.cpp.o"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/chatServer.dir/model/groupmodel.cpp.o -MF CMakeFiles/chatServer.dir/model/groupmodel.cpp.o.d -o CMakeFiles/chatServer.dir/model/groupmodel.cpp.o -c /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/groupmodel.cpp

src/server/CMakeFiles/chatServer.dir/model/groupmodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/chatServer.dir/model/groupmodel.cpp.i"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/groupmodel.cpp > CMakeFiles/chatServer.dir/model/groupmodel.cpp.i

src/server/CMakeFiles/chatServer.dir/model/groupmodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/chatServer.dir/model/groupmodel.cpp.s"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/groupmodel.cpp -o CMakeFiles/chatServer.dir/model/groupmodel.cpp.s

src/server/CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.o: src/server/CMakeFiles/chatServer.dir/flags.make
src/server/CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.o: /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/offlinemessagemodel.cpp
src/server/CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.o: src/server/CMakeFiles/chatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/dwt/cpp_code/dwt_cpp/group_chat_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/server/CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.o"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.o -MF CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.o.d -o CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.o -c /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/offlinemessagemodel.cpp

src/server/CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.i"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/offlinemessagemodel.cpp > CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.i

src/server/CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.s"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/offlinemessagemodel.cpp -o CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.s

src/server/CMakeFiles/chatServer.dir/model/usermodel.cpp.o: src/server/CMakeFiles/chatServer.dir/flags.make
src/server/CMakeFiles/chatServer.dir/model/usermodel.cpp.o: /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/usermodel.cpp
src/server/CMakeFiles/chatServer.dir/model/usermodel.cpp.o: src/server/CMakeFiles/chatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/dwt/cpp_code/dwt_cpp/group_chat_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/server/CMakeFiles/chatServer.dir/model/usermodel.cpp.o"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/chatServer.dir/model/usermodel.cpp.o -MF CMakeFiles/chatServer.dir/model/usermodel.cpp.o.d -o CMakeFiles/chatServer.dir/model/usermodel.cpp.o -c /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/usermodel.cpp

src/server/CMakeFiles/chatServer.dir/model/usermodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/chatServer.dir/model/usermodel.cpp.i"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/usermodel.cpp > CMakeFiles/chatServer.dir/model/usermodel.cpp.i

src/server/CMakeFiles/chatServer.dir/model/usermodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/chatServer.dir/model/usermodel.cpp.s"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server/model/usermodel.cpp -o CMakeFiles/chatServer.dir/model/usermodel.cpp.s

# Object files for target chatServer
chatServer_OBJECTS = \
"CMakeFiles/chatServer.dir/chatserver.cpp.o" \
"CMakeFiles/chatServer.dir/chatservice.cpp.o" \
"CMakeFiles/chatServer.dir/main.cpp.o" \
"CMakeFiles/chatServer.dir/db/db.cpp.o" \
"CMakeFiles/chatServer.dir/model/friendmodel.cpp.o" \
"CMakeFiles/chatServer.dir/model/groupmodel.cpp.o" \
"CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.o" \
"CMakeFiles/chatServer.dir/model/usermodel.cpp.o"

# External object files for target chatServer
chatServer_EXTERNAL_OBJECTS =

/dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer: src/server/CMakeFiles/chatServer.dir/chatserver.cpp.o
/dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer: src/server/CMakeFiles/chatServer.dir/chatservice.cpp.o
/dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer: src/server/CMakeFiles/chatServer.dir/main.cpp.o
/dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer: src/server/CMakeFiles/chatServer.dir/db/db.cpp.o
/dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer: src/server/CMakeFiles/chatServer.dir/model/friendmodel.cpp.o
/dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer: src/server/CMakeFiles/chatServer.dir/model/groupmodel.cpp.o
/dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer: src/server/CMakeFiles/chatServer.dir/model/offlinemessagemodel.cpp.o
/dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer: src/server/CMakeFiles/chatServer.dir/model/usermodel.cpp.o
/dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer: src/server/CMakeFiles/chatServer.dir/build.make
/dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer: src/server/CMakeFiles/chatServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/dwt/cpp_code/dwt_cpp/group_chat_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable /dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer"
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chatServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/chatServer.dir/build: /dwt/cpp_code/dwt_cpp/group_chat_pro/bin/chatServer
.PHONY : src/server/CMakeFiles/chatServer.dir/build

src/server/CMakeFiles/chatServer.dir/clean:
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/chatServer.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/chatServer.dir/clean

src/server/CMakeFiles/chatServer.dir/depend:
	cd /dwt/cpp_code/dwt_cpp/group_chat_pro/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /dwt/cpp_code/dwt_cpp/group_chat_pro /dwt/cpp_code/dwt_cpp/group_chat_pro/src/server /dwt/cpp_code/dwt_cpp/group_chat_pro/build /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server /dwt/cpp_code/dwt_cpp/group_chat_pro/build/src/server/CMakeFiles/chatServer.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/server/CMakeFiles/chatServer.dir/depend

