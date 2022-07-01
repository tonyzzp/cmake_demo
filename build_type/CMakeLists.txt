cmake_minimum_required(VERSION 3.23)

project(demo)

# 这个针对vs无效。vs需要在编译时增加命令行参数  --config Release
# set(CMAKE_BUILD_TYPE RelWithDebInfo)

add_executable(
    demo
    main.c
)