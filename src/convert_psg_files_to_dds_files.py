import os

noesis = u"/mnt/c/Users/benja/Documents/Tools/Skate Texture Mod/Noesis/Noesis.exe"
PSG_dir = r"/mnt/c/Users/benja/Programming/Python_Projects/Skate-3-Texture-Tools/src/Texture_Files/Original_PSG"
DDS_dir = r"/mnt/c/Users/benja/Programming/Python_Projects/Skate-3-Texture-Tools/src/Texture_Files/Original_DDS"

noesis_win="C:\\Users\\benja\\Documents\\Tools\\Skate Texture Mod\\Noesis\\Noesis.exe"
PSG_dir_win="C:\\Users\\benja\\Programming\\Python_Projects\\Skate-3-Texture-Tools\\src\\Texture_Files\\Original_PSG"
DDS_dir_win="C:\\Users\\benja\\Programming\\Python_Projects\\Skate-3-Texture-Tools\\src\\Texture_Files\\Original_DDS"

def make_dir(dir_):
    """
    makes a dir if not already existing
    """
    if not os.path.exists(dir_):
        os.makedirs(dir_)

rootdir = PSG_dir
for dirpath, dirs, files in os.walk(rootdir):  
    for filename in files:
        if filename.split('.')[-1] == 'psg':

            if 'model' not in dirpath:
                ps3_file_struct=dirpath.split('Original_PSG/')[1]
                ps3_file_struct_win=ps3_file_struct.replace('/','\\')           

                filename_PSG = filename
                filename_DDS = filename.split('.psg')[0]+'.dds'

                input_psg  = PSG_dir_win+'\\'+ps3_file_struct_win+'\\'+filename_PSG
                output_dds = DDS_dir_win+'\\'+ps3_file_struct_win+'\\'+filename_DDS

                print(input_psg)        
                print(output_dds)
                batch_string='mode 80,8\n"{}" ?cmode "{}" "{}"'.format(noesis_win,input_psg,output_dds)

                with open('temp.bat', 'w') as f:
                    f.write(batch_string)

                # make ps3 dir structure in DDS folder
                make_dir(DDS_dir+'/'+ps3_file_struct)
                os.system('"/mnt/c/Windows/explorer.exe" "temp.bat"')