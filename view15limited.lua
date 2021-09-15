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
	
	local background = display.newImageRect("image/bg.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local red = display.newImageRect("image/red.png",250,237)
	red.x,red.y = display.contentWidth*0.225,display.contentHeight*0.29
	sceneGroup:insert(red)

	local blue = display.newImageRect("image/blue.png",250,237)
	blue.x,blue.y = display.contentWidth*0.78,display.contentHeight*0.3
	sceneGroup:insert(blue)

	local yellow = display.newImageRect("image/yellow.png",250,237)
	yellow.x,yellow.y = display.contentWidth*0.5,display.contentHeight*0.18
	sceneGroup:insert(yellow)

	local purple = display.newImageRect("image/purple.png",250,237)
	purple.x,purple.y = display.contentWidth*0.22,display.contentHeight*0.71
	sceneGroup:insert(purple)

	local green = display.newImageRect("image/green.png",250,237)
	green.x,green.y = display.contentWidth*0.785,display.contentHeight*0.715
	sceneGroup:insert(green)

	local em = display.newImageRect("image/em.png",250,237)
	em.x,em.y = display.contentWidth*0.5,display.contentHeight*0.83
	sceneGroup:insert(em)

	local function gotomap(event)
		if event.phase == "began" then
			composer.gotoScene("view01Map")
			composer.removeScene("view15limited")
		end

	end


	local limited = display.newImage("image/공통-횟수제한알림창.png")
	limited.x, limited.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(limited)

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.5, display.contentHeight*0.65
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
		composer.removeScene("view15limited")
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