-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require( "loadsave" )

function scene:create( event )
	local sceneGroup = self.view

	local loadedSettings = loadsave.loadTable( "settings.json" )
	
	local background = display.newImageRect("홈화면소스모음/홈-배경(가구X)-01.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local back = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-선택창배경.png")
	back.x, back.y = display.contentWidth*0.35,display.contentHeight*0.45
	sceneGroup:insert(back)

	local korean = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-공부버튼(문학).png")
	korean.x, korean.y = 150, 245
	sceneGroup:insert(korean)

	local exc1 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-활동버튼1.png")
	exc1.x,exc1.y = 260,370 -2
	sceneGroup:insert(exc1)

	local exc2 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-활동버튼2.png")
	exc2.x, exc2.y = 260,422-2
	sceneGroup:insert(exc2)

	local exc3 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-활동버튼3.png")
	exc3.x, exc3.y = 260,474-2
	sceneGroup:insert(exc3)

	local exc4 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-활동버튼4.png")
	exc4.x, exc4.y = 260,526-2
	sceneGroup:insert(exc4)

	local exc5 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-활동버튼5.png")
	exc5.x, exc5.y = 260, 578-2
	sceneGroup:insert(exc5)

	local former = display.newText("",83,102,"font/잘풀리는오늘 Medium.ttf")
	former.anchorX = 0
	former:setFillColor(0)
	former.size = 20
	former.text = loadedSettings.former01
	sceneGroup:insert(former)

	local former2 = display.newText("",83,133,"font/잘풀리는오늘 Medium.ttf")
	former2.anchorX = 0
	former2:setFillColor(0)
	former2.size = 20
	former2.text = loadedSettings.former02
	sceneGroup:insert(former2)

	local guide = display.newImage("스케줄(스탯)소스모음2 (1)/스케줄(스탯)-가이드버튼.png")
	guide.x,guide.y = 50,670
	sceneGroup:insert(guide)

	local play = display.newRect(958,58, loadedSettings.fun*1.86 ,25)
	play.anchorX,play.anchorY = 0,0.5
	play:setFillColor(0.643,0.384,0.666)
	sceneGroup:insert(play)

	local hobby = display.newRect(958,90, loadedSettings.hobby*1.86 ,25)
	hobby.anchorX,hobby.anchorY = 0,0.5
	hobby:setFillColor(0.98, 0.556 , 0.219)
	sceneGroup:insert(hobby)

	local sch = display.newImageRect("홈화면소스모음/홈-스탯창(투명).png",300,200)
	sch.x,sch.y = display.contentWidth*0.798,display.contentHeight*0.13
	sceneGroup:insert(sch)

	local mainpen = display.newImageRect("캐릭터-기본/캐릭터-주인공.png",200,320)
	mainpen.x,mainpen.y = display.contentWidth*0.83,display.contentHeight*0.7
	sceneGroup:insert(mainpen)

	local text = display.newImage("스케줄(스탯)소스모음2 (1)/스케줄(스탯)-말풍선.png")
	text.x,text.y = display.contentWidth*0.83,display.contentHeight*0.4
	sceneGroup:insert(text)

	
	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.955, display.contentHeight*0.08



	local black = display.newRect(display.contentWidth/2,display.contentHeight/2,display.contentWidth,display.contentHeight)
	black.alpha = 0.5
	black:setFillColor(0)
	sceneGroup:insert(black)

	local loadedSettings = loadsave.loadTable( "settings.json" )


	local scen = {
		"튜토리얼 가이드/튜토리얼가이드-첫장.png",
		"튜토리얼 가이드/튜토리얼가이드-메인홈1.png",
		"튜토리얼 가이드/튜토리얼가이드-메인홈2.png",
		
		"튜토리얼 가이드/튜토리얼가이드-스케줄1.png",
		"튜토리얼 가이드/튜토리얼가이드-스케줄2.png",
		"튜토리얼 가이드/튜토리얼가이드-미니게임.png",
		"튜토리얼 가이드/튜토리얼가이드-우정활동.png",
		"튜토리얼 가이드/튜토리얼가이드-우정활동2.png"
		
	}

	local show = {}

	for i=1,8 do
		show[i] = display.newImage(scen[i])
		show[i].x, show[i].y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show[i])
		show[i].alpha = 0
	end

	local i = 1
	local function next(event)
		if event.phase == "began" then 
			if i < 8 then
				i = i+1
				show[i-1].alpha = 0
				show[i].alpha = 1

			end
		end
	end

	local function former(event)
		if event.phase == "began" then 
			if i > 1 then
				i = i-1
				show[i+1].alpha = 0
				show[i].alpha = 1

			end
		end
	end


	show[1].alpha = 1


	local move= display.newImage("튜토리얼 가이드/튜토리얼가이드-이동버튼.png")
	move.x, move.y = 1220, display.contentHeight/2
	move.rotation = 180
	move:addEventListener("touch",next)
	sceneGroup:insert(move)
	
	local move1= display.newImage("튜토리얼 가이드/튜토리얼가이드-이동버튼.png")
	move1.x, move1.y = 60, display.contentHeight/2
	move1:addEventListener("touch",former)
	sceneGroup:insert(move1)

	local function gotomap(event)
		if event.phase == "began" then

			composer.removeScene("View13Plan4")
			composer.gotoScene("view12Plan")
				

		end

	end

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.89, display.contentHeight*0.17
	exit:addEventListener("touch",gotomap)


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
		composer.removeScene("View13Plan4")
		-- Called when the scene is now off screen
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