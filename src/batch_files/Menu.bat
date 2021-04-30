@ECHO off
:start
echo ############################################ && echo # Skate-3-Texture-Tools - by Shellywell123 # && echo ############################################

ECHO.
ECHO RPCS3 - mods
ECHO  0 - Set paths for your machine
ECHO  1 - Batch Extract BIG files to PSG
ECHO  2 - Batch Convert PSG files to DDS
ECHO  3 - Batch Convert Modded DDS files to PSG using the meta data of the Orginal PSG.
ECHO  4 - Batch Apply PSG Texture Mods
ECHO  5 - Batch Revert Texture Mods
ECHO  6 - Launch Modded/Unmodded Skate 3

ECHO.
ECHO XBOX - mods
ECHO  7 - Batch Convert RX2 files to TGA

ECHO.
ECHO  8 - Exit
echo.

set choice=
set /p choice="Select option by number value: "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='0' goto SetPaths
if '%choice%'=='1' goto ExtractBIG
if '%choice%'=='2' goto ConvertPSG
if '%choice%'=='3' goto ConvertDDS
if '%choice%'=='4' goto ApplyMods
if '%choice%'=='5' goto RevertMods
if '%choice%'=='6' goto LaunchSkate3
if '%choice%'=='7' goto ConvertRX2
if '%choice%'=='8' goto Quit

ECHO "%choice%" is not valid, try again
ECHO.
goto start

REM start of functions

:SetPaths
notepad "paths.txt"
echo.
goto start

:ExtractBIG
start cmd /c "Extract_BIG_Files.bat"
echo.
goto start

:ConvertPSG
start cmd /c "Convert_PSGs_to_DDSs.bat"
echo.
goto start

:ConvertDDS
start cmd /c "Convert_DDSs_to_PSGs_py.bat"
echo.
goto start

:ApplyMods
start cmd /c "Apply_Texture_Mods.bat"
echo.
goto start

:RevertMods
start cmd /c "Revert_Texture_Mods.bat"
echo.
goto start

:LaunchSkate3
start cmd /c "Launch_Skate_3.bat"
echo.
goto start

:ConvertRX2
start cmd /c "Convert_RX2s_to_TGAs.bat"
echo.
goto start

:Quit
exit

:end
pause