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
	
	local background = display.newImageRect("홈화면소스모음/홈-배경(가구X)-01.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local loadedSettings = loadsave.loadTable( "settings.json" )


	local back = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-선택창배경.png")
	back.x, back.y = display.contentWidth*0.35,display.contentHeight*0.45
	sceneGroup:insert(back)

	local science= display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-공부버튼(과학).png")
	science.x, science.y = 600, 245
	sceneGroup:insert(science)

	local moral = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-공부버튼(도덕).png")
	moral.x, moral.y = 450, 245
	sceneGroup:insert(moral)

	local korean = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-공부버튼(문학).png")
	korean.x, korean.y = 150, 245
	sceneGroup:insert(korean)

	local music = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-공부버튼(음악).png")
	music.x, music.y = 300,245
	sceneGroup:insert(music)

	local phy = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-공부버튼(체육).png")
	phy.x, phy.y = 750,245
	sceneGroup:insert(phy)

	--활동--

	local exc1 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-활동버튼1.png")
	exc1.x,exc1.y = 260,370 -2
	sceneGroup:insert(exc1)

	local exc2 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-활동버튼2.png")
	exc2.x, exc2.y = 260,422-2
	sceneGroup:insert(exc2)

	local exc3 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-활동버튼3.png")
	exc3.x, exc3.y = 260,474-2
	sceneGroup:insert(exc3)

	local exc4 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-활동버튼4.png")
	exc4.x, exc4.y = 260,526-2
	sceneGroup:insert(exc4)

	local exc5 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-활동버튼5.png")
	exc5.x, exc5.y = 260, 578-2
	sceneGroup:insert(exc5)

	--취미--

	local play1 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-취미버튼1.png")
	play1.x,play1.y = 650, 368
	sceneGroup:insert(play1)

	local play2 =display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-취미버튼2.png")
	play2.x, play2.y = 650,420
	sceneGroup:insert(play2)

	local play3 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-취미버튼3.png")
	play3.x, play3.y = 650,472
	sceneGroup:insert(play3)

	local play4 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-취미버튼4.png")
	play4.x, play4.y = 650,524
	sceneGroup:insert(play4)

	local play5 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-취미버튼5.png")
	play5.x,play5.y = 650,576
	sceneGroup:insert(play5) 

	--스탯--
	local gamebt = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료전(미니게임).png")
	gamebt.x, gamebt.y = 490+15,115
	sceneGroup:insert(gamebt)

	local gamebt_f = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료후(미니게임).png")
		gamebt_f.x, gamebt_f.y = 490+15,115
		sceneGroup:insert(gamebt_f)
		gamebt_f.alpha = loadedSettings.show1



	local statbt = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료전(스탯활동).png")
	statbt.x, statbt.y = 540+15,115
	sceneGroup:insert(statbt)

	local statbt_f = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료후(스탯활동).png")
		statbt_f.x, statbt_f.y = 540+15,115
		sceneGroup:insert(statbt_f)
		statbt_f.alpha = loadedSettings.show2

	local statbt2 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료전(스탯활동).png")
	statbt2.x, statbt2.y = 590+15,115
	sceneGroup:insert(statbt2)

	local statbt2_f = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료후(스탯활동).png")
		statbt2_f.x, statbt2_f.y = 590+15,115
		sceneGroup:insert(statbt2_f)
		statbt2_f.alpha = loadedSettings.show3


	local statbt3 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료전(스탯활동).png")
	statbt3.x, statbt3.y = 640+15,115
	sceneGroup:insert(statbt3)

	local statbt3_f = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료후(스탯활동).png")
	statbt3_f.x, statbt3_f.y = 640+15,115
	sceneGroup:insert(statbt3_f)
	statbt3_f.alpha = loadedSettings.show4


	local statbt4 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료전(스탯활동).png")
	statbt4.x, statbt4.y = 690+15,115
	sceneGroup:insert(statbt4)

	local statbt4_f = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료후(스탯활동).png")
	statbt4_f.x, statbt4_f.y = 690+15,115
	sceneGroup:insert(statbt4_f)
	statbt4_f.alpha=loadedSettings.show5


	local friendbt = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료전(우정활동).png")
	friendbt.x, friendbt.y = 740+15,115
	sceneGroup:insert(friendbt)
	local friendbt_f = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료후(우정활동).png")
	friendbt_f.x, friendbt.y = 740+15,115
	sceneGroup:insert(friendbt_f)
	friendbt_f.alpha = loadedSettings.show6

	local friendbt2 = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료전(우정활동).png")
	friendbt2.x, friendbt2.y = 790+15,115
	sceneGroup:insert(friendbt2)
	local friendbt2_f = display.newImage("스케줄(스탯)소스모음1-스탯활동관련 (1)/스케줄(스탯)-횟수제한완료후(우정활동).png")
	friendbt2.x, friendbt2.y = 790+15,115
	sceneGroup:insert(friendbt2)
	friendbt2_f.alpha = loadedSettings.show7

	local former = display.newText("",83,102,"font/잘풀리는오늘 Medium.ttf")
	former.anchorX = 0
	former:setFillColor(0)
	former.size = 20
	former.text = loadedSettings.former01
	sceneGroup:insert(former)

	local former2 = display.newText("",83,133,"font/잘풀리는오늘 Medium.ttf")
	former2.anchorX = 0
	former2:setFillColor(0)
	former2.size = 20
	former2.text = loadedSettings.former02
	sceneGroup:insert(former2)

	

	--여러버튼--

	local guide = display.newImage("스케줄(스탯)소스모음2 (1)/스케줄(스탯)-가이드버튼.png")
	guide.x,guide.y = 50,670
	sceneGroup:insert(guide)


	local play = display.newRect(958,58, loadedSettings.fun*1.86 ,25)
	play.anchorX,play.anchorY = 0,0.5
	play:setFillColor(0.643,0.384,0.666)
	sceneGroup:insert(play)

	local hobby = display.newRect(958,90, loadedSettings.hobby*1.86 ,25)
	hobby.anchorX,hobby.anchorY = 0,0.5
	hobby:setFillColor(0.98, 0.556 , 0.219)
	sceneGroup:insert(hobby)

	local study = display.newRect(958,120, loadedSettings.study*1.86 ,25)
	study.anchorX,study.anchorY = 0,0.5
	study:setFillColor(0.46,0.537,0.752)
	sceneGroup:insert(study)

	local friendly = display.newRect(958,160, loadedSettings.friendship*1.86 ,25)
	friendly.anchorX,friendly.anchorY = 0,0.5
	friendly:setFillColor(0.933,0.474,0.474)
	sceneGroup:insert(friendly)

	local sch = display.newImageRect("홈화면소스모음/홈-스탯창(투명).png",300,200)
	sch.x,sch.y = display.contentWidth*0.798,display.contentHeight*0.13
	sceneGroup:insert(sch)

	local mainpen = display.newImageRect("캐릭터-기본/캐릭터-주인공.png",200,320)
	mainpen.x,mainpen.y = display.contentWidth*0.83,display.contentHeight*0.7
	sceneGroup:insert(mainpen)

	local text = display.newImage("스케줄(스탯)소스모음2 (1)/스케줄(스탯)-말풍선.png")
	text.x,text.y = display.contentWidth*0.83,display.contentHeight*0.4
	sceneGroup:insert(text)

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.955, display.contentHeight*0.08

--종료 버튼--
	local endd = display.newImage("스케줄(스탯)소스모음2 (1)/스케줄(스탯)-활동마치기버튼.png")
	endd.x, endd.y = 450, 670
	sceneGroup:insert(endd)



	local loadedSettings = loadsave.loadTable( "settings.json" ) 

	local num3 = 0

	local function gotomap(event)
		if event.phase == "began" then

			if num3 == 1 then
				composer.removeScene("View13Plan3")
				composer.gotoScene("view12Plan")
				
			end
			num3 = num3 + 1
		end

	end


	local limited = display.newImage("image/공통-횟수제한알림창.png")
	limited.x, limited.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(limited)

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.5, display.contentHeight*0.65
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
		-- Called when the scene is on screen and is about to move off screen
		--
		-- INSERT code here to pause the scene
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
		composer.removeScene("View13Plan3")
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