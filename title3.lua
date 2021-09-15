local loadsave = require( "loadsave" )
local composer = require( "composer" )
local scene = composer.newScene()
local json = require( "json" ) 

function scene:create( event )
	local sceneGroup = self.view

	local rainbow = display.newImage("엔딩카드-히든엔딩/무지개.png")
	rainbow.x, rainbow.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(rainbow)
	rainbow.alpha = 0

	local mix_red = display.newImage("엔딩카드-우정엔딩/빨강.png")
	mix_red.x, mix_red.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(mix_red)
	mix_red.alpha = 0

	local mix_yellow = display.newImage("엔딩카드-우정엔딩/노랑.png")
	mix_yellow.x, mix_yellow.y =display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(mix_yellow)
	mix_yellow.alpha =0
	local mix_blue = display.newImage("엔딩카드-우정엔딩/파랑1.png")
	mix_blue.x,mix_blue.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(mix_blue)
	mix_blue.alpha = 0
	local mix_purple = display.newImage("엔딩카드-우정엔딩/보라1.png")
	mix_purple.x, mix_purple.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(mix_purple)
	mix_purple.alpha = 0
	local mix_green = display.newImage("엔딩카드-우정엔딩/초록1.png")
	mix_green.x, mix_green.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(mix_green)
	mix_green.alpha = 0

	--혼합엔딩--

	local violet = display.newImage("엔딩카드-혼합엔딩/바이올렛.png")
	violet.x, violet.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(violet)
	violet.alpha = 0

	local act_violet = display.newImage("엔딩카드-혼합엔딩/활동-바이올렛.png")
 	act_violet.x, act_violet.y = display.contentWidth/2,display.contentHeight/2 
 	sceneGroup:insert(act_violet)
 	act_violet.alpha = 0

	local orange = display.newImage("엔딩카드-혼합엔딩/주황.png")
	orange.x, orange.y =  display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(orange)
	orange.alpha = 0

	local act_orange = display.newImage("엔딩카드-혼합엔딩/활동-주황.png")
	act_orange.x, act_orange.y =display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(act_orange)
	act_orange.alpha = 0

	local chung = display.newImage("엔딩카드-혼합엔딩/청록1.png")
	chung.x, chung.y =  display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(chung)
	chung.alpha = 0

	local act_chung = display.newImage("엔딩카드-혼합엔딩/활청.png")
	act_chung.x, act_chung.y =display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(act_chung)
	act_chung.alpha = 0

	--히든엔딩

	local good = display.newImage("엔딩카드-히든엔딩/굿.png")
	good.x, good.y = display.contentWidth/2,display.contentHeight/2 
	sceneGroup:insert(good)
	good.alpha = 0

	local bad = display.newImage("엔딩카드-히든엔딩/배드.png")
	bad.x, bad.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(bad)
	bad.alpha = 0

	local pastell_yellow = display.newImage("엔딩카드-히든엔딩/파스텔노랑.png")
	pastell_yellow.x, pastell_yellow.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(pastell_yellow)
	pastell_yellow.alpha = 0

	local pastell_purple = display.newImage("엔딩카드-히든엔딩/파스텔보라.png")
	pastell_purple.x, pastell_purple.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(pastell_purple)
	pastell_purple.alpha = 0

	local pastell_red = display.newImage("엔딩카드-히든엔딩/파스텔빨강.png")
	pastell_red.x, pastell_red.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(pastell_red)
	pastell_red.alpha = 0

	local pastell_blue = display.newImage("엔딩카드-히든엔딩/파스텔파랑.png")
	pastell_blue.x, pastell_blue.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(pastell_blue)
	pastell_blue.alpha =0

	local pastell_green=display.newImage("엔딩카드-히든엔딩/파스텔초록.png")
	pastell_green.x, pastell_green.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(pastell_green)
	pastell_green.alpha =0

	name = composer.getVariable("name")

	if name == 1 then
		mix_red.alpha = 1
	elseif name == 2 then
		mix_yellow.alpha = 1
	elseif name == 3 then
		mix_blue.alpha = 1
	elseif name == 4 then
		mix_green.alpha = 1
	elseif name == 5 then
		mix_purple.alpha = 1
	elseif name == 6 then
		pastell_red.alpha = 1
	elseif name == 7 then
		pastell_yellow.alpha = 1
	elseif name == 8 then
		pastell_blue.alpha = 1
	elseif name == 9 then
		pastell_green.alpha = 1
	elseif name == 10 then
		pastell_purple.alpha = 1
	elseif name == 11 then
		orange.alpha = 1
	elseif name == 12 then
		chung.alpha = 1
	elseif name == 13 then
		violet.alpha = 1
	elseif name == 14 then
		act_orange.alpha = 1
	elseif name == 15 then
		act_chung.alpha = 1
	elseif name == 16 then
		act_violet.alpha = 1
	elseif name == 17 then
		good.alpha = 1
	elseif name == 18 then
		bad.alpha = 1
	elseif name == 19 then
		rainbow.alpha = 1
	elseif name == 20 then
		print("F")
	end
	
	
	local function gotomap(event)
		if event.phase == "began" then
			composer.hideOverlay("title3")
			
		end

	end


	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = 1225,58
	exit:addEventListener("touch",gotomap)


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
		-- C.alled when the scene is on screen and is about to move off screen
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