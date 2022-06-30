cmake_minimum_required(VERSION 3.12)

project(multifiles)

aux_source_directory(
    .
    ALL_SOURCE_LIST
)

aux_source_directory(
    ./hello
    ALL_SOURCE_LIST
)

message(${ALL_SOURCE_LIST})

add_executable(
    multifiles
    ${ALL_SOURCE_LIST}
)

include_directories(
    include
)
