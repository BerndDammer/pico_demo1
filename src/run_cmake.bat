set P=d:\RaspberryPiPico\bin\cmake\bin
set PATH=%P%;%PATH%

rem set P=d:\RaspberryPiPico\bin\nmake
rem set PATH=%P%;%PATH%

set P=d:\RaspberryPiPico\bin\make
set PATH=%P%;%PATH%

rem set P=d:\RaspberryPiPico\bin\gcc\bin
rem set PATH=%P%;%PATH%

rem set P=d:\RaspberryPiPico\bin\gcc\arm-none-eabi\bin
rem set PATH=%P%;%PATH%

set P=d:\RaspberryPiPico
set PICO_SDK_PATH=%P%\pico-sdk

set PICO_TOOLCHAIN_PATH=d:\RaspberryPiPico\bin\gcc

rem set CMAKE_MAKE_PROGRAM=make

rem set
rem pause

cd ..

cmake -S src -B . -G "Eclipse CDT4 - Unix Makefiles" -D CMAKE_BUILD_TYPE=Debug
rem cmake -S src -B . 
pause


