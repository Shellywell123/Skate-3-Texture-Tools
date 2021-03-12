@ECHO OFF

:: set paths
for /f "delims== tokens=1,2,3,4,5,6,7,8,9,10,11" %%G in (paths.txt) do set %%G=%%H

:: dec 584 = hex 248
set PSG_OFFSET=584

:: dec 128 = hex 80
set DDS_OFFSET=128
set dds_temp_file="C:\Users\benja\Programming\Python_Projects\Skate-3-Texture-Tools\src\batch_files\temp_decoded_hex.bin"

Setlocal EnableDelayedExpansion
for /R %original_psg_files% %%f in (*.dds) do (
	set input_file=%%f
        echo !input_file!
	echo "certutil -f -decodeHex !input_file! !dds_temp_file! >nul"
	certutil -f -decodeHex !input_file! !dds_temp_file! >nul
        set contents=<%dds_temp_file%
	echo %dds_temp_file%
        echo !contents!
rem ~%DDS_OFFSET%!
	)

timeout 60