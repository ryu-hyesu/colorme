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
	
	local background = display.newImageRect("store/bg.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)


	--local backgroundMusic = audio.loadStream( "음악/상점.mp3" )
	--local click1 = audio.loadStream( "음악/클릭1.wav" )

	
 
-- Play the background music on channel 1, loop infinitely, and fade in over 5 seconds 
	local backgroundMusicChannel = audio.play(backgroundMusic)
 



	local loadedSettings = loadsave.loadTable( "settings.json" )

	--[[if loadedSettings.month == 5 then
		if loadedSettings.month6_event == 0 then
			loadedSettings.month6_event = loadedSettings.month6_event + 1
			loadsave.saveTable(loadedSettings,"settings.json")
		end
	end]]


	---상점-------


	---터치이벤트 불러올때 함수를 미리 정의해 놔야하므로 미리 정의해둠----
	---해당 물품 클릭하면 view4StoreItem로 넘어가서 상품 구매창(view4StoreItem) 뜸---
	---새로운 scene를 만든 이유는 상품 구매창이 떴을 때 다른 상품의 터치 이벤트가 작동되지 않기 위해서--



	local function touch1(event)

		if event.phase == "began" then

			--해당 상품의이름을 받아서 view4StoreItem로 넘김--
			local click01 = audio.play(click1)
			name = event.target.name
			composer.setVariable("name", name)
			composer.removeScene("view03Store")
			composer.gotoScene("view04StoreItem")
		end
	end


	---상점 물건 진열---


	local pen = display.newImage("store/pen.png")
	pen.x, pen.y =  display.contentWidth*0.117, display.contentHeight*0.31
	sceneGroup:insert(pen)
	pen.name = "pen"
	pen:addEventListener("touch",touch1)

	local dog_rice = display.newImage("store/dogrice.png")
	dog_rice.x, dog_rice.y =  display.contentWidth*0.274, display.contentHeight*0.33
	sceneGroup:insert(dog_rice)
	dog_rice.name = "dog_rice"
	dog_rice:addEventListener("touch",touch1)

	local duck = display.newImage("store/duck.png")
	duck.x,duck.y =  display.contentWidth*0.587, display.contentHeight*0.335
	sceneGroup:insert(duck)
	duck.name = "duck"
	duck:addEventListener("touch",touch1)

	local plant = display.newImage("store/plant.png")
	plant.x,plant.y =  display.contentWidth*0.584, display.contentHeight*0.685
	sceneGroup:insert(plant)
	plant.name = "plant"
	plant:addEventListener("touch",touch1)

	local fire = display.newImage("store/fire.png")
	fire.x,fire.y =  display.contentWidth*0.424, display.contentHeight*0.719
	sceneGroup:insert(fire)
	fire.name = "fire"
	fire:addEventListener("touch",touch1)

	local heart = display.newImage("store/heart.png")
	heart.x,heart.y =  display.contentWidth*0.739, display.contentHeight*0.327
	sceneGroup:insert(heart)
	heart.name = "heart"
	heart:addEventListener("touch",touch1)

	local pie = display.newImage("store/pie.png")
	pie.x,pie.y =  display.contentWidth*0.899, display.contentHeight*0.333
	sceneGroup:insert(pie)
	pie.name = "pie"
	pie:addEventListener("touch",touch1)

	local purf = display.newImage("store/purf.png")
	purf.x,purf.y =  display.contentWidth*0.125, display.contentHeight*0.692
	sceneGroup:insert(purf)
	purf.name = "purf"
	purf:addEventListener("touch",touch1)

	local speaker = display.newImage("store/speaker.png")
	speaker.x,speaker.y =  display.contentWidth*0.274, display.contentHeight*0.705
	sceneGroup:insert(speaker)
	speaker.name = "speaker"
	speaker:addEventListener("touch",touch1)

	local tiger = display.newImage("store/tiger.png")
	tiger.x,tiger.y =  display.contentWidth*0.739, display.contentHeight*0.697
	sceneGroup:insert(tiger)
	tiger.name = "tiger"
	tiger:addEventListener("touch",touch1)

	local toy = display.newImage("store/toy.png")
	toy.x,toy.y =  display.contentWidth*0.424, display.contentHeight*0.33
	sceneGroup:insert(toy)
	toy.name = "toy"
	toy:addEventListener("touch",touch1)




	--x버튼 누르면 마을지도로 돌아가는 이벤트--

	local function gotomap(event)
			audio.pause(backgroundMusicChannel)
			composer.removeScene("view03Store")
			composer.gotoScene("view01Map")

	end

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.955, display.contentHeight*0.08
	exit:addEventListener("tap",gotomap)

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
		--composer.removeScene("view03Store")
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