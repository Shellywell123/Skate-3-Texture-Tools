:: batch script for making a modded psg from a modded dds ad original psg
@ECHO OFF
:: set paths
for /f "delims== tokens=1,2,3,4,5,6,7,8,910,11,12,13" %%G in (paths.txt) do set %%G=%%H

:: dec 584 = hex 248
set PSG_OFFSET = 584

:: dec 128 = hex 80
set DDS_OFFSET = 128

:: for every modded dds file
Setlocal EnableDelayedExpansion
for /R %modded_dds_files% %%f in (*.dds) do (
	set input_file=%%f
        echo !input_file!
	type !input_file!
        set contents=<!input_file!
        echo !contents:~%DDS_OFFSET!
	)
timeout 60
:: check if there is a correspoinding orginal psg

:: check image sizes are equal

:: write combined slice contents to new file