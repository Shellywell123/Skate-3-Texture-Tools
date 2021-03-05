::batch file for extracting BIG files into psg 

:: set paths
for /f "delims== tokens=1,2,3,4,5,6,7,8,9,10,11" %%G in (paths.txt) do set %%G=%%H

:: extracts every '.big' in the dir 'BIG_FILES'into 'output_dir'
for /f %%a IN (%original_big_files%) do (%quickbms% -o %extract_script% %%a %original_psg_files:~1,-1%)
exit