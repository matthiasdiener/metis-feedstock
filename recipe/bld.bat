MKDIR build\windows
CD build\windows

cmake ..\.. ^
        -G "%CMAKE_GENERATOR%" ^
        -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
        -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
        -DBUILD_STATIC_LIBS=1 ^
        -DBUILD_SHARED_LIBS=1

ECHO VS files have been generated in build\windows

dir

cmake --build . --config Release --target ALL_BUILD
cmake --build . --config Release --target ZERO_CHECK

dir

dir programs\Release

dir libmetis\Release

dir include\Release

dir ..\..

move libmetis\Release\libmetis.a %LIBRARY_BIN%
move programs\Release\cmpfillin %LIBRARY_LIB%
move programs\Release\gpmetis %LIBRARY_LIB%
move programs\Release\graphchk %LIBRARY_LIB%
move programs\Release\m2gmetis %LIBRARY_LIB%
move programs\Release\ndmetis %LIBRARY_LIB%
move programs\Release\mpmetis %LIBRARY_LIB%
move include\Release\metis.h %LIBRARY_INC%
move include\Release\gklib_tls.h %LIBRARY_INC%