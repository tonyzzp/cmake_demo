cmake_minimum_required(VERSION 3.23)

project(library)

# dll
# 生成dll,如果源代码有导出方法，则也同时会生成一个lib,lib用于link
add_library(
    mymath_dll
    SHARED
    lib.c
)

target_include_directories(
    mymath_dll
    PUBLIC
    include
)

# lib
# 生成lib
add_library(
    mymath_lib
    STATIC
    lib.c
)

target_include_directories(
    mymath_lib
    PUBLIC
    include
)

# exe with dll
# 此exe需要link上面mymath_dll生成的lib文件，最终生成的exe在运行时会动态加载mymath_dll.dll文件
add_executable(
    main_dll
    main.c
)

target_include_directories(
    main_dll
    PUBLIC
    include
)

target_link_libraries(
    main_dll
    PRIVATE
    mymath_dll
)


# exe with lib
# 此exe需要link上面mymath_lib生成的lib文件，最终生成单一exe文件，可独立运行
add_executable(
    main_lib
    main.c
)

target_link_libraries(
    main_lib
    PRIVATE
    mymath_lib
)
