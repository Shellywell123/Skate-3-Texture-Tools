@ECHO OFF

:: set all your paths for your machine

:: path slice amount
(echo "%original_RX2_files%" & echo.) | findstr /O . | more +1 | (set /P RESULT= & call exit /B %%RESULT%%)
set /A STRLENGTH=%ERRORLEVEL%-5-2
::echo string "%MYSTRING%" length = %STRLENGTH%

Setlocal EnableDelayedExpansion
for /R %original_RX2_files% %%f in (*.rx2) do (
	set input_file=%%f
	set dir_to_make_base=%%~dpf
	set dir_to_make=%original_TGA_files%!dir_to_make_base:~%STRLENGTH%!
	rem exclude filepaths containing set strings
	echo  - !input_file:~%STRLENGTH%!
	echo !input_file!|findstr /C:"aipaths" /C:"model"  >nul
	if errorlevel 1 (
		set output_file=%original_TGA_files:~,-1%!input_file:~%STRLENGTH%,-4!.dds
		rem echo input  !input_file!
		rem echo output !output_file!
		md !dir_to_make!
		%Noesis% ?cmode "!input_file!" "!output_file!"
		echo converted && echo.
	) else (
		echo skipped as file path contains an exclusion string && echo.
	)
)
