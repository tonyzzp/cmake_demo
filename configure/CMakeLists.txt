cmake_minimum_required(VERSION 3.16)

project(options)

set(opt_project_version 1.0.0)
set(opt_project_myname zzp)

add_executable(
    main
    main.c
)

# 会将version.h.in文件内的 ${opt_project_version} 替换为上面定义的值，并生成version.h文件
# 这会同时匹配 ${xxx} 和 @xxx@ 两种写法
configure_file(
    version.h.in
    ${PROJECT_BINARY_DIR}/version.h
)


# 会将version.h.in文件内的 @opt_project_myname@ 替换为上面定义的值，并生成version.h文件
# 仅匹配 @xxx@ 这种写法
configure_file(
    myname.h.in
    ${PROJECT_BINARY_DIR}/myname.h
    @ONLY
)

target_include_directories(
    main
    PRIVATE
    ${PROJECT_BINARY_DIR}
)
