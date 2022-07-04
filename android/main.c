#ifdef _WIN32
#define EXPORT_API __declspec(dllexport)
#else
#define EXPORT_API
#endif

#include "jni.h"

EXPORT_API int add(int a, int b)
{
    return a + b;
}

JNIEXPORT int JNICALL Java_me_izzp_demo_Native_getVersion(
    JNIEnv *env,
    jclass clz)
{
    return 123;
}