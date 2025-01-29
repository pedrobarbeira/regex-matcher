# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /home/pbarbeira/dev/tools/CLion-2023.1/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /home/pbarbeira/dev/tools/CLion-2023.1/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pbarbeira/dev/code/cpp/regex-matcher

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pbarbeira/dev/code/cpp/regex-matcher

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "No interactive CMake dialog available..."
	/home/pbarbeira/dev/tools/CLion-2023.1/bin/cmake/linux/x64/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/home/pbarbeira/dev/tools/CLion-2023.1/bin/cmake/linux/x64/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/pbarbeira/dev/code/cpp/regex-matcher/CMakeFiles /home/pbarbeira/dev/code/cpp/regex-matcher//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/pbarbeira/dev/code/cpp/regex-matcher/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named rgxm

# Build rule for target.
rgxm: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 rgxm
.PHONY : rgxm

# fast build rule for target.
rgxm/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/build
.PHONY : rgxm/fast

main.o: main.cpp.o
.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/main.cpp.s
.PHONY : main.cpp.s

src/expr.o: src/expr.cpp.o
.PHONY : src/expr.o

# target to build an object file
src/expr.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/expr.cpp.o
.PHONY : src/expr.cpp.o

src/expr.i: src/expr.cpp.i
.PHONY : src/expr.i

# target to preprocess a source file
src/expr.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/expr.cpp.i
.PHONY : src/expr.cpp.i

src/expr.s: src/expr.cpp.s
.PHONY : src/expr.s

# target to generate assembly for a file
src/expr.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/expr.cpp.s
.PHONY : src/expr.cpp.s

src/parser.o: src/parser.cpp.o
.PHONY : src/parser.o

# target to build an object file
src/parser.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/parser.cpp.o
.PHONY : src/parser.cpp.o

src/parser.i: src/parser.cpp.i
.PHONY : src/parser.i

# target to preprocess a source file
src/parser.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/parser.cpp.i
.PHONY : src/parser.cpp.i

src/parser.s: src/parser.cpp.s
.PHONY : src/parser.s

# target to generate assembly for a file
src/parser.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/parser.cpp.s
.PHONY : src/parser.cpp.s

src/regex-builder.o: src/regex-builder.cpp.o
.PHONY : src/regex-builder.o

# target to build an object file
src/regex-builder.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/regex-builder.cpp.o
.PHONY : src/regex-builder.cpp.o

src/regex-builder.i: src/regex-builder.cpp.i
.PHONY : src/regex-builder.i

# target to preprocess a source file
src/regex-builder.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/regex-builder.cpp.i
.PHONY : src/regex-builder.cpp.i

src/regex-builder.s: src/regex-builder.cpp.s
.PHONY : src/regex-builder.s

# target to generate assembly for a file
src/regex-builder.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/regex-builder.cpp.s
.PHONY : src/regex-builder.cpp.s

src/regex-matcher.o: src/regex-matcher.cpp.o
.PHONY : src/regex-matcher.o

# target to build an object file
src/regex-matcher.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/regex-matcher.cpp.o
.PHONY : src/regex-matcher.cpp.o

src/regex-matcher.i: src/regex-matcher.cpp.i
.PHONY : src/regex-matcher.i

# target to preprocess a source file
src/regex-matcher.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/regex-matcher.cpp.i
.PHONY : src/regex-matcher.cpp.i

src/regex-matcher.s: src/regex-matcher.cpp.s
.PHONY : src/regex-matcher.s

# target to generate assembly for a file
src/regex-matcher.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/regex-matcher.cpp.s
.PHONY : src/regex-matcher.cpp.s

src/state.o: src/state.cpp.o
.PHONY : src/state.o

# target to build an object file
src/state.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/state.cpp.o
.PHONY : src/state.cpp.o

src/state.i: src/state.cpp.i
.PHONY : src/state.i

# target to preprocess a source file
src/state.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/state.cpp.i
.PHONY : src/state.cpp.i

src/state.s: src/state.cpp.s
.PHONY : src/state.s

# target to generate assembly for a file
src/state.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/state.cpp.s
.PHONY : src/state.cpp.s

src/tokenizer.o: src/tokenizer.cpp.o
.PHONY : src/tokenizer.o

# target to build an object file
src/tokenizer.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/tokenizer.cpp.o
.PHONY : src/tokenizer.cpp.o

src/tokenizer.i: src/tokenizer.cpp.i
.PHONY : src/tokenizer.i

# target to preprocess a source file
src/tokenizer.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/tokenizer.cpp.i
.PHONY : src/tokenizer.cpp.i

src/tokenizer.s: src/tokenizer.cpp.s
.PHONY : src/tokenizer.s

# target to generate assembly for a file
src/tokenizer.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rgxm.dir/build.make CMakeFiles/rgxm.dir/src/tokenizer.cpp.s
.PHONY : src/tokenizer.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... rgxm"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... src/expr.o"
	@echo "... src/expr.i"
	@echo "... src/expr.s"
	@echo "... src/parser.o"
	@echo "... src/parser.i"
	@echo "... src/parser.s"
	@echo "... src/regex-builder.o"
	@echo "... src/regex-builder.i"
	@echo "... src/regex-builder.s"
	@echo "... src/regex-matcher.o"
	@echo "... src/regex-matcher.i"
	@echo "... src/regex-matcher.s"
	@echo "... src/state.o"
	@echo "... src/state.i"
	@echo "... src/state.s"
	@echo "... src/tokenizer.o"
	@echo "... src/tokenizer.i"
	@echo "... src/tokenizer.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

