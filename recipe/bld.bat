MKDIR build\windows
CD build\windows

cmake ^
    -G "NMake Makefiles" ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
    -DBUILD_SHARED_LIBS=yes ^
    ..\..

cmake --build . --config Release --target ALL_BUILD
cmake --build . --config Release --target ZERO_CHECK

copy libmetis\Release\metis.lib %LIBRARY_BIN%
copy programs\Release\cmpfillin.exe %LIBRARY_LIB%
copy programs\Release\gpmetis.exe %LIBRARY_LIB%
copy programs\Release\graphchk.exe %LIBRARY_LIB%
copy programs\Release\m2gmetis.exe %LIBRARY_LIB%
copy programs\Release\ndmetis.exe %LIBRARY_LIB%
copy programs\Release\mpmetis.exe %LIBRARY_LIB%
