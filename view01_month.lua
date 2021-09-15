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

	name = composer.getVariable("name")
	
	local month = display.newText("",display.contentWidth/2,display.contentHeight/2,"font/잘풀리는오늘 Medium.ttf")
	month:setFillColor(0)
	month.size = 500
	sceneGroup:insert(month)

	num = 0

	local loadedSettings = loadsave.loadTable( "settings.json" )
	--local home = audio.loadStream( "음악/집.mp3" )


	local function touch(event)

		if event.phase == "began" then
			if loadedSettings.month == 4 and num == 1 then
				--audio.pause(home)
				--local myBday = audio.loadStream("음악/myBday.mp3")
				--audio.play(myBday)
				composer.removeScene("view01_month")
				composer.gotoScene("view17myBirthday")	
			elseif num == 1 then
				--audio.pause(home)
				--audio.play(home)
				--composer.setVariable("home",home)
				composer.removeScene("view01_month")
				composer.gotoScene("view00Room")
			end

			num = num + 1
		end
			
		
	end

	loadedSettings.name = name
	loadsave.saveTable(loadedSettings,"settings.json")

	if loadedSettings.month == 0 then
		--month.text = "1월"
		month1 = display.newImage("월별 일러스트/월별일러스트_1.이른 봄의 달.png")
		month1.x, month1.y = display.contentWidth/2,display.contentHeight/2
		month1:addEventListener("touch",touch)
		sceneGroup:insert(month1)
		loadedSettings.former01 = "-파랑 마을 위즈의 생일"
		loadedSettings.former02 = ""
		loadedSettings.former1 = "-위즈 생일"
		loadedSettings.former2 = ""
		loadedSettings.next1 = "-블리 생일"
		loadedSettings.next2 = "-주인공 생일"
		loadsave.saveTable(loadedSettings,"settings.json")
		print("1월")
	elseif loadedSettings.month == 1 then
		month2 = display.newImage("월별 일러스트/월별일러스트_2.꽃 피는 달.png")
		month2.x, month2.y = display.contentWidth/2,display.contentHeight/2
		month2:addEventListener("touch",touch)
		sceneGroup:insert(month2)
		loadedSettings.former02 = "-빨강 마을 블리의 생일"
		loadedSettings.former01 = "-나의 생일"
		loadedSettings.former2 = "-블리 생일"
		loadedSettings.former1= "-나의 생일"
		loadedSettings.next1 = "-조이 생일"
		loadedSettings.next2 = ""
		loadsave.saveTable(loadedSettings,"settings.json")
		--month.text = "2월"
	elseif loadedSettings.month == 2 then
		month3 = display.newImage("월별 일러스트/월별일러스트_3.해변달.png")
		month3.x, month3.y = display.contentWidth/2,display.contentHeight/2
		month3:addEventListener("touch",touch)
		sceneGroup:insert(month3)
		
		--month.text = "3월"
		loadedSettings.former1 = "-조이 생일"
		loadedSettings.former2 = ""
		loadedSettings.former01 = "-노랑 마을 조이의 생일"
		loadedSettings.former02 = ""
		loadedSettings.next1 = "-솔리 생일"
		loadedSettings.next2 = ""
		loadsave.saveTable(loadedSettings,"settings.json")
	elseif loadedSettings.month == 3 then
		month4 = display.newImage("월별 일러스트/월별일러스트_4.단풍달.png")
		month4.x, month4.y = display.contentWidth/2,display.contentHeight/2
		month4:addEventListener("touch",touch)
		sceneGroup:insert(month4)
		loadedSettings.former1 = "-솔리 생일"
		loadedSettings.former2 = ""
		loadedSettings.former01 = "-초록 마을 솔리의 생일"
		loadedSettings.former02 = ""
		loadedSettings.next1 = "-오싹한 도토리 축제"
		loadedSettings.next2 = ""
		loadsave.saveTable(loadedSettings,"settings.json")
	elseif loadedSettings.month == 4 then
		month5 = display.newImage("월별 일러스트/월별일러스트_5.도토리달.png")
		month5.x, month5.y = display.contentWidth/2,display.contentHeight/2
		month5:addEventListener("touch",touch)
		sceneGroup:insert(month5)
		
		loadedSettings.former1 = "-오싹한 도토리 축제"
		loadedSettings.former2 = ""
		loadedSettings.former01 = "-오싹한 도토리 축제"
		loadedSettings.former02 = ""
		loadedSettings.next1 = "-레이 생일"
		loadedSettings.next2 = ""
		loadsave.saveTable(loadedSettings,"settings.json")

	elseif loadedSettings.month == 5 then
		month6 = display.newImage("월별 일러스트/월별일러스트_6.눈꽃달.png")
		month6.x, month6.y = display.contentWidth/2,display.contentHeight/2
		month6:addEventListener("touch",touch)
		sceneGroup:insert(month6)
		month.text = "마지막 달"
		loadedSettings.former1 = "-레이 생일"
		loadedSettings.former2 = ""
		loadedSettings.former01 = "-보라 마을 레이의 생일"
		loadedSettings.former02 = ""
		loadedSettings.next1 = ""
		loadedSettings.next2 = ""
		loadsave.saveTable(loadedSettings,"settings.json")
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

		composer.removeScene("xetmonth")
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