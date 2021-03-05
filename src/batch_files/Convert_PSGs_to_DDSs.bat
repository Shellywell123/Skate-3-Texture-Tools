@ECHO OFF
:: batch file for converting all psg files in a dir to dds using noesis cmdline mode
for /f "delims== tokens=1,2,3,4,5,6,7,8,9,10,11" %%G in (paths.txt) do set %%G=%%H

:: 96 chosen as a temp char slicing solution until I split by substring
Setlocal EnableDelayedExpansion
for /R %original_psg_files% %%f in (*.psg) do (
	set input_file=%%f
	set dir_to_make_base=%%~dpf
	set dir_to_make=%original_dds_files%!dir_to_make_base:~96!
	rem check if 'model' in filepath
	echo  - !input_file:~96!
	echo !input_file!|FindStr /i "model" >nul
	if errorlevel 1 (
		set output_file=%original_dds_files:~,-1%\!input_file:~96,-4!.dds
		rem echo input  !input_file!
		rem echo output !output_file!
		md !dir_to_make!
		%Noesis% ?cmode "!input_file!" "!output_file!"
		echo converted && echo.
	) else (
		echo skipped as file path contains 'model' && echo.
	)
)
