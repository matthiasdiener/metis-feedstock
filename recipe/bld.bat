MKDIR build\windows
CD build\windows
cmake -DCMAKE_CONFIGURATION_TYPES="Release" -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ..\.. "%CMAKE_GENERATOR%"
ECHO VS files have been generated in build\windows
CD ..\..\
