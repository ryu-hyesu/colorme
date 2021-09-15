local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require("loadsave")

function scene:create( event )
	local sceneGroup = self.view
	local loadedSettings = loadsave.loadTable( "settings.json" )
   local myBdayMusic = audio.loadStream("음악/myBday.mp3")
   audio.play(myBdayMusic)
	mainName = loadedSettings.name
	local i
    local j = 2
    --공통화면
    bGroup = display.newGroup()
    local b = {}
    local s = {}
    local t = {}
    --나눠먹는다
    shareGroup = display.newGroup()
    local bShare = {}
    local sShare = {}
    local tShare = {}
    --혼자
    local bMine
    local sMine
    local tMine

	
	local background = display.newImageRect("홈화면소스모음/홈-배경(가구O)-01.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local sch = display.newImage("홈화면소스모음/홈-스케줄버튼.png")
	sch.x,sch.y = display.contentWidth*0.75+13,display.contentHeight*0.9
	sceneGroup:insert(sch)

	local bag = display.newImage("홈화면소스모음/홈-가방버튼.png")
	bag.x,bag.y = display.contentWidth*0.835+13,display.contentHeight*0.9
	sceneGroup:insert(bag)

	local map = display.newImage("홈화면소스모음/홈-지도버튼.png")
	map.x,map.y = display.contentWidth*0.920+13,display.contentHeight*0.9
	sceneGroup:insert(map)


	local play = display.newRect(154,65, loadedSettings.fun*2.25 ,25)
	play.anchorX,play.anchorY = 0,0.5
	play:setFillColor(0.643,0.384,0.666)
	sceneGroup:insert(play)

	local hobby = display.newRect(154,100, loadedSettings.hobby*2.25 ,25)
	hobby.anchorX,hobby.anchorY = 0,0.5
	hobby:setFillColor(0.98, 0.556 , 0.219)
	sceneGroup:insert(hobby)

	local study = display.newRect(154,150, loadedSettings.study*2.25 ,25)
	study.anchorX,study.anchorY = 0,0.5
	study:setFillColor(0.46,0.537,0.752)
	sceneGroup:insert(study)

	local friendly = display.newRect(154,185, loadedSettings.friendship*2.25,25)
	friendly.anchorX,friendly.anchorY = 0,0.5
	friendly:setFillColor(0.933,0.474,0.474)
	sceneGroup:insert(friendly)

	local stat = display.newImage("홈화면소스모음/홈-스탯창(투명).png")
	stat.x, stat.y = display.contentWidth*0.18,display.contentHeight*0.15
	sceneGroup:insert(stat)

	local coin = display.newImage("image/공통-코인수 표시.png")
	sceneGroup:insert(coin)
	coin.x, coin.y = display.contentWidth*0.9, display.contentHeight*0.08

	local money = display.newText("",1230,58,"font/NanumSquare_acB.ttf")
	money:setFillColor(0.964, 0.462, 0.411)
	money.anchorX = 1
	money.text = loadedSettings.money 
	money.size = 45
	sceneGroup:insert(money)

	local friend = display.newImage("홈화면소스모음/홈-친구목록버튼.png")
	sceneGroup:insert(friend)
	friend.x, friend.y = display.contentWidth*0.06, display.contentHeight*0.88

	local month = display.newText("",888,115,"font/잘풀리는오늘 Medium.ttf")
	month:setFillColor(0)
	month.size = 25
	sceneGroup:insert(month)

	local former = display.newText("",793,175,"font/잘풀리는오늘 Medium.ttf")
	former.anchorX = 0
	former:setFillColor(0)
	former.size = 15
	former.text = loadedSettings.former1
	sceneGroup:insert(former)

	local former2 = display.newText("",793,197,"font/잘풀리는오늘 Medium.ttf")
	former2.anchorX = 0
	former2:setFillColor(0)
	former2.size = 15
	former2.text = loadedSettings.former2
	sceneGroup:insert(former2)

	local next1 = display.newText("dd",793,254,"font/잘풀리는오늘 Medium.ttf")
	next1.anchorX = 0
	next1:setFillColor(0)
	next1.size = 15
	next1.text = loadedSettings.next1
	sceneGroup:insert(next1)

	local next2 = display.newText("dd",793,276,"font/잘풀리는오늘 Medium.ttf")
	next2.anchorX = 0
	next2:setFillColor(0)
	next2.size = 15
	next2.text = loadedSettings.next2
	sceneGroup:insert(next2)

	if loadedSettings.month == 0 then
		month.text = "이른 봄의 달"
		print("1월")
	elseif loadedSettings.month == 1 then
		month.text = "꽃 피는 달"
	elseif loadedSettings.month == 2 then
		month.text = "해변달"
	elseif loadedSettings.month == 3 then
		month.text = "단풍달"
	elseif loadedSettings.month == 4 then
		month.text = "도토리 달"
	elseif loadedSettings.month ==5 then
		month.text = "눈꽃 달"
	end

	   --b1클릭
   local function b1Click(event)
      s[4].alpha = 0
      t[4].alpha = 0
      b[4].alpha = 0
      b1.alpha = 0
      b2.alpha = 0
      bt1.alpha = 0
      bt2.alpha = 0
      bShare[1].alpha = 1
      sShare[1].alpha = 1
      tShare[1].alpha = 1
      loadedSettings.friendship = loadedSettings.friendship + 3
      loadedSettings.red = loadedSettings.red + 2
      loadedSettings.yellow = loadedSettings.yellow + 2
      loadedSettings.green = loadedSettings.green + 2
      loadedSettings.blue = loadedSettings.blue + 2
      loadedSettings.purple = loadedSettings.purple + 2
      loadsave.saveTable(loadedSettings,"settings.json")
   end
   --b2클릭
   local function b2Click(event)
      s[4].alpha = 0
      t[4].alpha = 0
      b1.alpha = 0
      b2.alpha = 0
      bt1.alpha = 0
      bt2.alpha = 0
      bMine.alpha = 1
      sMine.alpha = 1
      tMine.alpha = 1
      loadedSettings.money = loadedSettings.money + 7
      loadsave.saveTable(loadedSettings,"settings.json")
   end

    -- Share 화면전환
   local function PageShare(event)
      if j > 1 and j < 4 then
         bShare[j - 1].alpha = 0
         sShare[j - 1 ].alpha = 0
         tShare[j - 1].alpha = 0
         bShare[j].alpha = 1
         sShare[j].alpha = 1
         tShare[j].alpha = 1
      end
      j = j + 1
      if j == 5 then
         composer.removeScene("view17myBirthday")
         composer.gotoScene("view00Room")
         audio.pause( myBdayMusic )
         local home = audio.loadStream( "음악/집.mp3" )
         audio.play(home)
      end
   end

    -- Mine 화면전환
   local function PageMine(event)
        composer.removeScene("view17myBirthday")
        composer.gotoScene("view00Room")
        audio.pause( myBdayMusic )
        local home = audio.loadStream( "음악/집.mp3" )
        audio.play(home)
   end

	-- 공통화면전환
   local function Page(event)
      if j > 1 and j < 5 then
         s[j - 1].alpha = 0
         t[j - 1].alpha = 0
         b[j - 1].alpha = 0
         b[j].alpha = 1
         s[j].alpha = 1
         t[j].alpha = 1
      end
      j = j + 1
      if j == 6 then
         for i = 1, 4 do
            s[i]:removeEventListener("tap",Page)
         end
         j = 2
         --버튼
         b1 = display.newImage("b/w.png")
         b1.x, b1.y = display.contentWidth*0.15,display.contentHeight*0.48
         sceneGroup:insert(b1)
         b2 = display.newImage("b/w.png")
         b2.x, b2.y = display.contentWidth*0.85,display.contentHeight*0.48
         sceneGroup:insert(b2)
         bt1 = display.newText("콩 한쪽도 나눠먹는다고,\n친구들과 다 같이 먹어야지!", display.contentWidth*0.15,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
         bt1:setFillColor(1)
         bt1.anchorX,bt1.anchorY = 0.5,0.5
         sceneGroup:insert(bt1)
         b1:addEventListener("touch",b1Click)
         bt2 = display.newText("한 조각 밖에 없는데...\n이 정도는 혼자 먹어도\n되지 않을까?", display.contentWidth*0.85,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
         bt2:setFillColor(1)
         bt2.anchorX,bt2.anchorY = 0.5,0.5
         sceneGroup:insert(bt2)
         b2:addEventListener("touch",b2Click)
      end
   end

	--공통
	--배경
	b[1] = display.newImage(bGroup, "c/transparent.png")
	b[2] = display.newImage(bGroup, "c/transparent.png")
	b[3] = display.newImage(bGroup, "myBday/cake.png")
	b[4] = display.newImage(bGroup, "myBday/cake.png")
	bGroup.x,bGroup.y = display.contentWidth/2,display.contentHeight*0.4
	sceneGroup:insert(bGroup)
    --대화창
    s[1] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
    s[2] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
    s[3] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
    s[4] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
    --대사
    t[1] = display.newText("띵동-, 초인종 소리가 들려 나가보니 문 앞에 상자가 하나 놓여 있다.", 105,550, "font/NanumSquare_acB.ttf", 25)
    t[2] = display.newText("“이게 뭐지?”", 105,550, "font/NanumSquare_acB.ttf", 25)
    t[3] = display.newText("상자를 열어보니 무지개색 케이크가 한 조각 들어 있다. ", 105,550, "font/NanumSquare_acB.ttf", 25)
    t[4] = display.newText("“우와, 맛있어 보이는 케이크다...!”", 105,550, "font/NanumSquare_acB.ttf", 25)

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

   --Share 엔딩
   --배경
   bShare[1] = display.newImage(shareGroup, "myBday/cake.png")
   bShare[2] = display.newImage(shareGroup, "myBday/share.png")
   bShare[3] = display.newImage(shareGroup, "myBday/share.png")
   shareGroup.x,shareGroup.y = display.contentWidth/2,display.contentHeight*0.4
   sceneGroup:insert(shareGroup)
   --대화창
   sShare[1] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
   sShare[2] = display.newImage("s/all.png", display.contentWidth/2,display.contentHeight*0.8)
   sShare[3] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
   --대사
   tShare[1] = display.newText("얘들아~ 다들 우리 집에 놀러 와. 케이크 같이 먹자!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tShare[2] = display.newText( mainName .. ", 생일 축하해!", 105,550, "font/NanumSquare_acB.ttf", 25)
   tShare[3] = display.newText("다들 고마워!", 105,550, "font/NanumSquare_acB.ttf", 25)
   --투명화
   for i = 1, 3 do
      tShare[i]:setFillColor(alpha)
      tShare[i].anchorX,tShare[i].anchorY = 0.0,0.0
      sceneGroup:insert(sShare[i])
      sceneGroup:insert(tShare[i])
      sShare[i].alpha = 0
      tShare[i].alpha = 0
      bShare[i].alpha = 0
      sShare[i]:addEventListener("tap",PageShare)
   end

   --Mine 엔딩
   --배경
   bMine = display.newImage("myBday/money.png")
   bMine.x,bMine.y = display.contentWidth/2,display.contentHeight*0.4
   --대화창
   sMine = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
   --대사
   tMine = display.newText("앗, 이게 뭐지? 용돈이다!", 105,550, "font/NanumSquare_acB.ttf", 25)
   --투명화
   tMine:setFillColor(alpha)
   tMine.anchorX,tMine.anchorY = 0.0,0.0
   sceneGroup:insert(bMine)
   sceneGroup:insert(sMine)
   sceneGroup:insert(tMine)
   bMine.alpha = 0
   sMine.alpha = 0
   tMine.alpha = 0
   sMine:addEventListener("tap",PageMine)
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
		--composer.removeScene("view00Room")
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