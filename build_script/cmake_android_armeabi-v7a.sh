#!/bin/sh
cd `dirname $0`/..

mkdir -p build_android_armeabi-v7a
cd build_android_armeabi-v7a

cmake \
-DANDROID_ABI=armeabi-v7a \
-DANDROID_NATIVE_API_LEVEL=android-14 \
-DANDROID_SDK=/Users/admin/Library/Android/sdk \
-DANDROID_NDK=/Users/admin/Library/Android/sdk/ndk-bundle \
-DANT_EXECUTABLE=/Users/admin/Documents/apache-ant/bin/ant \
-DJAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home \
-DJAVA_JVM_LIBRARY=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home/include/jni.h \
-DJAVA_INCLUDE_PATH=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home/include \
-DBUILD_FAT_JAVA_LIB=ON \
-DBUILD_SHARED_LIBS=OFF \
-DCMAKE_TOOLCHAIN_FILE=../android/android.toolchain.cmake $@ ../..

# install ant (http://ant.apache.org/bindownload.cgi)
# install brew (http://brew.sh/)
# install cmake - run: brew install cmake
# copy this file in../opencv-master/platforms/scripts
# cd ../opencv-master/platforms
# run cmake_android_armeabi-v7a.sh
# if Permission denied - run: chmod u+x cmake_android_armeabi-v7a.sh 
# cd ../opencv-master/platforms/build_android_armeabi-v7a
# run: make -j8