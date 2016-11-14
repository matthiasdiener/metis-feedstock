MKDIR build\windows
CD build\windows

cmake ^
    -G "%CMAKE_GENERATOR%" ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
    -DBUILD_STATIC_LIBS=1 ^
    -DBUILD_SHARED_LIBS=1 ^
    ..\..

ECHO VS files have been generated in build\windows

cmake --build . --config Release --target ALL_BUILD
cmake --build . --config Release --target ZERO_CHECK

move libmetis\Release\metis.lib %LIBRARY_BIN%
move programs\Release\cmpfillin.exe %LIBRARY_LIB%
move programs\Release\gpmetis.exe %LIBRARY_LIB%
move programs\Release\graphchk.exe %LIBRARY_LIB%
move programs\Release\m2gmetis.exe %LIBRARY_LIB%
move programs\Release\ndmetis.exe %LIBRARY_LIB%
move programs\Release\mpmetis.exe %LIBRARY_LIB%
