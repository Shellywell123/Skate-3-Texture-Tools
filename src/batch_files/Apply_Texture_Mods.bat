@ECHO OFF
mode 80,8
:: batch file for applying my mod files into skate 3 rom dir

:: 1st set path variables for your machine
for /f "delims== tokens=1,2,3,4,5,6,7,8,910,11" %%G in (paths.txt) do set %%G=%%H

:: 2nd copy over texture into rom dir
xcopy %modded_psg_files% %rom_dir%\PS3_GAME\USRDIR\ /SY
exit
