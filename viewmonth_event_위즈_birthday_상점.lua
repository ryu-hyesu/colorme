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
	local background = display.newImageRect("bag/bg.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	--[[--사진 변환 함수--
	local function itemPop(item)
		local popup
		if item == "bag/block.png" then
			popup = "bagpop/block.png"
		elseif item =="bag/dog.png" then
			popup = "bagpop/dog.png"
		elseif item =="bag/duck.png" then
			popup = "bagpop/duck.png"
		elseif item =="bag/heart.png" then
			popup = "bagpop/heart.png"
		elseif item =="bag/kit.png" then
			popup = "bagpop/kit.png"
		elseif item =="bag/perfume.png" then
			popup = "bagpop/perfume.png"
		elseif item =="bag/pie.png" then
			popup = "bagpop/pie.png"
		elseif item =="bag/plant.png" then
			popup = "bagpop/plant.png"
		elseif item =="bag/tiger.png" then
			popup = "bagpop/tiger.png"
		elseif item =="bag/speaker.png" then
			popup = "bagpop/speaker.png"
		elseif item =="bag/pencil.png" then
			popup = "bagpop/pencil.png"
		end
		return popup
	end
	]]
	--팝업 닫기--
	local function closePop(event)
		exit2.alpha = 0
		popup2.alpha = 0
	end

	--팝업창 띄우는 이벤트
	local function click( event )
		loadedItems.itemPop = event.target.id
		loadsave.saveTable(loadedItems,"items.json")
		location = event.target.name
		composer.setVariable("location", location)
		print(location)
		print("팝업 눌렀을때")
		
		what = composer.getVariable("what")
		composer.setVariable("what", what)
		composer.removeScene("viewmonth_event_위즈_birthday_상점")
		composer.gotoScene( "viewmonth_event_위즈_birthday_상점_사용" )

	end
	
	--반복문 정리--
	local function image( num )
		if num == 1 then
			local item1 = display.newImage(loadedItems.item1)
			item1.x, item1.y =  display.contentWidth*0.117, display.contentHeight*0.37
			item1.id = loadedItems.item1
			sceneGroup:insert(item1)
			item1.name = 1
			item1:addEventListener("touch", click) --item1 -> eventtarget
		elseif num == 2 then
			local item2 = display.newImage(loadedItems.item2)
			item2.x, item2.y =  display.contentWidth*0.274, display.contentHeight*0.37
			item2.id = loadedItems.item2
			sceneGroup:insert(item2)
			item2.name = 2
			item2:addEventListener("touch", click)
		elseif num == 3 then
			local item3 = display.newImage(loadedItems.item3)
			item3.x, item3.y =  display.contentWidth*0.431, display.contentHeight*0.37
			sceneGroup:insert(item3)
			item3.name = 3
			item3.id = loadedItems.item3
			item3:addEventListener("touch", click)
		elseif num == 4 then
			local item4 = display.newImage(loadedItems.item4)
			item4.x, item4.y =  display.contentWidth*0.588, display.contentHeight*0.37
			sceneGroup:insert(item4)
			item4.name = 4
			item4.id = loadedItems.item4
			item4:addEventListener("touch", click)
		elseif num == 5 then
			local item5 = display.newImage(loadedItems.item5)
			item5.x, item5.y =  display.contentWidth*0.745, display.contentHeight*0.37
			sceneGroup:insert(item5)
			item5.name = 5
			item5.id = loadedItems.item5
			item5:addEventListener("touch", click)
		elseif num == 6 then
			local item6 = display.newImage(loadedItems.item6)
			item6.x, item6.y =  display.contentWidth*0.902, display.contentHeight*0.37
			sceneGroup:insert(item6)
			item6.name = 6
			item6.id = loadedItems.item6
			item6:addEventListener("touch", click)
			elseif num == 7 then
			local item7 = display.newImage(loadedItems.item7)
			item7.x, item7.y =  display.contentWidth*0.117, display.contentHeight*0.745
			sceneGroup:insert(item7)
			item7.name = 7
			item7.id = loadedItems.item7
			item7:addEventListener("touch", click)
		elseif num == 8 then
			local item8 = display.newImage(loadedItems.item8)
			item8.x, item8.y =  display.contentWidth*0.274, display.contentHeight*0.745
			sceneGroup:insert(item8)
			item8.name = 8
			item8.id = loadedItems.item8
			item8:addEventListener("touch", click)
		elseif num == 9 then
			local item9 = display.newImage(loadedItems.item9)
			item9.x, item9.y =  display.contentWidth*0.431, display.contentHeight*0.745
			sceneGroup:insert(item9)
			item9.name = 9
			item9.id = loadedItems.item9
			item9:addEventListener("touch", click)
		elseif num == 10 then
			local item10 = display.newImage(loadedItems.item10)
			item10.x, item10.y =  display.contentWidth*0.588, display.contentHeight*0.745
			sceneGroup:insert(item10)
			item10.name = 10
			item10.id = loadedItems.item10
			item10:addEventListener("touch", click)
		elseif num == 11 then
			local item11 = display.newImage(loadedItems.item11)
			item11.x, item11.y =  display.contentWidth*0.745, display.contentHeight*0.745
			sceneGroup:insert(item11)
			item11.name = 11
			item11.id = loadedItems.item11
			item11:addEventListener("touch", click)
		elseif num == 12 then
			local item12 = display.newImage(loadedItems.item12)
			item12.x, item12.y =  display.contentWidth*0.902, display.contentHeight*0.745
			sceneGroup:insert(item12)
			item12.name = 12
			item12.id = loadedItems.item12
			item12:addEventListener("touch", click)
		end
	end


	--인벤토리--
	local count = loadedItems.itemCount
	if count == 0 then
		what = composer.getVariable("what")
		if what == 1 then
			composer.removeScene("viewmonth_event_위즈_birthday_상점")
			composer.gotoScene("viewz_bully - 복사본")
		elseif what == 2 then 
			composer.removeScene("viewmonth_event_위즈_birthday_상점")
			composer.gotoScene("viewz_joy - 복사본")
		elseif what == 3 then 
			composer.removeScene("viewmonth_event_위즈_birthday_상점")
			composer.gotoScene("viewz_solly - 복사본")
		elseif what == 4 then 
			composer.removeScene("viewmonth_event_위즈_birthday_상점")
			composer.gotoScene("viewz_wiz - 복사본")
		elseif what == 5 then 
			composer.removeScene("viewmonth_event_위즈_birthday_상점")
			composer.gotoScene("viewz_lay - 복사본")
		end
	elseif count == 1 then
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

	--[[--x버튼 누르면 마을지도로 돌아가는 이벤트--

	local function gotohome(event)

		--exit:removeEventListener("tap",gotomap)
		composer.removeScene("view11Bag")
		composer.gotoScene("view00Room")

	end

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.955, display.contentHeight*0.08
	exit:addEventListener("tap",gotohome)]]


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