# My Tool-kit / Manual for skate 3 mods

Small project im working on to help making modding in RPCS3 Skate 3 easier. First off I want to give a big thanks to [GHFear's Youtube](https://www.youtube.com/watch?v=JG-TRIlTzpQ&ab_channel=GHFear) for the initial manual tutorial! Hope you enjoy this as much as I know I will.

### Current Progress
 - have successfully manually modded my own custom logo onto (RISE UP) griptape into the game on one deck (in game screenshot below).
 - created a batch file to save removing install data in rpcs3, which is required each time you launch modded skate 3

<p float="left">
  <img src="Images/screenshot.png" width="400" />
</p>

### Current Plan
 - make a program for easily edditting and importing moded textures into skate 3
 - potential griptape graphic editor
 - maybe use noesis commandine for batch processes

### Current Approach
 - 1st step is to unpack the big files into dir structures data, currently using quickbms by GHFear
 - 2nd step is to use Noesis batch processes to export all psg textures into dds format
 - 3rd step is to sort and identify textures by object
 - 4th use gimp to edit dds file and export as BC£/DXT5 with minimaps enabled (need to do multiple graphics as board has waear stages)
 - 5th move minimap data into psg file using hxd
 - 4th trial griptape logo using a board

### current queries
  - can noesis batch convert dds files back to psg
  - is createacharachter for proskaters and marquee for main player
  - can you recombine .big files to run in RPCS3 without having to delete hdd0/game/bles_install

<p float="left">
  <img src="Images/screenshot.png" width="400" />
</p>
