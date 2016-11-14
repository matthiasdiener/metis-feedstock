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

dir programs

dir libmetis

dir include

move libmetis/libmetis.a %LIBRARY_BIN%
move programs/cmpfillin %LIBRARY_LIB%
move programs/gpmetis %LIBRARY_LIB%
move programs/graphchk %LIBRARY_LIB%
move programs/m2gmetis %LIBRARY_LIB%
move programs/ndmetis %LIBRARY_LIB%
move programs/mpmetis %LIBRARY_LIB%
move include/metis.h %LIBRARY_INC%/
move include/gklib_tls.h %LIBRARY_INC%/