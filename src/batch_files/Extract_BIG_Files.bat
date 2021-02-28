::batch file for extracting BIG files into psg 

:: set paths
set quickbms="C:\Users\benja\Programming\Python_Projects\Skate-3-Texture-Tools\src\quickbms\quickbms\quickbms_4gb_files.exe"
set extract_script="C:\Users\benja\Programming\Python_Projects\Skate-3-Texture-Tools\src\quickbms\EA Skate BMS Scripts\extract_big_skate3.bms"
set output_dir="C:\Users\benja\Programming\Python_Projects\Skate-3-Texture-Tools\src\Texture_Files\Original_PSG"
set BIG_files="C:\Users\benja\Programming\Python_Projects\Skate-3-Texture-Tools\src\Texture_Files\Original_BIG\"

:: extracts every '.big' in the dir 'BIG_FILES'into 'output_dir'
for /f %%a IN (%BIG_files%) do (%quickbms% -o %extract_script% %%a %output_dir%)
exit