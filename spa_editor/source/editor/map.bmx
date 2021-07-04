Function InitMap()
    levelCount = 8

    For i:Int = 0 To 1000 - 1
        map_width[i] = 20
        map_height[i] = 14
        worldType[i] = 1
    Next

LoadResources()
LoadMap(packsDir+"Easy\demopack.spk")
'DebugLog("Size:"+Int(FileSize(packsDir+"Easy\demopack.spk")))
DebugLog(Rootdir+"config\worlds\w"+worldtype[currLv]+".cfg")
LoadWorldConfig(Rootdir+"config\worlds\w"+worldtype[currLv]+".cfg")
LoadWorldResources()
End Function

Function DrawMap()
   If img_background Then DrawImage img_background, 0, 0

   For x=0 To map_width[currLv]-1
      For y=0 To map_height[currLv]-1

         Select map(currLv, x, y)
            Case 0'NONE
            Case 1
               If img_block Then DrawImage(img_block,x*tsize, y*tsize)
            Case 2
               If img_diagblock_right_down Then DrawImage(img_diagblock_right_down,x*tsize, y*tsize)
            Case 3
               If img_diagblock_right_up Then DrawImage(img_diagblock_right_up,x*tsize, y*tsize)
            Case 4
               If img_diagblock_left_down Then DrawImage(img_diagblock_left_down,x*tsize, y*tsize)
            Case 5
               If img_diagblock_left_up Then DrawImage(img_diagblock_left_up,x*tsize, y*tsize)
            Default
               DrawText("T:"+Int(map(currLv, x, y)),x*tsize-8, y*tsize-17)
               'DebugLog("Tile:"+map(currLv, x, y))
         End Select

         Select map2(currLv, x, y)
            Case 0'NONE
            Case 5
               If img_hero Then DrawImage(img_hero, x*tsize-8, y*tsize-17)
            Case 6
               If img_monster_red Then DrawImage(img_monster_red, x*tsize-8, y*tsize-17)
            Case 7
               If img_monster_red Then DrawImage(img_monster_red, x*tsize-8, y*tsize-17)
            Case 8
               If img_monster_red Then DrawImage(img_monster_red, x*tsize-8, y*tsize-17)
            Case 9
               If img_monster_red Then DrawImage(img_monster_red, x*tsize-8, y*tsize-17)
            Case 10
               If img_monster_green Then DrawImage(img_monster_green, x*tsize-8, y*tsize-17)
            Case 11
               If img_monster_green Then DrawImage(img_monster_green, x*tsize-8, y*tsize-17)
            Case 12
               If img_monster_green2 Then DrawImage(img_monster_green2, x*tsize-8, y*tsize-17)
            Case 13
               If img_monster_green2 Then DrawImage(img_monster_green2, x*tsize-8, y*tsize-17)
            Case 14
               If img_monster_dog Then DrawImage(img_monster_dog, x*tsize-8, y*tsize-17)
            Case 15
               If img_monster_dog Then DrawImage(img_monster_dog, x*tsize-8, y*tsize-17)
            Case 16
               If img_monster_dog Then DrawImage(img_monster_dog, x*tsize-8, y*tsize-17)
            Case 17
               If img_monster_dog Then DrawImage(img_monster_dog, x*tsize-8, y*tsize-17)
            Case 18
               If img_monster_bird Then DrawImage(img_monster_bird, x*tsize-8, y*tsize-17)
            Case 19
               If img_monster_bird Then DrawImage(img_monster_bird, x*tsize-8, y*tsize-17)
            Case 20
               If img_monster_tusk Then DrawImage(img_monster_tusk, x*tsize-8, y*tsize-17)
            Case 21
               If img_monster_tusk Then DrawImage(img_monster_tusk, x*tsize-8, y*tsize-17)
            Case 22
               If img_monster_tornado Then DrawImage(img_monster_tornado, x*tsize-8, y*tsize-17)
            Case 23
               If img_monster_tornado Then DrawImage(img_monster_tornado, x*tsize-8, y*tsize-17)
            Case 24
               If img_monster_bomber Then DrawImage(img_monster_bomber, x*tsize-8, y*tsize-17)
            Case 25
               If img_monster_bomber Then DrawImage(img_monster_bomber, x*tsize-8, y*tsize-17)
            Case 26
               If img_monster_bomber Then DrawImage(img_monster_bomber, x*tsize-8, y*tsize-17)
            Case 27
               If img_monster_bomber Then DrawImage(img_monster_bomber, x*tsize-8, y*tsize-17)
            Case 28
               If img_monster_red Then DrawImage(img_monster_red, x*tsize-8, y*tsize-17)
            Case 29
               If img_monster_red Then DrawImage(img_monster_red, x*tsize-8, y*tsize-17)
            Case 30
               If img_monster_boss_bag Then DrawImage(img_monster_boss_bag, x*tsize-8, y*tsize-17)
            Case 33
               If img_monster_boss_teapot Then DrawImage(img_monster_boss_teapot, x*tsize-8, y*tsize-17)
            Case 35
               If img_monster_boss_balloon Then DrawImage(img_monster_boss_balloon, x*tsize-8, y*tsize-17)
            Case 37
               If img_monster_boss_mask Then DrawImage(img_monster_boss_mask, x*tsize-8, y*tsize-17)
            Case 38
               If img_monster_dog Then DrawImage(img_monster_dog, x*tsize-8, y*tsize-17)
            Case 39
               If img_monster_dog Then DrawImage(img_monster_dog, x*tsize-8, y*tsize-17)
            Case 40
               If img_monster_bomber Then DrawImage(img_monster_bomber, x*tsize-8, y*tsize-17)
            Case 41
               If img_monster_bomber Then DrawImage(img_monster_bomber, x*tsize-8, y*tsize-17)
            Case 42
               If img_monster_bomber Then DrawImage(img_monster_bomber, x*tsize-8, y*tsize-17)
            Case 43
               If img_monster_bomber Then DrawImage(img_monster_bomber, x*tsize-8, y*tsize-17)
            Case 44
               If img_monster_ballbot Then DrawImage(img_monster_ballbot, x*tsize-8, y*tsize-17)
            Case 45
               If img_monster_ballbot Then DrawImage(img_monster_ballbot, x*tsize-8, y*tsize-17)
            Case 46
               If img_monster_ballbot Then DrawImage(img_monster_ballbot, x*tsize-8, y*tsize-17)
            Case 47
               If img_monster_ballbot Then DrawImage(img_monster_ballbot, x*tsize-8, y*tsize-17)
            Case 48
               If img_monster_cat Then DrawImage(img_monster_cat, x*tsize-8, y*tsize-17)
            Case 49
               If img_monster_cat Then DrawImage(img_monster_cat, x*tsize-8, y*tsize-17)
            Case 50
               If img_monster_cat Then DrawImage(img_monster_cat, x*tsize-8, y*tsize-17)
            Case 51
               If img_monster_cat Then DrawImage(img_monster_cat, x*tsize-8, y*tsize-17)
            Case 52
               If img_monster_cat Then DrawImage(img_monster_cat, x*tsize-8, y*tsize-17)
            Case 53
               If img_monster_cat Then DrawImage(img_monster_cat, x*tsize-8, y*tsize-17)
            Case 54
               If img_monster_boss_hen Then DrawImage(img_monster_boss_hen, x*tsize-8, y*tsize-17)
            Case 55
               If img_monster_boss_hen Then DrawImage(img_monster_boss_hen, x*tsize-8, y*tsize-17)

            Default
               DrawText("O:"+Int(map2(currLv, x, y)),x*tsize-8, y*tsize-17)
               'DebugLog("Object:"+map2(currLv, x, y))
         End Select

         Select map3(currLv, x, y)
            Case 0 'NONE
            Case 1
               If img_kick Then DrawImage(img_kick, x*tsize-8, y*tsize-17)
            Default
               DrawText("L3:"+Int(map3(currLv, x, y)),x*tsize-8, y*tsize-17)
               'DebugLog("Object:"+map2(currLv, x, y))
         End Select
      Next
   Next

   DrawRect (((MouseX())/tsize)*tsize),(((MouseY())/tsize)*tsize),tsize+2,tsize+2
   DrawText "X: "+Int((MouseX())/tsize), 0, 50
   DrawText "Y: "+Int((MouseY())/tsize), 0, 60

   If KeyHit(KEY_W) Then 
      If worldType[currLv] = 4 Then worldType[currLv] = -1
      worldtype[currLv] = worldtype[currLv] + 1 'Forwards worldtype
      LoadWorldConfig(Rootdir+"config\worlds\w"+worldtype[currLv]+".cfg")
      LoadWorldResources()
      Cls
      DebugLog("Worldtype: "+worldtype[currLv])
   EndIf

   If KeyHit(KEY_D) Then
      If worldType[currLv] = 0 Then worldType[currLv] = 5
      worldtype[currLv] = worldtype[currLv] - 1 'Backwards worldtypes
      LoadWorldConfig(Rootdir+"config\worlds\w"+worldtype[currLv]+".cfg")
      LoadWorldResources()
      Cls
      DebugLog("Worldtype: "+worldtype[currLv])
   EndIf

   DrawText "Worldtype:"+worldtype[currLv],0,20

   Select editmode
      Case 0'Tilemode
         Select tiletype
            Case 1
               DrawText "Tiletype: Block", 0, 0
            Case 2
               DrawText "Tiletype: Block2", 0, 0
            Case 3
               DrawText "Tiletype: Block3", 0, 0
            Case 4
               DrawText "Tiletype: Block4", 0, 0
            Case 5
               DrawText "Tiletype: Block5", 0, 0
            Default
               DrawText "Tiletype: "+tiletype, 0, 0
         End Select

      Case 1'Objectmode
         Select tiletype
            Case 1
               DrawText "ObjectType: Hero", 0, 0
            Case 2
               DrawText "ObjectType: Boss Mask", 0, 0
            Case 3
               DrawText "ObjectType: Boss Bag", 0, 0
            Case 4
               DrawText "ObjectType: Boss Teapot", 0, 0
            Case 5
               DrawText "ObjectType: Boss Balloon", 0, 0
            Case 6
               DrawText "ObjectType: Boss Hen1", 0, 0
            Case 7
               DrawText "ObjectType: Boss Hen2", 0, 0
            Case 8
               DrawText "ObjectType: Red Monster1", 0, 0
            Case 9
               DrawText "ObjectType: Red Monster2", 0, 0
            Case 10
               DrawText "ObjectType: Red Monster3", 0, 0
            Case 11
               DrawText "ObjectType: Red Monster4", 0, 0
            Case 12
               DrawText "ObjectType: Red Monster5", 0, 0
            Case 13
               DrawText "ObjectType: Red Monster6", 0, 0
            Case 14
               DrawText "ObjectType: Green Monster1", 0, 0
            Case 15
               DrawText "ObjectType: Green Monster2", 0, 0
            Case 16
               DrawText "ObjectType: Green Monster3", 0, 0
            Case 17
               DrawText "ObjectType: Green Monster4", 0, 0
            Case 18
               DrawText "ObjectType: Dog Monster1", 0, 0
            Case 19
               DrawText "ObjectType: Dog Monster2", 0, 0
            Case 20
               DrawText "ObjectType: Dog Monster3", 0, 0
            Case 21
               DrawText "ObjectType: Dog Monster4", 0, 0
            Case 22
               DrawText "ObjectType: Dog Monster5", 0, 0
            Case 23
               DrawText "ObjectType: Dog Monster6", 0, 0
            Case 24
               DrawText "ObjectType: Bird Monster1", 0, 0
            Case 25
               DrawText "ObjectType: Bird Monster2", 0, 0
            Case 26
               DrawText "ObjectType: Tusk Monster1", 0, 0
            Case 27
               DrawText "ObjectType: Tusk Monster2", 0, 0
            Case 28
               DrawText "ObjectType: Tornado Monster1", 0, 0
            Case 29
               DrawText "ObjectType: Tornado Monster2", 0, 0
            Case 30
               DrawText "ObjectType: Bomber Monster1", 0, 0
            Case 31
               DrawText "ObjectType: Bomber Monster2", 0, 0
            Case 32
               DrawText "ObjectType: Bomber Monster3", 0, 0
            Case 33
               DrawText "ObjectType: Bomber Monster4", 0, 0
            Case 34
               DrawText "ObjectType: Bomber Monster5", 0, 0
            Case 35
               DrawText "ObjectType: Bomber Monster6", 0, 0
            Case 36
               DrawText "ObjectType: Bomber Monster7", 0, 0
            Case 37
               DrawText "ObjectType: Bomber Monster8", 0, 0
            Case 38
               DrawText "ObjectType: Ballbot Monster1", 0, 0
            Case 39
               DrawText "ObjectType: Ballbot Monster2", 0, 0
            Case 40
               DrawText "ObjectType: Ballbot Monster3", 0, 0
            Case 41
               DrawText "ObjectType: Ballbot Monster4", 0, 0
            Case 42
               DrawText "ObjectType: Cat Monster1", 0, 0
            Case 43
               DrawText "ObjectType: Cat Monster2", 0, 0
            Case 44
               DrawText "ObjectType: Cat Monster3", 0, 0
            Case 45
               DrawText "ObjectType: Cat Monster4", 0, 0
            Case 46
               DrawText "ObjectType: Cat Monster5", 0, 0
            Case 47
               DrawText "ObjectType: Cat Monster6", 0, 0
            Default
               DrawText "ObjectType: "+tiletype, 0, 0
         End Select

      Case 2'Layer3mode
         Select tiletype
            Case 1
               DrawText "ObjectTypeL3: Kick", 0, 0
            Default
               DrawText "ObjectTypeL3: "+tiletype, 0, 0
         End Select
   End Select
