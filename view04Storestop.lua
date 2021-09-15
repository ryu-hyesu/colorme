
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

	local loadedSettings = loadsave.loadTable( "settings.json" )
	local loadedItems= loadsave.loadTable( "items.json" )

	--상점이미지, 단 뷰3처럼 터치이벤트없음--
	
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
	
	local stop = display.newImage("image/fullbag.png")
	local stop2 = display.newImage("image/공통-경고창(코인부족).png")
	if loadedItems.itemCount == 12 then
		stop2.alpha = 0
	else
		stop.alpha = 0
	end

	stop.x, stop.y = display.contentWidth/2,display.contentHeight/2
	stop2.x, stop2.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(stop)
	sceneGroup:insert(stop2)
	local function gotohome(event)
		if event.phase == "began" then

				composer.removeScene("view04Storestop")
				composer.gotoScene("view03Store")
		end
		
	end


	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.715, display.contentHeight*0.325
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