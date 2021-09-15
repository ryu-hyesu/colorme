-----------------------------------------------------------------------------------------
--
-- view08Number.lua
--
-----------------------------------------------------------------------------------------
local loadsave = require( "loadsave" )
local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view

	-- 배경 설정
	local background = display.newImageRect("image/numMiniBg.png", 1280, 720)
	background.x, background.y = display.contentWidth/2, display.contentHeight/2
	sceneGroup:insert( background )

	
	local background1 = display.newRect(display.contentWidth/2, display.contentHeight/2, display.contentWidth, display.contentHeight)
	
	background1:setFillColor(0)
	transition.to(background1,{alpha=0.5,time=1000})
	sceneGroup:insert(background1)
	
	local function gomap(event)
		if event.phase == "began" then
				composer.removeScene("view08Number")
				composer.gotoScene( "view01Map" )
		end
	end

	local board =display.newImageRect("image/finish.png",display.contentWidth/2.4, display.contentHeight/2)
	board.x , board.y = display.contentWidth/2, display.contentHeight/2
	board.alpha = 0.5
	transition.to(board,{alpha=1,time=1000})
	sceneGroup:insert(board)

	score3 = composer.getVariable("score2")
	local showScore1 = display.newText(score3,display.contentWidth/2, display.contentHeight/2+32,"font/잘풀리는오늘 Medium.ttf") 
	showScore1:setFillColor(1,0,0)
	showScore1.size = 90
	sceneGroup:insert(showScore1)

	local backtomap =display.newImageRect("image/backtomap.png",280,50)
	backtomap.x, backtomap.y =display.contentWidth/2,470
	sceneGroup:insert(backtomap)
	backtomap:addEventListener("touch",gomap)

	local loadedSettings = loadsave.loadTable( "settings.json" ) 
	loadedSettings.money = loadedSettings.money + score3
	print(loadedSettings.money)
	loadsave.saveTable(loadedSettings, "settings.json")
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
