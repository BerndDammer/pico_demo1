set BASE=c:\pico
set P=%BASE%\bin\cmake\bin
set PATH=%P%;%PATH%

rem set P=%BASE%\bin\nmake
rem set PATH=%P%;%PATH%

set P=%BASE%\bin\make
set PATH=%P%;%PATH%

rem set P=%BASE%\bin\gcc\bin
rem set PATH=%P%;%PATH%

rem set P=%BASE%\bin\gcc\arm-none-eabi\bin
rem set PATH=%P%;%PATH%

set P=%BASE%
set PICO_SDK_PATH=%P%\pico-sdk

set PICO_TOOLCHAIN_PATH=%BASE%\bin\gcc

rem set CMAKE_MAKE_PROGRAM=make

rem set
rem pause

cd ..

cmake -S src -B . -G "Eclipse CDT4 - Unix Makefiles" -D CMAKE_BUILD_TYPE=Debug
rem cmake -S src -B . 
pause


