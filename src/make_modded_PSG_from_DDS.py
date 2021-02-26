# this will probably end up being converted to a batch script

import os

def make_dir(dir_):
    """
    makes a dir if not already existing
    """
    if not os.path.exists(dir_):
        os.makedirs(dir_)

def DDS_data_into_PSG(PSG_ORGINAL,DDS_MOD,PSG_MOD):
    """
    takes modded image data from dds file and puts it into the psg
    using the correct file offsets
    """
    PSG_OFFSET = 248#584
    DDS_OFFSET = 80#128

    # to treat the above as hex
    PSG_OFFSET = int(str(PSG_OFFSET), 16)
    DDS_OFFSET = int(str(DDS_OFFSET), 16)

    with open(PSG_ORGINAL, "rb") as psg_in:
        data = bytearray(psg_in.read())

    with open(DDS_MOD    , "rb") as dds_in:
        img = bytearray(dds_in.read())

    # check conent sizes
    print("    - Size of PSG-IMG from PSG_OFFSET", hex(len(data[PSG_OFFSET:])))
    print("    - Size of DDS_IMG from DDS_OFFSET", hex(len(img[DDS_OFFSET :])))
    assert len(data[PSG_OFFSET:]) == len(img[DDS_OFFSET:])

    data[PSG_OFFSET:] = img[DDS_OFFSET:]

    make_dir(os.path.split(PSG_MOD)[0])
    with open(PSG_MOD, "wb") as psg_out:
        psg_out.write(data)

if __name__ == "__main__":
    print('#'*30,'\nSkate-3-Texture-Tool\n','#'*30)

    rootdir = 'gimp_files'
    for dirpath, dirs, files in os.walk(rootdir):  
        for filename in files:
            if filename.split('.')[-1] == 'dds':
                DDS_MOD = os.path.join(dirpath,filename)
               # print(fname)

                filename_to_be_modded = DDS_MOD[len(rootdir)+1:-4]
                PSG_ORGINAL = 'Unmodded_Game_Files/'+filename_to_be_modded+'.psg'
                PSG_MOD     = 'Modded_Game_Files/'+filename_to_be_modded+'.psg'
               # print(filename_to_be_modded)

                if os.path.isfile(PSG_ORGINAL):
                    print('\nMOD TO BE IMPLEMENTED')
                    print(' - '+PSG_ORGINAL)
                    print(' - '+DDS_MOD)

                    ############################
                    # once both modded-dds and original-psg are found
                    # make new mod file from psg-dds merge
                    DDS_data_into_PSG(PSG_ORGINAL,DDS_MOD,PSG_MOD)
                    print(' - MOD FILE MADE')
                    print('    - '+PSG_MOD)
                    ############################

                else:
                    #if DDS relative PSG ver not found
                    PSG_ORGINAL = None
                    PSG_MOD = None


        #     PSG_ORGINAL = file           

        #     print(PSG_ORGINAL)
        #     print(DDS_MOD)