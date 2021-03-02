@ECHO OFF
:: batch file for converting all psg files in a dir to dds using noesis cmdline mode
set Noesis="C:\Users\benja\Documents\Tools\Skate Texture Mod\Noesis\Noesis.exe"
set original_dds_files=C:\Users\benja\Programming\Python_Projects\Skate-3-Texture-Tools\src\Texture_Files\Original_DDS\
set original_psg_files=C:\Users\benja\Programming\Python_Projects\Skate-3-Texture-Tools\src\Texture_Files\Original_PSG\
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
		set output_file=%original_dds_files%!input_file:~96,-4!.dds
		rem echo input  !input_file!
		rem echo output !output_file!
		md !dir_to_make!
		%Noesis% ?cmode "!input_file!" "!output_file!"
		echo converted && echo.
	) else (
		echo skipped as file path contains 'model' && echo.
	)
)
