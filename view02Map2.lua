-----------------------------------------------------------------------------------------
--
-- view2.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require( "loadsave" )

function scene:create( event )
	local sceneGroup = self.view

	local loadedSettings = loadsave.loadTable( "settings.json" )
	local click1 = audio.loadStream( "음악/클릭1.wav" )
	local background = display.newImageRect("image/bg.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)
--마을이미지
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


	color = composer.getVariable("color")

	local function gotomap(event)
		if event.phase == "began" then
			composer.removeScene("view02Map2")
			composer.gotoScene("view02Map")
		end

	end

	local function gotogame(event)

		loadedSettings.game_num = loadedSettings.game_num + 1
		
		if loadedSettings.month == 5 then
			if loadedSettings.month6_event == 0 then
				loadedSettings.month6_event = loadedSettings.month6_event + 1
			end
		end

		loadsave.saveTable(loadedSettings,"settings.json")

		
		if color == "1" then

			composer.removeScene("view02Map2")
			composer.gotoScene( "view05Dudu" )

		elseif color == "2" then

			composer.removeScene("view02Map2")
			composer.gotoScene( "view07Number" )

		elseif color == "3" then

			composer.removeScene("view02Map2")
			composer.gotoScene( "view09Lemon" )

		elseif color == "4"  then

			composer.removeScene("view02Map2")
			composer.gotoScene( "view18ring" )

		else
			
			composer.removeScene("view02Map2")
			composer.gotoScene( "view21card" )

		end
	end



	

	local function exitt()
		exit = display.newImage("image/공통-x버튼.png")
		sceneGroup:insert(exit)
		exit.x, exit.y = display.contentWidth*0.955, display.contentHeight*0.08
		exit:addEventListener("touch",gotomap)
	end

	local function start()
		
		start = display.newImage("image/start.png")
		start.x, start.y =  445, 520
		sceneGroup:insert(start)
		start:addEventListener("touch",gotogame)
	end



--월별 마을 방문 

	
--게임이동

			if loadedSettings.game_num ~= 1 then
				if color == "1" then
				--빨강게임 이동
					duduinfo = display.newImage("image/duduinfo.png")
					duduinfo.x, duduinfo.y = display.contentWidth/2, display.contentHeight/2
					sceneGroup:insert(duduinfo)

					exitt()
					start()

				elseif color == "2" then
				-- 파랑게임 이동
					local numinfo = display.newImage("image/numinfo.png")
					numinfo.x, numinfo.y = display.contentWidth/2, display.contentHeight/2
					sceneGroup:insert(numinfo)

					exitt()
					start()
					
				elseif color == "3" then
					-- 노랑게임 이동
					local lemoninfo = display.newImage("image/lemoninfo.png")
					lemoninfo.x, lemoninfo.y = display.contentWidth/2, display.contentHeight/2
					sceneGroup:insert(lemoninfo)

					exitt()
					start()
				elseif color == "4" then
				-- 보라게임 이동
					print("보라")
					local ringinfo = display.newImage("image/ringinfo.png")
					ringinfo.x, ringinfo.y = display.contentWidth/2, display.contentHeight/2
					sceneGroup:insert(ringinfo)

					exitt()
					start()
				elseif color == "5" then
				-- 초록게임 이동
					print("초록")
					local miniinfo = display.newImage("image/miniinfo.png")
					miniinfo.x, miniinfo.y = display.contentWidth/2, display.contentHeight/2
					sceneGroup:insert(miniinfo)

					exitt()
					start()
				end

			else 
				composer.removeScene("view02Map2")
				composer.gotoScene( "view15limited" )
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

		composer.removeScene("view02Map2")
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
