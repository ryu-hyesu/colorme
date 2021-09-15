-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require( "loadsave" )

function scene:create( event )
	--로드
	local loadedSettings = loadsave.loadTable( "settings.json" )
	chosenColor = loadedSettings.color
	mainName = loadedSettings.name
	local sceneGroup = self.view
	local i
    local j = 2
   --음악
   local home = audio.loadStream( "음악/집.mp3" )
   audio.pause(home)
   local dMusic = audio.loadStream( "음악/도토리축제.mp3" )
   audio.play(dMusic)
    --공통화면
    bGroup = display.newGroup()
    local b = {}
    local s = {}
    local t = {}
    --굿엔딩1
    GoodEnding1 = display.newGroup()
    local bGood1 = {}
    local sGood1 = {}
    local tGood1 = {}
    local cGood1 = {}
    --굿엔딩2
    GoodEnding2 = display.newGroup()
    local bGood2 = {}
    local sGood2 = {}
    local tGood2 = {}
    local cGood2 = {}
    --배드엔딩
    BadEnding = display.newGroup()
    local bBad = {}
    local sBad = {}
    local tBad = {}
    local cBad = {}
   --b1클릭
   local function b1Click(event)
      s[4].alpha = 0
      t[4].alpha = 0
      b[4].alpha = 0
      b1.alpha = 0
      b2.alpha = 0
      b3.alpha = 0
      bt1.alpha = 0
      bt2.alpha = 0
      bt3.alpha = 0
      bGood1[1].alpha = 1
      cGood1[1].alpha = 1
      sGood1[1].alpha = 1
      tGood1[1].alpha = 1
      loadedSettings.red = loadedSettings.red + 3
      loadedSettings.green = loadedSettings.green + 3
      loadedSettings.blue = loadedSettings.blue + 3
      loadedSettings.goodWhite = 1
      loadsave.saveTable(loadedSettings,"settings.json")
   end
   --b2클릭
   local function b2Click(event)
      s[4].alpha = 0
      t[4].alpha = 0
      b[4].alpha = 0
      b1.alpha = 0
      b2.alpha = 0
      b3.alpha = 0
      bt1.alpha = 0
      bt2.alpha = 0
      bt3.alpha = 0
      bGood2[1].alpha = 1
      cGood2[1].alpha = 1
      sGood2[1].alpha = 1
      tGood2[1].alpha = 1
      loadedSettings.goodWhite = 1
      loadedSettings.yellow = loadedSettings.yellow + 3
      loadedSettings.purple = loadedSettings.purple + 3
      loadsave.saveTable(loadedSettings,"settings.json")
   end
   --b3클릭
   local function b3Click(event)
      s[4].alpha = 0
      t[4].alpha = 0
      b[4].alpha = 0
      b1.alpha = 0
      b2.alpha = 0
      b3.alpha = 0
      bt1.alpha = 0
      bt2.alpha = 0
      bt3.alpha = 0
      bBad[1].alpha = 1
      cBad[1].alpha = 1
      sBad[1].alpha = 1
      tBad[1].alpha = 1
      loadedSettings.badWhite = 1
      loadsave.saveTable(loadedSettings,"settings.json")
   end
      -- 화면전환
   local function Page(event)
      if j > 1 and j < 5 then
         s[j - 1].alpha = 0
         t[j - 1].alpha = 0
         b[j - 1].alpha = 0
         b[j].alpha = 1
         if j ~= 3 and j ~= 4 then
            s[j].alpha = 1
            t[j].alpha = 1
         else
            transition.to(s[j],{time=0,alpha=1,delay=3000})
            transition.to(t[j],{time=0,alpha=1,delay=3000})
         end
      end
      j = j + 1
      if j == 6 then
         for i = 1, 4 do
            s[i]:removeEventListener("tap",Page)
         end
         j = 2
         --버튼
         b1 = display.newImage("b/w.png")
         b1.x, b1.y = display.contentWidth*0.2,display.contentHeight*0.47
         sceneGroup:insert(b1)
         b2 = display.newImage("b/w.png")
         b2.x, b2.y = display.contentWidth*0.5,display.contentHeight*0.47
         sceneGroup:insert(b2)
         b3 = display.newImage("b/w.png")
         b3.x, b3.y = display.contentWidth*0.8,display.contentHeight*0.47
         sceneGroup:insert(b3)
         bt1 = display.newText("친구들을 실망시키기 싫어!\n내가 갖고 있던 도토리 사탕을\n바구니에 둔다.", display.contentWidth*0.2,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
         bt1:setFillColor(1)
         bt1.anchorX,bt1.anchorY = 0.5,0.5
         sceneGroup:insert(bt1)
         b1:addEventListener("touch",b1Click)
         bt2 = display.newText("친구들의 주의를 끌어서\n관심을 돌리자!\n친구들의 앞에서\n춤추고 노래한다.", display.contentWidth*0.5,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
         bt2:setFillColor(1)
         bt2.anchorX,bt2.anchorY = 0.5,0.5
         sceneGroup:insert(bt2)
         b2:addEventListener("touch",b2Click)
         bt3 = display.newText("어떡하지, 어떡하지?!\n망설이다 도망친다.", display.contentWidth*0.8,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
         bt3:setFillColor(1)
         bt3.anchorX,bt3.anchorY = 0.5,0.5
         sceneGroup:insert(bt3)
         b3:addEventListener("touch",b3Click)
      end
   end

   -- 굿엔딩1 화면전환
   local function PageGood1(event)
      if j > 1 and j < 7 then
         bGood1[j - 1].alpha = 0
         cGood1[j - 1].alpha = 0
         sGood1[j - 1 ].alpha = 0
         tGood1[j - 1].alpha = 0
         bGood1[j].alpha = 1
         cGood1[j].alpha = 1
         sGood1[j].alpha = 1
         tGood1[j].alpha = 1
      end
      j = j + 1
      if j == 8 then
         audio.pause( dMusic )
         composer.removeScene("viewmonth5_event")
         composer.gotoScene("view01_month")
      end
   end

   -- 굿엔딩2 화면전환
   local function PageGood2(event)
      if j > 1 and j < 10 then
         bGood2[j - 1].alpha = 0
         cGood2[j - 1].alpha = 0
         sGood2[j - 1 ].alpha = 0
         tGood2[j - 1].alpha = 0
         bGood2[j].alpha = 1
         cGood2[j].alpha = 1
         sGood2[j].alpha = 1
         tGood2[j].alpha = 1
      end
      j = j + 1
      if j == 11 then
         audio.pause( dMusic )
         composer.removeScene("viewmonth5_event")
         composer.gotoScene("view01_month")
      end
   end

   -- 배드엔딩 화면전환
   local function PageBad(event)
      if j > 1 and j < 7 then
         bBad[j - 1].alpha = 0
         cBad[j - 1].alpha = 0
         sBad[j - 1 ].alpha = 0
         tBad[j - 1].alpha = 0
         bBad[j].alpha = 1
         cBad[j].alpha = 1
         sBad[j].alpha = 1
         tBad[j].alpha = 1
      end
      j = j + 1
      if j == 8 then
         audio.pause( dMusic )
         composer.removeScene("viewmonth5_event")
         composer.gotoScene("view01_month")
      end
   end

   --공통화면
	--배경
	b[1] = display.newImage(bGroup, "dotori/1.png")
	b[2] = display.newImage(bGroup, "dotori/1.png")
	b[3] = display.newImage(bGroup, "dotori/2.png")
	b[4] = display.newImage(bGroup, "dotori/3.png")
	bGroup.x,bGroup.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(bGroup)
    --대화창
    s[1] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
    s[2] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
    s[3] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
    s[4] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
    --대사
    t[1] = display.newText("오늘은 분장을 하고 도토리를 주고받는 ‘오싹한 도토리 축제의 날'이야!", 105,550, "font/NanumSquare_acB.ttf", 25)
    t[2] = display.newText("그럼 이제 사탕을 받으러 가볼까?…", 105,550, "font/NanumSquare_acB.ttf", 25)
    t[3] = display.newText("앗, 이 집엔 사탕이 없네…. 그냥 돌아가야겠다.", 105,550, "font/NanumSquare_acB.ttf", 25)
    t[4] = display.newText("헉, 친구들이다! 이 집엔 사탕이 없는데… 어떡하지?”", 105,550, "font/NanumSquare_acB.ttf", 25)

	for i = 1, 4 do
        t[i]:setFillColor(alpha)
        t[i].anchorX,t[i].anchorY = 0.0,0.0
        sceneGroup:insert(s[i])
        sceneGroup:insert(t[i])
        s[i]:addEventListener("tap",Page)
   end

   for i = 2, 4 do
        s[i].alpha = 0
        t[i].alpha = 0
        b[i].alpha = 0
   end

   --굿엔딩1--
   --배경
	bGood1[1] = display.newImage(GoodEnding1, "dotori/1.png")
	bGood1[2] = display.newImage(GoodEnding1, "dotori/1.png")
	bGood1[3] = display.newImage(GoodEnding1, "dotori/1.png")
	bGood1[4] = display.newImage(GoodEnding1, "dotori/1.png")
	bGood1[5] = display.newImage(GoodEnding1, "dotori/1.png")
	bGood1[6] = display.newImage(GoodEnding1, "dotori/good1.png")
	GoodEnding1.x,GoodEnding1.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(GoodEnding1)
   --대화창
   sGood1[1] = display.newImage("s/r.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood1[2] = display.newImage("s/b.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood1[3] = display.newImage("s/y.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood1[4] = display.newImage("s/g.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood1[5] = display.newImage("s/p.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood1[6] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
   --대사
   tGood1[1] = display.newText("꺄, 저기 도토리 바구니가 있어!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood1[2] = display.newText("와, 얼른 가져가자!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood1[3] = display.newText("신난다! 도토리 축제 최고!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood1[4] = display.newText("다른 친구들이 가져갈 것도 남겨 둬야 해~”", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood1[5] = display.newText("이것 봐, 대왕 도토리도 있어!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood1[6] = display.newText("휴! 친구들이 실망하지 않아서 정말 다행이야", 105,550, "font/NanumSquare_acB.ttf", 25)
   --캐릭터
   cGood1[1] = display.newImage("c/rHappy.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood1[2] = display.newImage("c/bHappy.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood1[3] = display.newImage("c/yHappy.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood1[4] = display.newImage("c/gHappy.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood1[5] = display.newImage("c/pHappy.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood1[6] = display.newImage("c/transparent.png", display.contentWidth/2,display.contentHeight*0.5)
   --투명화
   for i = 1, 6 do
      tGood1[i]:setFillColor(alpha)
      tGood1[i].anchorX,tGood1[i].anchorY = 0.0,0.0
      sceneGroup:insert(cGood1[i])
      sceneGroup:insert(sGood1[i])
      sceneGroup:insert(tGood1[i])
      sGood1[i].alpha = 0
      cGood1[i].alpha = 0
      tGood1[i].alpha = 0
      bGood1[i].alpha = 0
      sGood1[i]:addEventListener("tap",PageGood1)
   end

   --굿엔딩2--
   --배경
   bGood2[1] = display.newImage(GoodEnding2, "dotori/good2.png")
   bGood2[2] = display.newImage(GoodEnding2, "dotori/1.png")
   bGood2[3] = display.newImage(GoodEnding2, "dotori/1.png")
   bGood2[4] = display.newImage(GoodEnding2, "dotori/good2.png")
   bGood2[5] = display.newImage(GoodEnding2, "dotori/1.png")
   bGood2[6] = display.newImage(GoodEnding2, "dotori/good21.png")
   bGood2[7] = display.newImage(GoodEnding2, "dotori/good21.png")
   bGood2[8] = display.newImage(GoodEnding2, "dotori/good21.png")
   bGood2[9] = display.newImage(GoodEnding2, "dotori/good21.png")
   GoodEnding2.x,GoodEnding2.y = display.contentWidth/2,display.contentHeight/2
   sceneGroup:insert(GoodEnding2)

   --대화창
   sGood2[1] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood2[2] = display.newImage("s/b.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood2[3] = display.newImage("s/y.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood2[4] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood2[5] = display.newImage("s/g.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood2[6] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood2[7] = display.newImage("s/r.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood2[8] = display.newImage("s/p.png", display.contentWidth/2,display.contentHeight*0.8)
   sGood2[9] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
   --대사
   tGood2[1] = display.newText("얘들아, 잠깐!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood2[2] = display.newText("엇, ".. mainName .." 너 여기 있었구나!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood2[3] = display.newText("저기 도토리 바구니가 있어. 같이 도토리 가지러 가자!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood2[4] = display.newText("있지 얘들아 그게....", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood2[5] = display.newText("뭐해, 빨리 가자!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood2[6] = display.newText("저기, 내, 내가 장기자랑을 준비했어! 나 잘 봐봐!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood2[7] = display.newText("꺄하하!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood2[8] = display.newText("와아- 대단하다!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tGood2[9] = display.newText("'휴, 친구들의 주의를 돌려서 다행이야. 얼른 다음 집으로 가자고 해야지'", 105,550, "font/NanumSquare_acB.ttf", 25)
   --캐릭터
   cGood2[1] = display.newImage("c/transparent.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood2[2] = display.newImage("c/b.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood2[3] = display.newImage("c/y.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood2[4] = display.newImage("c/transparent.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood2[5] = display.newImage("c/gHappy.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood2[6] = display.newImage("c/transparent.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood2[7] = display.newImage("c/rHappy.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood2[8] = display.newImage("c/pHappy.png", display.contentWidth/2,display.contentHeight*0.5)
   cGood2[9] = display.newImage("c/transparent.png", display.contentWidth/2,display.contentHeight*0.5)
   --투명화
   for i = 1, 9 do
      tGood2[i]:setFillColor(alpha)
      tGood2[i].anchorX,tGood2[i].anchorY = 0.0,0.0
      sceneGroup:insert(cGood2[i])
      sceneGroup:insert(sGood2[i])
      sceneGroup:insert(tGood2[i])
      bGood2[i].alpha = 0
      sGood2[i].alpha = 0
      cGood2[i].alpha = 0
      tGood2[i].alpha = 0
      sGood2[i]:addEventListener("tap",PageGood2)
   end

   --배드엔딩--
   --배경
   bBad[1] = display.newImage(BadEnding, "dotori/bad1.png")
   bBad[2] = display.newImage(BadEnding, "dotori/bad12.png")
   bBad[3] = display.newImage(BadEnding, "dotori/bad12.png")
   bBad[4] = display.newImage(BadEnding, "dotori/bad12.png")
   bBad[5] = display.newImage(BadEnding, "dotori/bad12.png")
   bBad[6] = display.newImage(BadEnding, "dotori/bad12.png")
   BadEnding.x,BadEnding.y = display.contentWidth/2,display.contentHeight/2
   sceneGroup:insert(BadEnding)
   --대화창
   sBad[1] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
   sBad[2] = display.newImage("s/y.png", display.contentWidth/2,display.contentHeight*0.8)
   sBad[3] = display.newImage("s/b.png", display.contentWidth/2,display.contentHeight*0.8)
   sBad[4] = display.newImage("s/r.png", display.contentWidth/2,display.contentHeight*0.8)
   sBad[5] = display.newImage("s/p.png", display.contentWidth/2,display.contentHeight*0.8)
   sBad[6] = display.newImage("s/g.png", display.contentWidth/2,display.contentHeight*0.8)
   --대사
   tBad[1] = display.newText("에라 모르겠다, 도망가자!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tBad[2] = display.newText("어라? 여기는 도토리가 없어!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tBad[3] = display.newText("뭐어? 그게 정말이야?", 105,550, "font/NanumSquare_acB.ttf", 25)
   tBad[4] = display.newText("뭐야, 기대했는데!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tBad[5] = display.newText("다른 애들이 벌써 다 가져갔나 봐....", 105,550, "font/NanumSquare_acB.ttf", 25)
   tBad[6] = display.newText("아쉽다", 105,550, "font/NanumSquare_acB.ttf", 25)
   --캐릭터
   cBad[1] = display.newImage("c/transparent.png", display.contentWidth/2,display.contentHeight*0.5)
   cBad[2] = display.newImage("c/transparent.png", display.contentWidth/2,display.contentHeight*0.5)
   cBad[3] = display.newImage("c/transparent.png", display.contentWidth/2,display.contentHeight*0.5)
   cBad[4] = display.newImage("c/transparent.png", display.contentWidth/2,display.contentHeight*0.5)
   cBad[5] = display.newImage("c/transparent.png", display.contentWidth/2,display.contentHeight*0.5)
   cBad[6] = display.newImage("c/transparent.png", display.contentWidth/2,display.contentHeight*0.5)
   --투명화
   for i = 1, 6 do
      tBad[i]:setFillColor(alpha)
      tBad[i].anchorX,tBad[i].anchorY = 0.0,0.0
      sceneGroup:insert(cBad[i])
      sceneGroup:insert(sBad[i])
      sceneGroup:insert(tBad[i])
      bBad[i].alpha = 0
      sBad[i].alpha = 0
      cBad[i].alpha = 0
      tBad[i].alpha = 0
      sBad[i]:addEventListener("tap",PageBad)
   end
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		-- Called when the scene is now on screen
		-- 
		-- INSERT code here to make the scene come alive
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then
		-- Called when the scene is on screen and is about to move off screen
		--
		-- INSERT code here to pause the scene
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
		composer.removeScene("viewmonth5_event")
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
	
	-- Called prior to the removal of scene's "view" (sceneGroup)
	-- 
	-- INSERT code here to cleanup the scene
	-- e.g. remove display objects, remove touch listeners, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene