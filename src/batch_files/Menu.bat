@ECHO off
echo. && echo Skate-3-Texture-Tools

:start
ECHO.
ECHO  1 - Batch extract BIG files to PSG
ECHO  2 - Batch convert PSG files to DDS
ECHO  3 - Batch convert PSG+DDS files to PSG with correct offsets
ECHO  4 - Batch Apply PSG Texture Mods
ECHO  5 - Batch Revert Texture Mods
ECHO  6 - Launch Modded/Unmodded Skate 3
echo.

set choice=
set /p choice="Select option by number value: "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto ExtractBIG
if '%choice%'=='2' goto ConvertPSG
if '%choice%'=='3' goto ConvertDDS
if '%choice%'=='4' goto ApplyMods
if '%choice%'=='5' goto RevertMods
if '%choice%'=='6' goto LaunchSkate3

ECHO "%choice%" is not valid, try again
ECHO.
goto start

REM start of functions
:ExtractBIG
Extract_BIG_Files.bat
goto start

:ConvertPSG
Convert_PSGto_DDS.bat
goto start

:ConvertDDS
Convert_DDSs_to_PSGs_py.bat
goto start

:ApplyMods
Apply_Texture_Mods.bat
goto start

:RevertMods
Revert_Texture_Mods.bat
goto start

:LaunchSkate3
Launch_Skate_3.bat
goto start

:end
pause