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

	local function gotomap(event)
		if event.phase == "began" then
			composer.hideOverlay("view14friend_s")
		
		end

	end

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.955, display.contentHeight*0.08

	local red = display.newImage("친구 목록/친구목록-버튼(블리).png")
	red.x , red.y = display.contentWidth*0.25, display.contentHeight*0.42
	sceneGroup:insert(red)

	local yellow = display.newImage("친구 목록/친구목록-버튼(조이).png")
	yellow.x, yellow.y = display.contentWidth*0.5, display.contentHeight*0.42
	sceneGroup:insert(yellow)

	local blue = display.newImage("친구 목록/친구목록-버튼(위즈).png")
	blue.x, blue.y =  display.contentWidth*0.75, display.contentHeight*0.42
	sceneGroup:insert(blue)

	local green = display.newImage("친구 목록/친구목록-버튼(솔리).png")
	green.x, green.y =  display.contentWidth*0.37, display.contentHeight*0.74
	sceneGroup:insert(green)

	local purple = display.newImage("친구 목록/친구목록-버튼(레이).png")
	purple.x, purple.y =  display.contentWidth*0.63, display.contentHeight*0.74
	sceneGroup:insert(purple)

	local red_ui = display.newImage("친구 목록/친구목록-소개창(블리).png")
	red_ui.x, red_ui.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(red_ui)
	red_ui.alpha = 0

	local blue_ui = display.newImage("친구 목록/친구목록-소개창(조이).png")
	blue_ui.x, blue_ui.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(blue_ui)
	blue_ui.alpha = 0

	local yellow_ui = display.newImage("친구 목록/친구목록-소개창(위즈).png")
	yellow_ui.x, yellow_ui.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(yellow_ui)
	yellow_ui.alpha = 0

	local green_ui = display.newImage("친구 목록/친구목록-소개창(솔리).png")
	green_ui.x, green_ui.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(green_ui)
	green_ui.alpha =0 

	local purple_ui = display.newImage("친구 목록/친구목록-소개창(레이).png")
	purple_ui.x, purple_ui.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(purple_ui)
	purple_ui.alpha =0

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.82, display.contentHeight*0.13
	exit:addEventListener("touch",gotomap)

	color = composer.getVariable("color1")

	if color ==1 then
		red_ui.alpha =1

	elseif color ==3 then
		blue_ui.alpha = 1

	elseif color ==2 then
		yellow_ui.alpha = 1

	elseif color ==4 then
		purple_ui.alpha = 1

	elseif color ==5 then
		green_ui.alpha = 1
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
		composer.removeScene("View13Plan")
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