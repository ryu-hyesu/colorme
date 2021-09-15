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
	local loadedSettings = loadsave.loadTable( "settings.json" )


	local loadedEndings = loadsave.loadTable( "endings.json" )
	--우정 엔딩--
	local back = display.newRect(display.contentWidth/2,display.contentHeight/2, display.contentWidth,display.contentHeight)
	back:setFillColor(0)
	sceneGroup:insert(back)

	--무지개 엔딩 --
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

	local pastell_green = display.newImage("엔딩카드-히든엔딩/파스텔초록.png")
	pastell_green.x, pastell_green.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(pastell_green)
	pastell_green.alpha =0

	study = loadedSettings.study
	fun = loadedSettings.fun
	hobby = loadedSettings.hobby
	friendship = loadedSettings.friendship

	red = loadedSettings.red 
	yellow = loadedSettings.yellow
	green = loadedSettings.green
	purple = loadedSettings.purple
	blue = loadedSettings.blue




	local function pastel()
		if (red >= yellow) and (red >= green) and (red >= blue) and (red >= purple)  then
			
			loadedEndings.pastel_red = 1
			pastell_red.alpha = 1
		elseif (yellow >= red) and (yellow >= green) and (yellow >= blue) and (yellow >= purple)  then
			
			loadedEndings.pastel_yellow = 1
			pastell_yellow.alpha =1
		elseif (green >= red) and (green >= yellow) and (green >= blue) and (green >= purple)  then
			
			loadedEndings.pastel_green = 1
			pastell_green.alpha =1
		elseif (blue >= red) and (blue >= yellow) and (blue >= green) and (blue >= purple)  then
			
			loadedEndings.pastel_blue= 1
			pastell_blue.alpha = 1
		elseif (purple >= red) and (purple >= yellow) and (purple >= green) and (purple >= blue) then
			
			loadedEndings.pastel_purple = 1
			pastell_purple.alpha =1
		end
	end




--활동/공부/취미 엔딩 (혼합)
	if (study >= 80) and (hobby >= 80) and (fun >= 80) and (friendship >= 80) then
		--무지개 엔딩 (무지개 엔딩 일러스트 없어서 못 넣음)
		
		loadedEndings.rainbow = 1
		rainbow.alpha =1
	elseif (study >= fun) and (study >= hobby) and (study >= friendship) and (study >= 70) then
		
		if (red >= 50) and (yellow >= 50) then
			
			loadedEndings.orange=1
			rainbow.alpha = 1

		elseif (blue >= 50) and (green >= 50) then
			
			loadedEndings.chung=1
			chung.alpha = 1
		elseif (red >= 50) and (blue >=50) and (purple>=60) then
			
			loadedEndings.violet=1
			violet.alpha = 1
		else
			pastel()
		end
	elseif ((hobby >= study) and (hobby >= friendship) and (fun >= 70)) or ((fun >= study) and (fun >= friendship) and (fun >= 70)) then
		if (red >= 50) and (yellow >= 50) then
			
			loadedEndings.act_orange=1
			act_orange.alpha = 1
		elseif (blue >= 50) and (green >= 50) then
			
			loadedEndings.act_chung=1
			act_chung.alpha = 1
		elseif (red >= 50) and (blue >=50) and (purple>=50) then
			
			loadedEndings.act_violet=1
			act_violet.alpha =1
		else
			pastel()
		end
--우정엔딩



	elseif (friendship >= study) and (friendship >= fun) and (friendship >= hobby) and (friendship >= 70) then
		print("dd11111")
		if  (red >= yellow) and (red >= green) and (red >= blue) and (red >= purple) and (red >= 50) then
			
			 loadedEndings.red =1
			 mix_red.alpha = 1
		elseif (yellow >= red) and (yellow >= green) and (yellow >= blue) and (yellow >= purple) and (yellow >=50) then
			
			loadedEndings.yellow=1
			mix_yellow.alpha = 1
		elseif (green >= red) and (green >= yellow) and (green >= blue) and (green >= purple) and (green >= 50) then
			
			loadedEndings.green =1
			mix_green.alpha = 1
		elseif (blue >= red) and (blue >= yellow) and (blue >= green) and (blue >= purple) and (blue >=50) then
			
			 loadedEndings.blue=1
			 mix_blue.alpha = 1
		elseif (purple >= red) and (purple >= yellow) and (purple >= green) and (purple >= blue) and (purple >= 50) then
			
			loadedEndings.purple =1
			mix_purple.alpha = 1
		else
			pastel()
		end
--호감도 40 이하
	elseif (friendship <= 40) and (fun <= 40) and (hobby <= 40 ) and (study <= 40) and (red <= 40) and (yellow <= 40) and (green <= 40) and (blue <= 40) and (purple <= 40) then
		--굿/배드 나뉘어야하는데 할로윈 이벤트 그림을 아직 안주셔서 스크립트 미완/일단 둠
		if loadedSettings.goodWhite == 1 then

			loadedEndings.good = 1
			good.alpha = 1

			
		elseif loadedSettings.badWhite == 1 then
			loadedEndings.bad = 1
			bad.alpha = 1
			
		end
		
--파스텔 엔딩인데 자세하게 명시 되어 있지 않아서 일단 이대로 둠	
	else
		pastel()
	end

	local function goback(event)
		if event.phase == "began" then 
			composer.removeScene("view99end")

			composer.gotoScene("title")

		end
	end

	local title = display.newImage("image/타이틀돌.png")
	title.x,title.y = 1225,70
	sceneGroup:insert(title)
	
	title:addEventListener("touch",goback)
	


	if (best == 1) and (friend1 == 1) and (friend2==2) and (friend3==1) and (friend4==1) and (friend5 == 1) and (mix1 == 1) and (mix2 == 1) and (mix3 == 1) and (mix4 == 1) and (mix5 == 1) and (mix6 == 1) and (pastel1==1) and (pastel2 == 1) and (pastel3==1) and (pastel4 == 1) and (pastel5 == 1) and (hidden1==1) and (hidden2 == 1) then
		loadedEndings.bonus = 1 
	end

	loadsave.saveTable(loadedEndings,"endings.json")

	

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
		composer.removeScene("viewmonth5_event")
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