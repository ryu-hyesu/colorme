-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	
	local background = display.newImageRect("홈화면소스모음/홈-배경(가구X)-01.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	if color == "1" then
			local red_bg = display.newImage("대화창-마을배경/캐릭터대화창-빨강마을배경.png")
			red_bg.x, red_bg.y = display.contentWidth/2,display.contentHeight/2
			sceneGroup:insert(red_bg)

			local script_bg = display.newImage("대화창-대사판/캐릭터대화창-대사창(블리).png")
			script_bg.x, script_bg.y = display.contentWidth/2,display.contentHeight*0.8
			sceneGroup:insert(script_bg)


	elseif color == "2" then
			-- 파랑마을 이동
			local blue_bg = display.newImage("대화창-마을배경/캐릭터대화창-파랑마을배경.png")
			blue_bg.x, blue_bg.y = display.contentWidth/2,display.contentHeight/2
			sceneGroup:insert(blue_bg)
				print("파랑")
	elseif color == "3" then
			-- 노랑마을 이동
				print("노랑")
	elseif color == "4" then
			-- 보라마을 이동
				print("보라")
	elseif color == "5" then
			-- 초록마을 이동
				print("초록")
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