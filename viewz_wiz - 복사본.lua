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

	local background = display.newImageRect("대화창-마을배경/캐릭터대화창-파랑마을배경.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)


	local happy_wiz = display.newImage("캐릭터-기쁨(그림자O)/캐릭터-위즈기쁨(그림자O).png")
	happy_wiz.x, happy_wiz.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(happy_wiz)
	happy_wiz.alpha = 0

	local nangam_wiz = display.newImage("캐릭터-난감(그림자O)/캐릭터-위즈난감(그림자O).png")
	nangam_wiz.x, nangam_wiz.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(nangam_wiz)
	nangam_wiz.alpha = 0

	local daesapan = display.newImage("대화창-대사판/캐릭터대화창-대사창(위즈).png")
	daesapan.x, daesapan.y = display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(daesapan)
	daesapan.alpha=1
	
	background.alpha = 1
	daesapan.alpha = 1

	if name =="bag/kit.png" then
		happy_wiz.alpha = 1
		daewha = display.newText("이야- ‘물 속에서 불 피우기’라니! 멋진걸! 다음 연구 주제는 이걸로 해야겠어! 최고다! 고마워!",105,550,"font/NanumSquare_acB.ttf")
        daewha.anchorX,daewha.anchorY = 0,0
        daewha:setFillColor(0)
        --daewha.alpha = 0
        daewha.size = 25
        sceneGroup:insert(daewha)
    else
    	nangam_wiz.alpha = 1
    	daewha = display.newText("앗, 잠깐. 그러고 보니 미리 사둔 선물이 없잖아?\n아쉽지만 블리의 생일은 다음번에 줘야겠어.",105,550,"font/NanumSquare_acB.ttf")
        daewha.anchorX,daewha.anchorY = 0,0
        daewha:setFillColor(0)
        --daewha.alpha = 0
        daewha.size = 25
        sceneGroup:insert(daewha)
	end


	local function next2(event)
		
		if event.phase == "began" then
			composer.removeScene("viewz_wiz")
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