@ECHO OFF
mode 80,8
:: batch file for launch modded skate 3 in rpcs3

echo Welcome to Shellywell123's modded skate 3 launcher && echo.

:: 1st set path variables for your machine
set rpcs3_dir=C:\Users\benja\LaunchBox\Emulators\PS3
set rom_file="E:\ROMs\Playstation 3\Skate 3\PS3_GAME\USRDIR\EBOOT.BIN"

:: 2nd remove rpcs3 install data
del /Q %rpcs3_dir%\dev_hdd0\game\BLES00760_INSTALL
echo  - deleted RPCS3 install data

::3rd launch rom using rpcs3
echo  - Launching RPCS3 Skate 3
%rpcs3_dir%\rpcs3.exe %rom_file%
exit