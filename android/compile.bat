cmake -B build -G Ninja --toolchain %ANDROID_NDK%\build\cmake\android.toolchain.cmake -DANDROID_ABI=armeabi-v7a
cmake --build build
cmake --install build

cmake -B build -G Ninja --toolchain %ANDROID_NDK%\build\cmake\android.toolchain.cmake -DANDROID_ABI=arm64-v8a
cmake --build build
cmake --install build
