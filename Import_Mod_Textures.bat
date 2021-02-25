@ECHO OFF
mode 80,8
:: batch file for importing my mod files into skate 3 rom dir

:: 1st set path variables for your machine
set rom_dir="E:\ROMs\Playstation 3\Skate 3"

:: 2nd copy over texture into rom dir
xcopy Modded_Game_Files %rom_dir%\PS3_GAME\USRDIR\ /DSHYC
exit