-----------------------------------------------------------------------------------------
--
-- view00Room.lua
--
-----------------------------------------------------------------------------------------
---튜토리얼---

local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require("loadsave")

function scene:create( event )
	local sceneGroup = self.view
	local click1 = audio.loadStream( "음악/클릭2.wav" )
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
			composer.hideOverlay("view00Room2")

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