-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------
-----viewmonth1-----
local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require( "loadsave" )
local name = composer.getVariable("name")
function scene:create( event )

	local sceneGroup = self.view
	
	local loadedSettings = loadsave.loadTable( "settings.json" )

	local background = display.newImageRect("대화창-마을배경/캐릭터대화창-노랑마을배경.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)


	local wiz = display.newImage("캐릭터-기본(그림자O)/캐릭터-조이(그림자O).png")
	wiz.x, wiz.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(wiz)
	wiz.alpha = 0


	local happy_wiz = display.newImage("캐릭터-기쁨(그림자O)/캐릭터-조이기쁨(그림자O).png")
	happy_wiz.x, happy_wiz.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(happy_wiz)
	happy_wiz.alpha = 0

	local nangam_wiz = display.newImage("캐릭터-난감(그림자O)/캐릭터-조이난감(그림자O).png")
	nangam_wiz.x, nangam_wiz.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(nangam_wiz)
	nangam_wiz.alpha = 0

	local sad_wiz = display.newImage("캐릭터-슬픔(그림자O)/캐릭터-조이슬픔(그림자O).png")
	sad_wiz.x, sad_wiz.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(sad_wiz)
	sad_wiz.alpha = 0

	local daesapan = display.newImage("대화창-대사판/캐릭터대화창-대사창(조이).png")
	daesapan.x, daesapan.y = display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(daesapan)
	daesapan.alpha=0


	background.alpha = 1
	daesapan.alpha = 1

	if name =="bag/speaker.png" then
		happy_wiz.alpha = 1
		daewha = display.newText("세상에, 두배로 스피커! 내가 제일 갖고 싶었던 거야! 고마워, 얼른 스피커로 노래 틀자! 뭐가 좋을까? 오늘은 발라드를 틀어도 신날 것 같아!",105,550,"font/NanumSquare_acB.ttf")
        daewha.anchorX,daewha.anchorY = 0,0
        daewha:setFillColor(0)
        --daewha.alpha = 0
        daewha.size = 25
        sceneGroup:insert(daewha)
    else
    	nangam_wiz.alpha = 1
    	daewha = display.newText("으음…. 고마워…. 지금부터 이걸 가지고 어떻게 신나게 놀지 생각해볼게…!",105,550,"font/NanumSquare_acB.ttf")
        daewha.anchorX,daewha.anchorY = 0,0
        daewha:setFillColor(0)
        --daewha.alpha = 0
        daewha.size = 25
        sceneGroup:insert(daewha)
	end


	local function next2(event)
		
		if event.phase == "began" then
			composer.removeScene("viewz_joy")
			composer.gotoScene("view01Map")
		end

	end

	daesapan:addEventListener("touch", next2)
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
		--composer.removeScene("viewmonth1_event_블리_birthday")
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