

add_library(
    mymath
    STATIC
    lib.c
)

target_include_directories(
    mymath
    PUBLIC
    ${PROJECT_SOURCE_DIR}/include
)
