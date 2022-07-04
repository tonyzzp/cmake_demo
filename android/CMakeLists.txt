cmake_minimum_required(VERSION 3.23)

project("demo")

# message("CMAKE_CROSSCOMPILING " ${CMAKE_CROSSCOMPILING})
# message("CMAKE_TOOLCHAIN_FILE " ${CMAKE_TOOLCHAIN_FILE})
# message("CMAKE_ANDROID_ARCH " ${CMAKE_ANDROID_ARCH})
# message("CMAKE_ANDROID_ARCH_ABI " ${CMAKE_ANDROID_ARCH_ABI})
# message("sysroot " ${CMAKE_SYSROOT})
# message("host " ${CMAKE_HOST_SYSTEM})
# message("host_name " ${CMAKE_HOST_SYSTEM_NAME})
# message("toolchain " ${ANDROID_TOOLCHAIN})
# message("toolchain_root " ${ANDROID_TOOLCHAIN_ROOT})
# message("toolchain_name " ${ANDROID_TOOLCHAIN_NAME})

# set(CMAKE_ANDROID_ARCH_ABI armeabi-v7a)
# set(CMAKE_ANDROID_ARCH arm)
add_library(
    demo
    SHARED
    main.c
)

install(
    TARGETS demo
    DESTINATION D:/myprojects/ndkdemo/app/src/main/jniLibs/${ANDROID_ABI}
)
