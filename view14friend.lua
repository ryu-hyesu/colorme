-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	local click1 = audio.loadStream( "음악/클릭1.wav" )
	local background = display.newImageRect("친구 목록/친구목록-배경-01.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local options = {
    	isModal = true
    	
	}

	local function gotomap(event)
		if event.phase == "began" then

			composer.removeScene("view14friend")
			composer.gotoScene("view00Room")
		end

	end

	local function touch(event)
		color1 = event.target.name
		composer.setVariable("color1",color1)
		composer.showOverlay("view14friend_s",options)
	end

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.955, display.contentHeight*0.08
	exit:addEventListener("touch",gotomap)

	local red = display.newImage("친구 목록/친구목록-버튼(블리).png")
	red.x , red.y = display.contentWidth*0.25, display.contentHeight*0.42
	sceneGroup:insert(red)
	red.name = 1
	red:addEventListener("touch",touch)

	local yellow = display.newImage("친구 목록/친구목록-버튼(조이).png")
	yellow.x, yellow.y = display.contentWidth*0.5, display.contentHeight*0.42
	sceneGroup:insert(yellow)
	yellow.name = 3
	yellow:addEventListener("touch",touch)

	local blue = display.newImage("친구 목록/친구목록-버튼(위즈).png")
	blue.x, blue.y =  display.contentWidth*0.75, display.contentHeight*0.42
	sceneGroup:insert(blue)
	blue.name = 2
	blue:addEventListener("touch",touch)

	local green = display.newImage("친구 목록/친구목록-버튼(솔리).png")
	green.x, green.y =  display.contentWidth*0.37, display.contentHeight*0.74
	sceneGroup:insert(green)
	green.name = 5
	green:addEventListener("touch",touch)

	local purple = display.newImage("친구 목록/친구목록-버튼(레이).png")
	purple.x, purple.y =  display.contentWidth*0.63, display.contentHeight*0.74
	sceneGroup:insert(purple)
	purple.name = 4
	purple:addEventListener("touch",touch)



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