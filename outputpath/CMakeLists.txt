cmake_minimum_required(VERSION 3.23)

project(demo)

set(
    EXECUTABLE_OUTPUT_PATH
    bin
)

set(
    LIBRARY_OUTPUT_PATH
    lib
)

add_executable(
    demo
    main.c
)

