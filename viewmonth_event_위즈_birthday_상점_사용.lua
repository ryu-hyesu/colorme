-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------
local loadsave = require( "loadsave" )
local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	local loadedItems= loadsave.loadTable( "items.json" )
	local location = composer.getVariable("location")
	local background = display.newImageRect("bag/bg.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	--사진 변환 함수--
	local function itemPop(item)
		--local item00 = display.newImage("image/공통-아이템사용안내.png")
		--item00.x, item00.y =  display.contentWidth/2, display.contentHeight/2
		--item00.id = loadedItems.item00
		--sceneGroup:insert(item00)
		local popup
		--popup00 = "image/공통-아이템사용안내.png"
		if item == "bag/block.png" then
			popup = "bag/block.png"

		elseif item =="bag/dog.png" then
			popup = "bag/dog.png"
		elseif item =="bag/duck.png" then
			popup = "bag/duck.png"
		elseif item =="bag/heart.png" then
			popup = "bag/heart.png"
		elseif item =="bag/kit.png" then
			popup = "bag/kit.png"
		elseif item =="bag/perfume.png" then
			popup = "bag/perfume.png"
		elseif item =="bag/pie.png" then
			popup = "bag/pie.png"
		elseif item =="bag/plant.png" then
			popup = "bag/plant.png"
		elseif item =="bag/tiger.png" then
			popup = "bag/tiger.png"
		elseif item =="bag/speaker.png" then
			popup = "bag/speaker.png"
		elseif item =="bag/pencil.png" then
			popup = "bag/pencil.png"
		end
		--popup.x, popup.y =  display.contentWidth*0.117, display.contentHeight*0.37
		return popup
	end

	--팝업 닫기--
	local function closePop(event)
		composer.removeScene("viewmonth_event_위즈_birthday_상점_사용")
		composer.gotoScene( "viewmonth_event_위즈_birthday_상점" )
	end

	local items = {}
	
	items[1] = loadedItems.item1--/loadedSettings.item1
	items[2] = loadedItems.item2--/loadedSettings.item1	
	items[3] = loadedItems.item3--/loadedSettings.item1		
	items[4] = loadedItems.item4--/loadedSettings.item1		
	items[5] = loadedItems.item5--/loadedSettings.item1		
	items[6] = loadedItems.item6--/loadedSettings.item1		
	items[7] = loadedItems.item7--/loadedSettings.item1		
	items[8] = loadedItems.item8--/loadedSettings.item1		
	items[9] = loadedItems.item9--/loadedSettings.item1		
	items[10] = loadedItems.item10--/loadedSettings.item1		
	items[11] = loadedItems.item11--/loadedSettings.item1		
	items[12] = loadedItems.item12--/loadedSettings.item1

	local function openPop(event)
		if event.phase == "began" then
			--composer.removeScene("viewmonth_event_위즈_birthday_상점_사용")
			--composer.gotoScene( "viewmonth_event_위즈_birthday_상점" )
			composer.setVariable("name", loadedItems.itemPop)--아이템 전달
			--local i = location
			items[location] = ""
			print(location)
			print("yes버튼 눌렀을때")
			if location == 1 then
				loadedItems.item1 = items[2]
				loadedItems.item2 = items[3]
				loadedItems.item3 = items[4]
				loadedItems.item4 = items[5]	
				loadedItems.item5 = items[6]
				loadedItems.item6 = items[7]
				loadedItems.item7 = items[8]
				loadedItems.item8 = items[9]	
				loadedItems.item9 = items[10]
				loadedItems.item10 = items[11]
				loadedItems.item11 = items[12]
				loadedItems.item12 = ""
			elseif location == 2 then
				loadedItems.item2 = items[3]
				loadedItems.item3 = items[4]
				loadedItems.item4 = items[5]	
				loadedItems.item5 = items[6]
				loadedItems.item6 = items[7]
				loadedItems.item7 = items[8]
				loadedItems.item8 = items[9]	
				loadedItems.item9 = items[10]
				loadedItems.item10 = items[11]
				loadedItems.item11 = items[12]
				loadedItems.item12 = ""
			elseif location == 3 then
				loadedItems.item3 = items[4]
				loadedItems.item4 = items[5]	
				loadedItems.item5 = items[6]
				loadedItems.item6 = items[7]
				loadedItems.item7 = items[8]
				loadedItems.item8 = items[9]	
				loadedItems.item9 = items[10]
				loadedItems.item10 = items[11]
				loadedItems.item11 = items[12]
				loadedItems.item12 = ""
			elseif location == 4 then
				loadedItems.item4 = items[5]	
				loadedItems.item5 = items[6]
				loadedItems.item6 = items[7]
				loadedItems.item7 = items[8]
				loadedItems.item8 = items[9]	
				loadedItems.item9 = items[10]
				loadedItems.item10 = items[11]
				loadedItems.item11 = items[12]
				loadedItems.item12 = ""
			elseif location == 5 then	
				loadedItems.item5 = items[6]
				loadedItems.item6 = items[7]
				loadedItems.item7 = items[8]
				loadedItems.item8 = items[9]	
				loadedItems.item9 = items[10]
				loadedItems.item10 = items[11]
				loadedItems.item11 = items[12]
				loadedItems.item12 = ""
			elseif location == 6 then	
				loadedItems.item6 = items[7]
				loadedItems.item7 = items[8]
				loadedItems.item8 = items[9]	
				loadedItems.item9 = items[10]
				loadedItems.item10 = items[11]
				loadedItems.item11 = items[12]
				loadedItems.item12 = ""
			elseif location == 7 then	
				loadedItems.item7 = items[8]
				loadedItems.item8 = items[9]	
				loadedItems.item9 = items[10]
				loadedItems.item10 = items[11]
				loadedItems.item11 = items[12]
				loadedItems.item12 = ""
			elseif location == 8 then	
				loadedItems.item8 = items[9]	
				loadedItems.item9 = items[10]
				loadedItems.item10 = items[11]
				loadedItems.item11 = items[12]
				loadedItems.item12 = ""
			elseif location == 9 then	
				loadedItems.item9 = items[10]
				loadedItems.item10 = items[11]
				loadedItems.item11 = items[12]
				loadedItems.item12 = ""
			elseif location == 10 then	
				loadedItems.item10 = items[11]
				loadedItems.item11 = items[12]
				loadedItems.item12 = ""
			elseif location == 11 then	
				loadedItems.item11 = items[12]
				loadedItems.item12 = ""
			elseif location == 12 then	
				loadedItems.item12 = ""
			end

			--[[loadedItems.item1 = items[1]
			loadedItems.item2 = items[2]
			loadedItems.item3 = items[3]
			loadedItems.item4 = items[4]	
			loadedItems.item5 = items[5]
			loadedItems.item6 = items[6]
			loadedItems.item7 = items[7]
			loadedItems.item8 = items[8]	
			loadedItems.item9 = items[9]
			loadedItems.item10 = items[10]
			loadedItems.item11 = items[11]
			loadedItems.item12 = items[12]]
			loadedItems.itemCount = loadedItems.itemCount - 1
			loadsave.saveTable(loadedItems,"items.json")
			
			what = composer.getVariable("what")
			composer.removeScene("viewmonth_event_위즈_birthday_상점_사용")
			if what == 1 then
				composer.gotoScene("viewz_bully")
			elseif what == 2 then
				composer.gotoScene("viewz_joy")
			elseif what == 3 then
				composer.gotoScene("viewz_solly")
			elseif what == 4 then
				composer.gotoScene("viewz_wiz")
			elseif what == 5 then
				composer.gotoScene("viewz_lay")
			end
		end
	end
	
	--반복문 정리--
	local function image( num )
		if num == 1 then
			local item1 = display.newImage(loadedItems.item1)
			item1.x, item1.y =  display.contentWidth*0.117, display.contentHeight*0.37
			item1.id = loadedItems.item1
			sceneGroup:insert(item1)
		elseif num == 2 then
			local item2 = display.newImage(loadedItems.item2)
			item2.x, item2.y =  display.contentWidth*0.274, display.contentHeight*0.37
			item2.id = loadedItems.item2
			sceneGroup:insert(item2)
		elseif num == 3 then
			local item3 = display.newImage(loadedItems.item3)
			item3.x, item3.y =  display.contentWidth*0.431, display.contentHeight*0.37
			sceneGroup:insert(item3)
			item3.id = loadedItems.item3
		elseif num == 4 then
			local item4 = display.newImage(loadedItems.item4)
			item4.x, item4.y =  display.contentWidth*0.588, display.contentHeight*0.37
			sceneGroup:insert(item4)
			item4.id = loadedItems.item4
		elseif num == 5 then
			local item5 = display.newImage(loadedItems.item5)
			item5.x, item5.y =  display.contentWidth*0.745, display.contentHeight*0.37
			sceneGroup:insert(item5)
			item5.id = loadedItems.item5
		elseif num == 6 then
			local item6 = display.newImage(loadedItems.item6)
			item6.x, item6.y =  display.contentWidth*0.902, display.contentHeight*0.37
			sceneGroup:insert(item6)
			item6.id = loadedItems.item6
			elseif num == 7 then
			local item7 = display.newImage(loadedItems.item7)
			item7.x, item7.y =  display.contentWidth*0.117, display.contentHeight*0.745
			sceneGroup:insert(item7)
			item7.id = loadedItems.item7
		elseif num == 8 then
			local item8 = display.newImage(loadedItems.item8)
			item8.x, item8.y =  display.contentWidth*0.274, display.contentHeight*0.745
			sceneGroup:insert(item8)
			item8.id = loadedItems.item8
		elseif num == 9 then
			local item9 = display.newImage(loadedItems.item9)
			item9.x, item9.y =  display.contentWidth*0.431, display.contentHeight*0.745
			sceneGroup:insert(item9)
			item9.id = loadedItems.item9
		elseif num == 10 then
			local item10 = display.newImage(loadedItems.item10)
			item10.x, item10.y =  display.contentWidth*0.588, display.contentHeight*0.745
			sceneGroup:insert(item10)
			item10.id = loadedItems.item10
		elseif num == 11 then
			local item11 = display.newImage(loadedItems.item11)
			item11.x, item11.y =  display.contentWidth*0.745, display.contentHeight*0.745
			sceneGroup:insert(item11)
			item11.id = loadedItems.item11
		elseif num == 12 then
			local item12 = display.newImage(loadedItems.item12)
			item12.x, item12.y =  display.contentWidth*0.902, display.contentHeight*0.745
			sceneGroup:insert(item12)
			item12.id = loadedItems.item12
		end
	end

	

	--인벤토리--
	local count = loadedItems.itemCount
	if count == 1 then
		image(1)
	elseif count == 2 then
		image(1)
		image(2)
	elseif count == 3 then
		image(1)
		image(2)
		image(3)
	elseif count == 4 then
		image(1)
		image(2)
		image(3)
		image(4)
	elseif count == 5 then
		image(1)
		image(2)
		image(3)
		image(4)
		image(5)
	elseif count == 6 then
		image(1)
		image(2)
		image(3)
		image(4)
		image(5)
		image(6)
	elseif count == 7 then
		image(1)
		image(2)
		image(3)
		image(4)
		image(5)
		image(6)
		image(7)
	elseif count == 8 then
		image(1)
		image(2)
		image(3)
		image(4)
		image(5)
		image(6)
		image(7)
		image(8)
	elseif count == 9 then
		image(1)
		image(2)
		image(3)
		image(4)
		image(5)
		image(6)
		image(7)
		image(8)
		image(9)
	elseif count == 10 then
		image(1)
		image(2)
		image(3)
		image(4)
		image(5)
		image(6)
		image(7)
		image(8)
		image(9)
		image(10)
	elseif count == 11 then
		image(1)
		image(2)
		image(3)
		image(4)
		image(5)
		image(6)
		image(7)
		image(8)
		image(9)
		image(10)
		image(11)
	elseif count == 12 then
		image(1)
		image(2)
		image(3)
		image(4)
		image(5)
		image(6)
		image(7)
		image(8)
		image(9)
		image(10)
		image(11)
		image(12)
	end


	--팝업창 띄우는 이벤트
	
	local popup3 = display.newImage("image/공통-아이템사용안내.png", display.contentWidth/2, display.contentHeight/2)
	--item00.x, item00.y =  display.contentWidth/2, display.contentHeight/2
	popup3.id = loadedItems.item00
	sceneGroup:insert(popup3)
	popup2 = display.newImage(itemPop(loadedItems.itemPop) , display.contentWidth/2, display.contentHeight/2 - 70)
	sceneGroup:insert(popup2)
	exit2 = display.newImage("스케줄(스탯)소스모음2 (1)/스케줄(스탯)-활동마치기no버튼.png", display.contentWidth/2 + 140, 505)
	sceneGroup:insert(exit2)
	local yespop = display.newImage("스케줄(스탯)소스모음2 (1)/스케줄(스탯)-활동마치기yes버튼.png", display.contentWidth/2 - 140, 505)
	--local nopop = display.newImage("스케줄(스탯)소스모음2 (1)/스케줄(스탯)-활동마치기no버튼.png", display.contentWidth/2 + 60, 505)
	sceneGroup:insert(yespop)
	--sceneGroup:insert(nopop)
	print(popup3)
	print(popup2)
	print(exit2)
	print(yespop)
	--print(nopop)

	exit2:addEventListener("touch", closePop)
	yespop:addEventListener("touch", openPop)

	--x버튼 누르면 마을지도로 돌아가는 이벤트--

	local function gotohome(event)

		--exit:removeEventListener("tap",gotomap)
		composer.removeScene("viewmonth_event_위즈_birthday_상점")
		composer.gotoScene("view00Room")

	end--image/공통-x버튼.png

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.955, display.contentHeight*0.08
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