# Minimum version of CMake
cmake_minimum_required(VERSION 3.4.1)

# Set the project name
project(libextsuperfast)

# Include directories
include_directories(include)

# Add source files
file(GLOB_RECURSE SOURCES
    "src/*.cc"
)

# Define the shared library
add_library(
    extsuperfast
    SHARED
    ${SOURCES}
)

# Link libraries
find_library(
    log-lib
    log
)

find_library(
    android-lib
    android
)

target_link_libraries(
    extsuperfast
    ${log-lib}
    ${android-lib}
)