End Function

Function UpdateMap()
   'control editmode
   If editmode=3 Then editmode=0
   If editmode=-1 Then editmode=2

   If currLv=-1 Then currLv = LevelCount
   If currLv=1000 Then currLv = 0

   'control worldtype
   If worldtype[currLv]=-1 Then worldtype[currLv]=0

   Select editmode
      Case 0'Tilemode
         If tiletype=0 Or tiletype=-1 Then tiletype=4
         If tiletype=5 Then tiletype=1
      Case 1'Objectmode
         If tiletype=0 Or tiletype=-1 Then tiletype=47
         If tiletype=48 Then tiletype=1
      Case 1'Layer3mode
         If tiletype=0 Or tiletype=-1 Then tiletype=1
         If tiletype=2 Then tiletype=0
   End Select

   If KeyHit(KEY_0) Then
      tiletype=1
      editmode=editmode+1
   EndIf

   If KeyHit(KEY_1) Then tiletype=tiletype+1
   If KeyHit(KEY_2) Then tiletype=tiletype-1

   If KeyHit(KEY_N) Then currLv=currLv+1
   If KeyHit(KEY_P) Then currLv=currLv-1

   'Map Data
   'Saving Map Data
   If KeyHit(KEY_S) Then SaveMap(packsDir+"Easy\demopack.spk")
   'Loading Map Data
   If KeyHit(KEY_L) Then LoadMap(packsDir+"Easy\demopack.spk")

   'place tile
   If MouseDown(MOUSE_LEFT) Then
      Select editmode
         Case 0'Tilemode
            Select tiletype
               Case 1
                   DebugLog "Placed Tile: Block X:"+Int((MouseX())/tsize)+" Y:"+Int((MouseY())/tsize)
                   map(currLv, (MouseX())/tsize, (MouseY())/tsize) = 1
               Case 2
                   DebugLog "Placed Tile: Block2 X:"+Int((MouseX())/tsize)+" Y:"+Int((MouseY())/tsize)
                   map(currLv, (MouseX())/tsize, (MouseY())/tsize) = 2
               Case 3
                   DebugLog "Placed Tile: Block3 X:"+Int((MouseX())/tsize)+" Y:"+Int((MouseY())/tsize)
                   map(currLv, (MouseX())/tsize, (MouseY())/tsize) = 3
               Case 4
                   DebugLog "Placed Tile: Block4 X:"+Int((MouseX())/tsize)+" Y:"+Int((MouseY())/tsize)
                   map(currLv, (MouseX())/tsize, (MouseY())/tsize) = 4
               Case 5
                   DebugLog "Placed Tile: Block5 X:"+Int((MouseX())/tsize)+" Y:"+Int((MouseY())/tsize)
                   map(currLv, (MouseX())/tsize, (MouseY())/tsize) = 5
            End Select

         Case 1'Objectmode
            Select tiletype
               Case 1
                  DebugLog "Placed Object: Hero"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 5
               Case 2
                  DebugLog "Placed Object: Boss Mask"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 37
               Case 3
                  DebugLog "Placed Object: Boss Bag"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 31
               Case 4
                  DebugLog "Placed Object: Boss Teapot"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 33
               Case 5
                  DebugLog "Placed Object: Boss Balloon"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 35
               Case 6
                  DebugLog "Placed Object: Boss Hen1"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 54
               Case 7
                  DebugLog "Placed Object: Boss Hen2"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 55
               Case 8
                  DebugLog "Placed Object: Red Monster1"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 6
               Case 9
                  DebugLog "Placed Object: Red Monster2"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 7
               Case 10
                  DebugLog "Placed Object: Red Monster3"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 8
               Case 11
                  DebugLog "Placed Object: Red Monster4"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 9
               Case 12
                  DebugLog "Placed Object: Red Monster5"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 28
               Case 13
                  DebugLog "Placed Object: Red Monster6"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 29
               Case 14
                  DebugLog "Placed Object: Green Monster1"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 10
               Case 15
                  DebugLog "Placed Object: Green Monster2"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 11
               Case 16
                  DebugLog "Placed Object: Green Monster3"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 12
               Case 17
                  DebugLog "Placed Object: Green Monster4"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 13
               Case 18
                  DebugLog "Placed Object: Dog Monster1"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 14
               Case 19
                  DebugLog "Placed Object: Dog Monster2"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 15
               Case 20
                  DebugLog "Placed Object: Dog Monster3"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 16
               Case 21
                  DebugLog "Placed Object: Dog Monster4"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 17
               Case 22
                  DebugLog "Placed Object: Dog Monster5"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 38
               Case 23
                  DebugLog "Placed Object: Dog Monster6"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 39
               Case 24
                  DebugLog "Placed Object: Bird Monster1"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 18
               Case 25
                  DebugLog "Placed Object: Bird Monster2"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 19
               Case 26
                  DebugLog "Placed Object: Tusk Monster1"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 20
               Case 27
                  DebugLog "Placed Object: Tusk Monster2"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 21
               Case 28
                  DebugLog "Placed Object: Tornado Monster1"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 22
               Case 29
                  DebugLog "Placed Object: Tornado Monster2"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 23
               Case 30
                  DebugLog "Placed Object: Bomber Monster1"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 24
               Case 31
                  DebugLog "Placed Object: Bomber Monster2"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 25
               Case 32
                  DebugLog "Placed Object: Bomber Monster3"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 26
               Case 33
                  DebugLog "Placed Object: Bomber Monster4"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 27
               Case 34
                  DebugLog "Placed Object: Bomber Monster5"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 40
               Case 35
                  DebugLog "Placed Object: Bomber Monster6"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 41
               Case 36
                  DebugLog "Placed Object: Bomber Monster7"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 42
               Case 37
                  DebugLog "Placed Object: Bomber Monster8"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 43
               Case 38
                  DebugLog "Placed Object: Ballbot Monster1"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 44
               Case 39
                  DebugLog "Placed Object: Ballbot Monster2"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 45
               Case 40
                  DebugLog "Placed Object: Ballbot Monster3"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 46
               Case 41
                  DebugLog "Placed Object: Ballbot Monster4"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 47
               Case 42
                  DebugLog "Placed Object: Cat Monster1"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 48
               Case 43
                  DebugLog "Placed Object: Cat Monster2"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 49
               Case 44
                  DebugLog "Placed Object: Cat Monster3"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 50
               Case 45
                  DebugLog "Placed Object: Cat Monster4"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 51
               Case 46
                  DebugLog "Placed Object: Cat Monster5"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 52
               Case 47
                  DebugLog "Placed Object: Cat Monster6"
                  map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 53
            End Select

         Case 2'Layer3mode
            Select tiletype
               Case 1
                   DebugLog "Placed L3Object: Kick X:"+Int((MouseX())/tsize)+" Y:"+Int((MouseY())/tsize)
                   map3(currLv, (MouseX())/tsize, (MouseY())/tsize) = 1
            End Select
      EndSelect
   EndIf

   'remove tile
   If MouseDown(MOUSE_RIGHT) Then
      Select editmode
         Case 0'Tilemode
           If Not map(currLv, (MouseX())/tsize,(MouseY())/tsize) = 0 Then
              DebugLog "Removed Tile"
              map(currLv, (MouseX())/tsize,(MouseY())/tsize) = 0
           EndIf

         Case 1'Objectmode
           If Not map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 0 Then
              DebugLog "Removed Object"
              map2(currLv, (MouseX())/tsize,(MouseY())/tsize) = 0
           EndIf

         Case 2'Layer3mode
           If Not map3(currLv, (MouseX())/tsize,(MouseY())/tsize) = 0 Then
              DebugLog "Removed L3Object"
              map3(currLv, (MouseX())/tsize,(MouseY())/tsize) = 0
           EndIf
      EndSelect
   EndIf
End Function