MKDIR build\windows
CD build\windows

cmake ^
    -G "NMake Makefiles"                     ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%  ^
    -DCMAKE_INSTALL_BINDIR=%LIBRARY_BIN%     ^
    -DCMAKE_INSTALL_LIBDIR=%LIBRARY_LIB%     ^
    -DCMAKE_INSTALL_INCLUDEDIR=%LIBRARY_INC% ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX%     ^
    -DCMAKE_BUILD_TYPE=Release               ^
    ..\..

cmake --build . --config Release

dir
dir libmetis
dir programs
dir include
dir Release

copy libmetis\metis.lib %LIBRARY_BIN%
copy programs\cmpfillin.exe %LIBRARY_LIB%
copy programs\gpmetis.exe %LIBRARY_LIB%
copy programs\graphchk.exe %LIBRARY_LIB%
copy programs\m2gmetis.exe %LIBRARY_LIB%
copy programs\ndmetis.exe %LIBRARY_LIB%
copy programs\mpmetis.exe %LIBRARY_LIB%
