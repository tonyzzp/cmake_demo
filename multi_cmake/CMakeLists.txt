cmake_minimum_required(VERSION 3.23)

project(library)

add_subdirectory(lib)


# exe with lib
# 此exe需要link上面mymath_lib生成的lib文件，最终生成单一exe文件，可独立运行
add_executable(
    main
    main.c
)

target_link_libraries(
    main
    PRIVATE
    mymath
)
