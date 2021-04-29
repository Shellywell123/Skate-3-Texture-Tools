# How-To-Use
 Note: I use this for playing `BLES` format, if you want to use `BLUS` format you will need to edit `src/batch_files/Launch_Sate_3.bat`

<hr />

## How to import my textures

Note: when importing any modded texture into the game you are replacing the current texture, so I highly reccomend you back up a mod free version of your game before proceeding. You can either import the mods `A)` manually or `B)` via the batch scripts. 

## `A)` Manual import my modded textures:
### Step 1 - Downloads
 - download the texture files inside [this github repo](https://github.com/Shellywell123/Skate-3-Texture-Tools/tree/main/src/Texture_Files/Modded_PSG/data/content)
### Step 2 copy files
 - copy the downloaded texture files into the `PS3_GAME\USRDIR\data\content\` of your ROM 
### Step 3 clear cache
 - delete the preivous rpsc3 cache data located in `rpcs3\dev_hdd0\game\BLES00760_INSTALL` then you can play them in game! [the custom deck/grip is one of the stereo decks]

<hr />

## `B)` Script import my modded textures:

### Step 1 - Downloads
 - clone the repo
 
### Step 2 - set paths
 - each batch file uses paths relative to your own machine that need to be set when you first use them
 - all the paths can be set in `src/batch_files/paths.txt`
 - currently you have to manually move all your roms `.big` into a seperate location (`ORGINAL_BIG`) so that they can be extracted and replaced with file structure

### Step 3 - apply mods and you are done!
 - run `RUN.bat` and select 'batch apply mod files'
 - run `RUN.bat` and select 'launch skate 3'
 - you are now playing your modded skate 3!
  
<hr />

## How to make your own modded textures

### Step 1 - Downloads
 - clone the repo
 - download Noesis [docs](http://www.richwhitehouse.com/noesis/nms/index.php?content=userman)
 - dowload quickbms [docs](https://aluigi.altervista.org/papers/quickbms.txt) + GHFearscripts

### Step 2 - set paths
 - each batch file uses paths relative to your own machine that need to be set when you first use them
 - all the paths can be set in `src/batch_files/paths.txt`
 - currently you have to manually move all your roms `.big` into a seperate location (`ORGINAL_BIG`) so that they can be extracted and replaced with file structure
 
### Step 3 - copy/move your games big files
 - in order to mod RPCS3 skate 3 you will need to replace your big files with their extracted files. To do this move your big files into a folder externsl to your rom. 

### Step 4 - extract big files
 - if you paths are correctly set in `src/batch_files/paths.txt` you should be able to open `RUN.bat` and select the 'batch extract big files' option, which should extract your big files into there correct file structures. The file structures can then be automatically pasted back into your rom folder by running `RUN.bat`  and selecting the 'batch apply mod files' option. (your game should now be playable via `RUN.bat`  and selecting 'launch skate 3')
 - if you need help chossing which `big` files to replace with there file structure, see [texture-locations](https://github.com/Shellywell123/Skate-3-Texture-Tools/blob/main/docs/texture-locations.md)

### Step 5 - convert alll extracted textures into moddable dds format
 - - if you paths are correctly set in `src/batch_files/paths.txt` you should be able to open `RUN.bat` and select the 'batch convert psg files' option.

### Step 6 - modding texture files 
 - open a extracted dds file and mod it however you like making sure to save it in a differnt location with same nested paths
- if you need help chossing which `dds` files to mod, see [texture-locations](https://github.com/Shellywell123/Skate-3-Texture-Tools/blob/main/docs/texture-locations.md)
when exporting modded dds files check that the file dimensions match that of the original dds file
 - for deck, team logo graphics use compression DXT5/BC3 with generated minimaps
 - for tatto decals use compression DXT1/BC3 with generated minimaps

### Step 7 - convert modded dds to modded psg
 - currently involes python

### Step 8 - apply mods and you are done!
 - run `RUN.bat` and selecting the 'batch apply mod files' option
 - run `RUN.bat` and selecting 'launch skate 3'
 - you are now playing your modded skate 3!
