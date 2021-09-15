-----------------------------------------------------------------------------------------
--
-- view1Map.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require( "loadsave" )

function scene:create( event )
	local sceneGroup = self.view

	composer.getVariable("home")
	
	local background = display.newImageRect("image/bg.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local loadedSettings = loadsave.loadTable( "settings.json" )



	if loadedSettings.month == 0 then
		if loadedSettings.month1_event ==1 then
			loadedSettings.month1_event = loadedSettings.month1_event + 1
			loadsave.saveTable(loadedSettings,"settings.json")
			composer.removeScene("view01Map")
			composer.gotoScene("viewmonth1_event")
			
		end
	end

	if loadedSettings.month == 6 then
		if loadedSettings.month6_event == 1 then
			loadedSettings.month6_event = loadedSettings.month6_event + 1
			loadsave.saveTable(loadedSettings,"settings.json")
			composer.removeScene("view01Map")
			composer.gotoScene("viewmonth6_event")
		end
	end


	


	
	local red = display.newImageRect("마을지도-건물 크기 수정/마을지도_빨강마을.png",265,265)
	red.x,red.y = display.contentWidth*0.225,display.contentHeight*0.29
	red.name = "1"
	--red.width, red.height = 250,237
	sceneGroup:insert(red)
	

	local blue = display.newImageRect("마을지도-건물 크기 수정/마을지도_파랑마을.png",265,265)
	blue.x,blue.y = display.contentWidth*0.78,display.contentHeight*0.3
	blue.name = "2"
	sceneGroup:insert(blue)

	local yellow = display.newImageRect("마을지도-건물 크기 수정/마을지도_노랑마을.png",265,265)
	yellow.x,yellow.y = display.contentWidth*0.5,display.contentHeight*0.15
	yellow.name = "3"
	sceneGroup:insert(yellow)

	local purple = display.newImageRect("마을지도-건물 크기 수정/마을지도_보라마을.png",265,265)
	purple.x,purple.y = display.contentWidth*0.22,display.contentHeight*0.68
	purple.name = "4"
	sceneGroup:insert(purple)

	local green = display.newImageRect("마을지도-건물 크기 수정/마을지도_초록마을.png",265,265)
	green.x,green.y = display.contentWidth*0.785,display.contentHeight*0.715
	green.name = "5"
	sceneGroup:insert(green)

	local em = display.newImageRect("마을지도-건물 크기 수정/마을지도_임시거처.png",265,265)
	em.x,em.y = display.contentWidth*0.5,display.contentHeight*0.83
	em.name = "6"
	sceneGroup:insert(em)

	local store = display.newImageRect("마을지도-건물 크기 수정/마을지도_상점.png",265,265)
	store.x,store.y = display.contentWidth*0.5,display.contentHeight*0.48
	store.name = "7"
	sceneGroup:insert(store)

	local click1 = audio.loadStream( "음악/스침.wav" )
	
 
-- Play the background music on channel 1, loop infinitely, and fade in over 5 seconds 
	
	local i = 0

	local function bigbig (event)
		
		if (event.target.x-event.x)^2 + (event.target.y-event.y)^2 < 110^2 then
			
			if i == 0 then
				local backgroundMusicChannel = audio.play(click1)
				event.target.width = 300
				event.target.height = 305
				i = i + 1
			end
		
		elseif (event.target.x-event.x)^2 + (event.target.y-event.y)^2 > 110^2 then
			if i == 1 then
				event.target.width =265
				event.target.height =265
				i = i - 1 
			end
			
		end
	end

	local color = 0

	

	local function touch_ui (event)
		if event.phase == "began" then
			color = event.target.name

			if color == "6" then
				local click01 = audio.play(click1)
				audio.play(home)
				composer.removeScene("view01Map")
				composer.gotoScene( "view00Room" )

			elseif color == "7" then
				local click01 = audio.play(click1)
				composer.removeScene("view1Map")
				composer.gotoScene( "view03Store" )

			else
				local click01 = audio.play(click1)
				composer.setVariable("color", color)
				composer.removeScene("view1Map")
				composer.gotoScene("view02Map")

			end
		end
	end


	red:addEventListener("mouse",bigbig)
	blue:addEventListener("mouse",bigbig)
	yellow:addEventListener("mouse",bigbig)
	purple:addEventListener("mouse",bigbig)
	green:addEventListener("mouse",bigbig)
	em:addEventListener("mouse",bigbig)
	store:addEventListener("mouse",bigbig)

	red:addEventListener("touch",touch_ui)
	blue:addEventListener("touch",touch_ui)
	yellow:addEventListener("touch",touch_ui)
	purple:addEventListener("touch",touch_ui)
	green:addEventListener("touch",touch_ui)
	store:addEventListener("touch",touch_ui)
	em:addEventListener("touch",touch_ui)





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
		composer.removeScene("view01Map")
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