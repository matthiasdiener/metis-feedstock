MKDIR build\windows
CD build\windows

cmake ..\.. ^
        -G %CMAKE_GENERATOR% ^
        -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
        -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
        -DBUILD_STATIC_LIBS=1 ^
        -DBUILD_SHARED_LIBS=1

ECHO VS files have been generated in build\windows

cmake --build . --config Release
