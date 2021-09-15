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


	local option2 = {
		width = 1280,
		height = 720,
		numFrames = 16
	}


	
	
	local date = graphics.newImageSheet("애니메이션/진짜데이트.png",option2)
	local movie = graphics.newImageSheet("애니메이션/느와르.png",option2)
	local choom = graphics.newImageSheet("애니메이션/춤.png",option2)
	local scard = graphics.newImageSheet("애니메이션/고향.png",option2)
	local read = graphics.newImageSheet("애니메이션/잡지.png",option2)



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



	

	if what_play == 11 then 
		local dating = display.newSprite(date,sequences_shower)
		dating.x,dating.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(dating)
		dating:play()
	elseif what_play == 15 then 
		
		local moviee = display.newSprite(movie,sequences_shower)
		moviee.x, moviee.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(moviee)
		moviee:play()
	elseif what_play == 22 then
		local choomm = display.newSprite(choom,sequences_shower)
		choomm.x,choomm.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(choomm)
		choomm:play()
		
	elseif what_play == 24 then 
		local book = display.newSprite(read,sequences_shower)
		book.x, book.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(book)
		book:play()
		
	elseif what_play == 25 then 
		local bull = display.newSprite(scard,sequences_shower)
		bull.x, bull.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(bull)
		bull:play()
	end


	local month = display.newText("",888,115,"font/잘풀리는오늘 Medium.ttf")
		month:setFillColor(0)
		month.size = 25
		sceneGroup:insert(month)

		if loadedSettings.month == 0 then
			month.text = "이른 봄의 달"
			
		elseif loadedSettings.month == 1 then
			month.text = "꽃 피는 달"
		elseif loadedSettings.month == 2 then
			month.text = "해변달"
		elseif loadedSettings.month == 3 then
			month.text = "단풍달"
		elseif loadedSettings.month == 4 then
			month.text = "도토리 달"
		elseif loadedSettings.month ==5 then
			month.text = "눈꽃 달"
		end

		local former = display.newText("",793,175,"font/잘풀리는오늘 Medium.ttf")
		former.anchorX = 0
		former:setFillColor(0)
		former.size = 15
		former.text = loadedSettings.former1
		sceneGroup:insert(former)

		local former2 = display.newText("",793,197,"font/잘풀리는오늘 Medium.ttf")
		former2.anchorX = 0
		former2:setFillColor(0)
		former2.size = 15
		former2.text = loadedSettings.former2
		sceneGroup:insert(former2)

		local next1 = display.newText("dd",793,254,"font/잘풀리는오늘 Medium.ttf")
		next1.anchorX = 0
		next1:setFillColor(0)
		next1.size = 15
		next1.text = loadedSettings.next1
		sceneGroup:insert(next1)

		local next2 = display.newText("dd",793,276,"font/잘풀리는오늘 Medium.ttf")
		next2.anchorX = 0
		next2:setFillColor(0)
		next2.size = 15
		next2.text = loadedSettings.next2
		sceneGroup:insert(next2)


	local num = 0

	local function touch()

		if num == 1 then

			if loadedSettings.month3_event == 1 then

				loadedSettings.month3_event = loadedSettings.month3_event + 1
				loadsave.saveTable(loadedSettings,"settings.json")

				composer.removeScene("view16activity2")
				composer.gotoScene("viewmonth3_event")
				

			elseif loadedSettings.month4_event == 1 then
				loadedSettings.month4_event = loadedSettings.month4_event + 1
				loadsave.saveTable(loadedSettings,"settings.json")

				composer.removeScene("view16activity2")
				composer.gotoScene("viewmonth4_event")

			elseif loadedSettings.month5_event == 1 then
				loadedSettings.month5_event = loadedSettings.month5_event + 1
				loadsave.saveTable(loadedSettings,"settings.json")

				composer.removeScene("view16activity2")
				composer.gotoScene("viewmonth5_event")

			else 
				composer.removeScene("view16activity2")
				composer.gotoScene("view12Plan")
			end
			
		end

		num = num + 1
			
		
	end

	timer.performWithDelay(3000,touch,0)





	

	

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
		composer.removeScene("view16activity2")
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