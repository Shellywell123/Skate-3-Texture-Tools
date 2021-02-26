@ECHO OFF
mode 80,8
:: batch file for applying my mod files into skate 3 rom dir

:: 1st set path variables for your machine
set rom_dir="E:\ROMs\Playstation 3\Skate 3"

:: 2nd copy over texture into rom dir
xcopy "..\Texture_Files\Modded_PSG" %rom_dir%\PS3_GAME\USRDIR\ /SY
exit
