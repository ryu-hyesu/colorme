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
	
	local background = display.newImageRect("홈화면소스모음/홈-배경(가구O)-01.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local back = display.newRect(display.contentWidth/2,display.contentHeight/2,display.contentWidth,display.contentHeight)
	back:setFillColor(0)
	back.alpha = 0
	sceneGroup:insert(back)
	transition.to(back,{alpha=0.5})
	local loadedSettings = loadsave.loadTable( "settings.json" ) 


	local option = {
		width = 824,
		height = 556,
		numFrames = 16
	}

	local option2 = {
		width = 1280,
		height = 720,
		numFrames = 16
	}

	local sheet_idol = graphics.newImageSheet("애니메이션/아이돌.png",option)
	local sheet_cucom = graphics.newImageSheet("애니메이션/진짜진짜오이.png",option)

	local sheet_shower = graphics.newImageSheet("애니메이션/거품목욕.png",option)
	local sheet_mint = graphics.newImageSheet("애니메이션/민초토론.png",option)
	local sheet_dog = graphics.newImageSheet("애니메이션/유기견봉사.png",option)

	


	local sequences_shower = {
		{
			name = "shower",
			start = 1,
			count = 15,
			time = 1500,
			loopCount=0,
			loopDirection = "forward"
		}
	}

	local loadedSettings = loadsave.loadTable( "settings.json" )

	what_play = composer.getVariable("what_play")


	if what_play == 23 then
		local oioi = display.newSprite(sheet_cucom,sequences_shower)
		oioi.x, oioi.y  =display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(oioi)
		oioi:play()
	elseif what_play ==12 then
		local showering = display.newSprite(sheet_shower,sequences_shower)
		showering.x,showering.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(showering)
		showering:play()
	elseif what_play == 13 then 
		local help = display.newSprite(sheet_dog,sequences_shower)
		help.x, help.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(help)
		help:play()
	elseif what_play == 14 then 
		local minto = display.newSprite(sheet_mint,sequences_shower)
		minto.x,minto.y =display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(minto)
		minto:play()
	elseif what_play == 21 then 
		local idol_con = display.newSprite(sheet_idol,sequences_shower)
		idol_con.x, idol_con.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(idol_con)
		idol_con:play()
	end



	local num = 0

	local function touch()

		if num == 1 then

			if loadedSettings.month3_event == 1 then

				loadedSettings.month3_event = loadedSettings.month3_event + 1
				loadsave.saveTable(loadedSettings,"settings.json")

				composer.removeScene("view16activity")
				composer.gotoScene("viewmonth3_event")
				

			elseif loadedSettings.month4_event == 1 then
				loadedSettings.month4_event = loadedSettings.month4_event + 1
				loadsave.saveTable(loadedSettings,"settings.json")

				composer.removeScene("view16activity")
				composer.gotoScene("viewmonth4_event")

			elseif loadedSettings.month5_event == 1 then
				loadedSettings.month5_event = loadedSettings.month5_event + 1
				loadsave.saveTable(loadedSettings,"settings.json")

				composer.removeScene("view16activity")
				composer.gotoScene("viewmonth5_event")

			else 
				composer.removeScene("view16activity")
				composer.gotoScene("view12Plan")
			end
			
		end

		num = num + 1
			
		
	end

	timer.performWithDelay(500,touch,0)





	

	

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
		composer.removeScene("view16activity")
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