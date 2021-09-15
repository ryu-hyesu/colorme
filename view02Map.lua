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

	local background = display.newImageRect("image/bg.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)
--마을이미지
	local red = display.newImageRect("마을지도-건물 크기 수정/마을지도_빨강마을.png",265,265)
	red.x,red.y = display.contentWidth*0.225,display.contentHeight*0.29
	red.name = "1"
	sceneGroup:insert(red)
	local click1 = audio.loadStream( "음악/클릭1.wav" )

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
	local loadedSettings = loadsave.loadTable( "settings.json" )




--월별 마을 방문 

	local function touch1(event)

		if event.phase == "began" then

			if loadedSettings.month == 5 then
				if loadedSettings.month6_event == 0 then
					loadedSettings.month6_event = loadedSettings.month6_event + 1
					loadsave.saveTable(loadedSettings,"settings.json")
				end
			end

				if loadedSettings.month ==0 then
						composer.removeScene("view02Map")
						composer.gotoScene("viewmonth1_script")

				--2월
				elseif loadedSettings.month ==1 then
						composer.removeScene("view02Map")
						composer.gotoScene("viewmonth2_script")

				elseif loadedSettings.month ==2 then
					
						composer.removeScene("view02Map")
						composer.gotoScene("viewmonth3_script")
						
				elseif loadedSettings.month ==3 then
					
						composer.removeScene("view02Map")
						composer.gotoScene("viewmonth4_script")
					
				elseif loadedSettings.month ==4 then
					
						composer.removeScene("view02Map")
						composer.gotoScene("viewmonth5_script")
						
				elseif loadedSettings.month ==5 then
					
						composer.removeScene("view02Map")
						composer.gotoScene("viewmonth6_script")
							
				end

		end

	end

--게임이동
	local function touch2(event)
		if ( event.phase == "began" ) then
			if loadedSettings.game_num ~= 1 then
				-- 봄 피는 꽃 달
				if loadedSettings.month==1 then
					if loadedSettings.month2_event==0 then
						loadedSettings.month2_event = loadedSettings.month2_event + 1
						loadsave.saveTable(loadedSettings,"settings.json")
					end
				end

				if color == "1" then
				--빨강게임 이동
					composer.removeScene("view02Map")
					composer.gotoScene( "view02Map2" )
					
				elseif color == "2" then
				-- 파랑게임 이동
					composer.removeScene("view02Map")
					composer.gotoScene( "view02Map2" )
				elseif color == "3" then
					composer.removeScene("view02Map")
					composer.gotoScene( "view02Map2" )
					
				elseif color == "4" then
				-- 보라게임 이동
					composer.removeScene("view02Map")
					composer.gotoScene( "view02Map2" )
				elseif color == "5" then
				-- 초록게임 이동
					composer.removeScene("view02Map")
					composer.gotoScene( "view02Map2" )
				end

			else 
				composer.removeScene("view02Map")
				composer.gotoScene( "view15limited" )
			end
		end
	end


	local function button()
		maeulbt = display.newImage("image/maeulbt.png")
		maeulbt.x,maeulbt.y = display.contentWidth/2,display.contentHeight*0.52

		sceneGroup:insert(maeulbt)

		gamebt = display.newImage("image/gamebt.png")
		gamebt.x,gamebt.y = display.contentWidth/2,display.contentHeight*0.635
		
		sceneGroup:insert(gamebt)

		maeulbt:addEventListener("touch",touch1)
		gamebt:addEventListener("touch",touch2)
	end

	local function gotohome(event)

		--exit:removeEventListener("tap",gotomap)
		composer.removeScene("view02Map")
		composer.gotoScene("view01Map")

	end




	
	if color =="1" then
		redui = display.newImage("image/red_ui.png")
		redui.x,redui.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(redui)
		button()
		--Runtime:addEventListener("key",key_event)

	elseif color =="2" then
		blueui = display.newImage("image/blue_ui.png")
		blueui.x,blueui.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(blueui)
		button()
		--Runtime:addEventListener("key",key_event)

	elseif color =="3" then
		yellowui = display.newImage("image/yellow_ui.png")
		yellowui.x,yellowui.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(yellowui)
		button()
		--Runtime:addEventListener("key",key_event)

	elseif color =="4" then
		purpleui = display.newImage("image/purple_ui.png")
		purpleui.x,purpleui.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(purpleui)
		button()
		--Runtime:addEventListener("key",key_event)

	elseif color =="5" then
		greenui = display.newImage("image/green_ui.png")
		greenui.x,greenui.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(greenui)
		button()
		--Runtime:addEventListener("key",key_event)

	end

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.69, display.contentHeight*0.26
	exit:addEventListener("tap",gotohome)

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

		composer.removeScene("view02Map")
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
