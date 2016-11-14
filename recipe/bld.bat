MKDIR build\windows
CD build\windows
cmake -DCMAKE_CONFIGURATION_TYPES="Release" -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ..\..
ECHO VS files have been generated in build\windows
cmake --build .
