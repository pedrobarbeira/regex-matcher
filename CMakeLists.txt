cmake_minimum_required(VERSION 3.10)

project(regex-matcher)

set(CMAKE_CXX_STANDARD, 11)
set(CMAKE_CXX_STANDARD_REQUIRED, True)

set(BIN rgxm)
set(INCLUDE ./include)
set(SOURCES ./include/regex-matcher.h ./src/regex-matcher.cpp
						./include/state.h	./src/state.cpp
						./include/parser.h ./src/parser.cpp
						./include/tokenizer.h ./src/tokenizer.cpp
						./include/regex-builder.h ./src/regex-builder.cpp
						./include/expr.h ./src/expr.cpp
)

add_executable(${BIN} main.cpp ${SOURCES})
target_include_directories(${BIN} PUBLIC ${INCLUDE})
