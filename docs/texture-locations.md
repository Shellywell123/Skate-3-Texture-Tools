# Texture-Locations
Documentation of skate 3 texture file locations within the orginal unextracted `big` files and there corresponding extracted file structures.


### Orginal `.big` files

```
data/
    ┣content/
        ┣big/
        |   ┣miscload.big (for skybox textures)
        |
        ┣createacharacter.big (for all edit skater textures)
        |
        ┣marquee.big (for all pro skaters and pedestrian textures)
```


### Extracted `.big` files

```
`data/`\
    ┣`content/
        ┣`createacharacter/` 
        |   ┣`texture/*` (for all edit skater textures)\
        |
        ┣`marquee/` \
        |   ┣`texture/*`(for all pro skaters and pedestrian textures)\
        |\
        ┣`world/`\
            ┣`models/*` (for skybox textures)
```

