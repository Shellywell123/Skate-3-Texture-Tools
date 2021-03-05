@ECHO OFF
mode 80,8
:: batch file for launch modded skate 3 in rpcs3

echo Welcome to Shellywell123's modded skate 3 launcher && echo.

:: 1st set path variables for your machine
for /f "delims== tokens=1,2,3,4,5,6,7,8,9,10,11" %%G in (paths.txt) do set %%G=%%H

:: 2nd remove rpcs3 install data
del /Q %rpcs3_dir:~1,-1%\dev_hdd0\game\BLES00760_INSTALL
echo  - deleted RPCS3 install data

::3rd launch rom using rpcs3
echo  - Launching RPCS3 Skate 3
%rpcs3_dir:~1,-1%\rpcs3.exe %rom_file%
exit