-----------------------------------------------------------------------------------------
--
-- view00Room.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require("loadsave")

function scene:create( event )
	local sceneGroup = self.view

	composer.getVariable("home")

	local function touch1(event)
		--audio.pause(home)
		composer.removeScene("view00Room")
		composer.gotoScene( "view01Map" )

	end

	local loadedSettings = loadsave.loadTable( "settings.json" )
	--local click1 = audio.loadStream( "음악/클릭3.wav" )

	local number = 1


	local function touch2(event)
		--local click01 = audio.play(click1)
		composer.removeScene("view00Room")
		composer.gotoScene( "view11Bag" )

	end

	local function touch3(event)
		--local click01 = audio.play(click1)
		
		composer.removeScene("view00Room")
		composer.gotoScene( "view12Plan" )

	end

	local function touch4(event)
		--local click01 = audio.play(click1)
		composer.removeScene("view00Room")
		composer.gotoScene( "view14friend" )
	end
	
	local background = display.newImageRect("홈화면소스모음/홈-배경(가구O)-01.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local sch = display.newImage("홈화면소스모음/홈-스케줄버튼.png")
	sch.x,sch.y = display.contentWidth*0.75+13,display.contentHeight*0.9
	sceneGroup:insert(sch)
	sch:addEventListener("tap",touch3)

	local bag = display.newImage("홈화면소스모음/홈-가방버튼.png")
	bag.x,bag.y = display.contentWidth*0.835+13,display.contentHeight*0.9
	sceneGroup:insert(bag)
	bag:addEventListener("tap",touch2)

	local map = display.newImage("홈화면소스모음/홈-지도버튼.png")
	map.x,map.y = display.contentWidth*0.920+13,display.contentHeight*0.9
	sceneGroup:insert(map)
	map:addEventListener("tap",touch1)


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


	local mainpen = display.newImage("캐릭터-기본/캐릭터-주인공.png")
	mainpen.x,mainpen.y = display.contentWidth/2,display.contentHeight*0.6
	sceneGroup:insert(mainpen)

	local friend = display.newImage("홈화면소스모음/홈-친구목록버튼.png")
	sceneGroup:insert(friend)
	friend.x, friend.y = display.contentWidth*0.06, display.contentHeight*0.88
	friend:addEventListener("touch",touch4)

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

	print(loadedSettings.game_num)

	local options = {
    	isModal = true
    	
	}

	if loadedSettings.month == 0 then

		if loadedSettings.tutorial == 0 then

			composer.showOverlay("view00Room2",options)
			loadedSettings.tutorial = loadedSettings.tutorial + 1
			loadsave.saveTable(loadedSettings,"settings.json")
		end

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