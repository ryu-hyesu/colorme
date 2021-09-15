
-----------------------------------------------------------------------------------------
--
-- view01Map.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require( "loadsave" )



function scene:create( event )
	local sceneGroup = self.view

	--상점이미지, 단 뷰3처럼 터치이벤트없음--
	local loadedSettings = loadsave.loadTable( "settings.json" )
	local loadedItems= loadsave.loadTable( "items.json" )

	local background = display.newImageRect("store/bg.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local pen = display.newImage("store/pen.png")
	pen.x, pen.y =  display.contentWidth*0.117, display.contentHeight*0.31
	sceneGroup:insert(pen)


	local dog_rice = display.newImage("store/dogrice.png")
	dog_rice.x, dog_rice.y =  display.contentWidth*0.274, display.contentHeight*0.33
	sceneGroup:insert(dog_rice)


	local duck = display.newImage("store/duck.png")
	duck.x,duck.y =  display.contentWidth*0.587, display.contentHeight*0.335
	sceneGroup:insert(duck)


	local plant = display.newImage("store/plant.png")
	plant.x,plant.y =  display.contentWidth*0.584, display.contentHeight*0.685
	sceneGroup:insert(plant)


	local fire = display.newImage("store/fire.png")
	fire.x,fire.y =  display.contentWidth*0.424, display.contentHeight*0.719
	sceneGroup:insert(fire)


	local heart = display.newImage("store/heart.png")
	heart.x,heart.y =  display.contentWidth*0.739, display.contentHeight*0.327
	sceneGroup:insert(heart)


	local pie = display.newImage("store/pie.png")
	pie.x,pie.y =  display.contentWidth*0.899, display.contentHeight*0.333
	sceneGroup:insert(pie)


	local purf = display.newImage("store/purf.png")
	purf.x,purf.y =  display.contentWidth*0.125, display.contentHeight*0.692
	sceneGroup:insert(purf)


	local speaker = display.newImage("store/speaker.png")
	speaker.x,speaker.y =  display.contentWidth*0.274, display.contentHeight*0.705
	sceneGroup:insert(speaker)


	local tiger = display.newImage("store/tiger.png")
	tiger.x,tiger.y =  display.contentWidth*0.739, display.contentHeight*0.697
	sceneGroup:insert(tiger)


	local toy = display.newImage("store/toy.png")
	toy.x,toy.y =  display.contentWidth*0.424, display.contentHeight*0.33
	sceneGroup:insert(toy)

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.955, display.contentHeight*0.08
-- 구매 --

	local num = 0 

	if loadedSettings.month == 0 then
		print("이벤트!!")
		loadedSettings.month1_event = loadedSettings.month1_event + 1
		loadsave.saveTable(loadedSettings,"settings.json")
	end

	-- 구매 반복문 --
	local function gume( money, itemName )
		if (loadedSettings.money - money) >= 0 and loadedItems.itemCount < 12 then
			loadedItems.itemCount = loadedItems.itemCount + 1
			if loadedItems.itemCount == 1 then
				loadedItems.item1 = itemName
			elseif loadedItems.itemCount == 2 then
				loadedItems.item2 = itemName
			elseif loadedItems.itemCount == 3 then
				loadedItems.item3 = itemName
			elseif loadedItems.itemCount == 4 then
				loadedItems.item4 = itemName
			elseif loadedItems.itemCount == 5 then
				loadedItems.item5 = itemName
			elseif loadedItems.itemCount == 6 then
				loadedItems.item6 = itemName
			elseif loadedItems.itemCount == 7 then
				loadedItems.item7 = itemName
			elseif loadedItems.itemCount == 8 then
				loadedItems.item8 = itemName
			elseif loadedItems.itemCount == 9 then
				loadedItems.item9 = itemName
			elseif loadedItems.itemCount == 10 then
				loadedItems.item10 = itemName
			elseif loadedItems.itemCount == 11 then
				loadedItems.item11 = itemName
			elseif loadedItems.itemCount == 12 then
				loadedItems.item12 = itemName
			end
			loadedSettings.money = loadedSettings.money - money
			loadsave.saveTable(loadedSettings,"settings.json")
			loadsave.saveTable(loadedItems,"items.json")
			composer.removeScene("view04StoreItem")
			composer.gotoScene("view03Store")
			else 
				composer.removeScene("view04StoreItem")
				composer.gotoScene("view04Storestop")
			end
	end


	local function buy(event)
		if event.phase == "began" then
			if event.target.name == 1 then
				gume(10, "bag/pencil.png")
			elseif event.target.name == 2 then
				gume(16, "bag/dog.png")
			elseif event.target.name == 3 then
				gume(15, "bag/kit.png")
			elseif event.target.name == 4 then
				gume(14, "bag/duck.png")
			elseif event.target.name == 5 then
				gume(18, "bag/heart.png")
			elseif event.target.name == 6 then
				gume(20, "bag/pie.png")
			elseif event.target.name == 7 then
				gume(20, "bag/perfume.png")
			elseif event.target.name == 8 then
				gume(20, "bag/speaker.png")
			elseif event.target.name == 9 then
				gume(25, "bag/kit.png")
			elseif event.target.name == 10 then
				gume(25, "bag/plant.png")
			elseif event.target.name == 11 then
				gume(25, "bag/tiger.png")
			end
		end
	end


	--버튼--



	--뷰3에서 넘어온 정보 가져와서 구매창 띄움--

	name = composer.getVariable("name")

	if name == "pen" then

		local show = display.newImage("store/상점-구입창(스마트연필).png")
		show.x,show.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show)
		bt1 = display.newImage("store/상점-구입창(구매버튼).png")
		bt1.x,bt1.y = display.contentWidth/2,display.contentHeight*0.675
		sceneGroup:insert(bt1)
		bt1.name = 1
		bt1:addEventListener("touch",buy)

		
		
	elseif name == "dog_rice" then

		local show1 = display.newImage("store/상점-구입창(냠냠고급사료).png")
		show1.x,show1.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show1)
		bt2 = display.newImage("store/상점-구입창(구매버튼).png")
		bt2.x,bt2.y = display.contentWidth/2,display.contentHeight*0.675
		sceneGroup:insert(bt2)
		bt2.name = 2
		bt2:addEventListener("touch",buy)

	elseif name == "toy" then
		local show2 = display.newImage("store/상점-구입창(뾰족블록세트).png")
		show2.x,show2.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show2)
		bt3 = display.newImage("store/상점-구입창(구매버튼).png")
		bt3.x,bt3.y = display.contentWidth/2,display.contentHeight*0.675
		sceneGroup:insert(bt3)
		bt3.name = 3
		bt3:addEventListener("touch",buy)

	elseif name == "duck" then
		local show3 = display.newImage("store/상점-구입창(노랑목욕오리).png")
		show3.x,show3.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show3)
		bt4 = display.newImage("store/상점-구입창(구매버튼).png")
		bt4.x,bt4.y = display.contentWidth/2,display.contentHeight*0.675
		sceneGroup:insert(bt4)
		bt4.name = 4
		bt4:addEventListener("touch",buy)
	elseif name == "heart" then

		local show4 = display.newImage("store/상점-구입창(하트하트응원봉).png")
		show4.x,show4.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show4)
		bt5 = display.newImage("store/상점-구입창(구매버튼).png")
		bt5.x,bt5.y = display.contentWidth/2,display.contentHeight*0.675
		sceneGroup:insert(bt5)
		bt5.name = 5
		bt5:addEventListener("touch",buy)
	elseif name== "pie" then
		local show5 = display.newImage("store/상점-구입창(마마손파이).png")
		show5.x,show5.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show5)
		bt6 = display.newImage("store/상점-구입창(구매버튼).png")
		bt6.x,bt6.y = display.contentWidth/2,display.contentHeight*0.675
		sceneGroup:insert(bt6)
		bt6.name = 6
		bt6:addEventListener("touch",buy)
	elseif name == "purf" then
		local show6 = display.newImage("store/상점-구입창(블랙체리향수).png")
		show6.x,show6.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show6)
		bt7 = display.newImage("store/상점-구입창(구매버튼).png")
		bt7.x,bt7.y = display.contentWidth/2,display.contentHeight*0.675
		sceneGroup:insert(bt7)
		bt7.name = 7
		bt7:addEventListener("touch",buy)
	elseif name == "speaker" then
		local show7 = display.newImage("store/상점-구입창(두배로스피커).png")
		show7.x,show7.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show7)
		speaker_price = 25
		bt8 = display.newImage("store/상점-구입창(구매버튼).png")
		bt8.x,bt8.y = display.contentWidth/2,display.contentHeight*0.675
		sceneGroup:insert(bt8)
		bt8.name = 8
		bt8:addEventListener("touch",buy)
	elseif name == "fire" then
		local show8 = display.newImage("store/상점-구입창(물속불피우기실험키트).png")
		show8.x,show8.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show8)
		bt9 = display.newImage("store/상점-구입창(구매버튼).png")
		bt9.x,bt9.y = display.contentWidth/2,display.contentHeight*0.675
		sceneGroup:insert(bt9)
		bt9.name = 9
		bt9:addEventListener("touch",buy)

	elseif name == "plant" then
		local show9 = display.newImage("store/상점-구입창(봄피는꽃화분).png")
		show9.x,show9.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show9)

		bt10 = display.newImage("store/상점-구입창(구매버튼).png")
		bt10.x,bt10.y = display.contentWidth/2,display.contentHeight*0.675
		sceneGroup:insert(bt10)
		bt10.name = 10
		bt10:addEventListener("touch",buy)
	elseif name == "tiger" then
		local show10 = display.newImage("store/상점-구입창(호랑이가죽).png")
		show10.x,show10.y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(show10)
		bt11 = display.newImage("store/상점-구입창(구매버튼).png")
		bt11.x,bt11.y = display.contentWidth/2,display.contentHeight*0.675
		sceneGroup:insert(bt11)
		bt11.name = 11
		bt11:addEventListener("touch",buy)
	end


	--esc키 누르면 뷰3으로 넘어감--

		

	local function gotohome(event)
		if event.phase == "began" then

				composer.removeScene("view04StoreItem")
				composer.gotoScene("view03Store")
		end
		
	end


	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.69, display.contentHeight*0.24
	exit:addEventListener("touch",gotohome)

	local coin = display.newImage("image/공통-코인수 표시.png")
	sceneGroup:insert(coin)
	coin.x, coin.y = display.contentWidth*0.1, display.contentHeight*0.08

	local money = display.newText("",203,58,"font/NanumSquare_acB.ttf")
	money:setFillColor(0.964, 0.462, 0.411)
	money.anchorX = 1
	money.text = loadedSettings.money 
	money.size = 45
	sceneGroup:insert(money)
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
		composer.removeScene("view04StoreItem")
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