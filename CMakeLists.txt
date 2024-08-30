cmake_minimum_required(VERSION 3.10)
project(EMBEDDEDBUILDSYSTEM)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

#Include the header files
include_directories(inc)

#Add the source files
add_library(operations STATIC
    src/add.cpp 
    src/sub.cpp 
    src/mul.cpp 
    src/div.cpp 
)

#Add the executable
add_executable(EMBEDDEDBUILDSYSTEM src/main.cpp)

#Link the executable to the operations library
target_link_libraries(EMBEDDEDBUILDSYSTEM operations)
