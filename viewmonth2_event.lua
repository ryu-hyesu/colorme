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

	local background = display.newImage("대화창-마을배경/캐릭터대화창-빨강마을배경.png")
	background.x, background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local background_1 = display.newImage("빨강이벤트/봄소풍.png")
	background_1.x,background_1.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_1)
	background_1.width, background_1.height = display.contentWidth,display.contentHeight
	background_1.alpha = 0
	

	local blli = display.newImage("캐릭터-기본(그림자O)/캐릭터-블리(그림자O).png")
	blli.x, blli.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(blli)

	local daesapan = display.newImage("대화창-대사판/캐릭터대화창-대사창(블리).png")
	daesapan.x, daesapan.y = display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(daesapan)

	local my_daesapan = display.newImage("대화창-대사판/캐릭터대화창-대사창(주인공).png")
	my_daesapan.x, my_daesapan.y = display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(my_daesapan)
	my_daesapan.alpha=0

	local choose1 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(빨강마을).png")
	choose1.x, choose1.y = display.contentWidth*0.2,display.contentHeight*0.47
	sceneGroup:insert(choose1)
	choose1.alpha = 0

	local choose2 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(빨강마을).png")
	choose2.x, choose2.y = display.contentWidth*0.8,display.contentHeight*0.47
	sceneGroup:insert(choose2)
	choose2.alpha = 0

	local choose3 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(빨강마을).png")
	choose3.x, choose3.y = display.contentWidth*0.8,display.contentHeight*0.47
	sceneGroup:insert(choose3)
	choose3.alpha = 0

	mainName = loadedSettings.name
	

	local my = display.newText(mainName,190,505,"font/잘풀리는오늘 Medium.ttf")
	my.size = 30
	my.alpha = 0
	my:setFillColor(1)
	sceneGroup:insert(my)


--초반 대사--
	local text0 ={
		mainName .. "! 시간 있어? 나랑 꽃 보러 가자!",
		"그래 좋아!",
		"아니, 난 쉬고 싶어.\n 다음에 같이 가자!",
		"좋아! 같이 보러 가자!",
		"아니, 난 쉬고 싶어. 다음에 같이 가자!"
	}
	
	local text1 = {
		"봄에는 예쁜 꽃이 펴서 좋아. 세상이 알록달록하잖아!",
		"게다가 날씨도 따뜻해.",
		"나랑 곰돌이는 벚꽃을 좋아해. 핑크색 팝콘 같아!",
		"너는 어떤 꽃이 좋아?"
	}

	local text2 = {

		"사실 나는 꽃보다\n열매가 취향이야!",
		"실은 난 꽃보다 열매를 좋아해. 열매는 맛있잖아! 그래서인지 난 꽃이 필 때보다 질 때가 더 기다려지기도 해.",
		"…지금 꽃이 빨리 졌으면 좋겠다는 거야?",
		"앗, 아니! 그런 의미는 아니었어! 꽃이 있어야 열매도 열리니까. 둘 다 좋아하는 셈이야!",
		"흐음, 나도 딸기를 좋아하니까. 그 마음 이해가 될 것 같기도 해."

	}

	local text3 = {

		"글쎄…. 장미? 개나리?",
		"장미나 개나리? 둘 다 좋아하는 편이야.",
		"장미? 나도 빨간 장미라면 너무 좋아! 우리 다음에는 장미공원에 놀러 가자. 거기엔 무지개색 장미가 있대.",
		"우와, 좋아! 꼭 같이 가자!"

	}

	local daewha0 = {}
	local daewha1 = {}
	local daewha2 = {}
	local daewha3 = {}

	for i = 1,5 do
		daewha0[i] = display.newText(text0[i],105,550,"font/NanumSquare_acB.ttf")
		daewha0[i].anchorX,daewha0[i].anchorY = 0,0
		daewha0[i]:setFillColor(0)
		daewha0[i].alpha = 0
		daewha0[i].size = 25
		sceneGroup:insert(daewha0[i])
	end

	for i = 1,4 do
		daewha1[i] = display.newText(text1[i],105,550,"font/NanumSquare_acB.ttf")
		daewha1[i].anchorX,daewha1[i].anchorY = 0,0
		daewha1[i]:setFillColor(0)
		daewha1[i].alpha = 0
		daewha1[i].size = 25
		sceneGroup:insert(daewha1[i])
	end

	for i = 1,5 do
		daewha2[i] = display.newText(text2[i],105,550,"font/NanumSquare_acB.ttf")
		daewha2[i].anchorX,daewha2[i].anchorY = 0,0
		daewha2[i]:setFillColor(0)
		daewha2[i].alpha = 0
		daewha2[i].size = 25
		sceneGroup:insert(daewha2[i])
	end

	for i = 1,4 do
		daewha3[i] = display.newText(text3[i],105,550,"font/NanumSquare_acB.ttf")
		daewha3[i].anchorX,daewha3[i].anchorY = 0,0
		daewha3[i]:setFillColor(0)
		daewha3[i].alpha = 0
		daewha3[i].size = 25
		sceneGroup:insert(daewha3[i])
	end

	daewha0[1].alpha = 1
	local k = 0
	local m = 0
	local n = 2
	local h = 3

	local function second_2(event)
		if event.phase == "began" then
			if h == 4 then
				my_daesapan.alpha = 1
				my.alpha = 1
			else
				my_daesapan.alpha =0
				my.alpha = 0
			end

			if h < 6 then
				daewha2[h-1].alpha = 0
				daewha2[h].alpha = 1	
			end

			h = h + 1

			if h == 8 then
				daesapan:removeEventListener("touch",second_2)
				composer.removeScene("viewmonth2_event")
				composer.gotoScene("view01_month")
			end
		end
	end

	local function one_box(event)

		if event.phase == "began" then

			choose1.alpha = 0
			choose2.alpha = 0
			daewha1[4].alpha = 0
			daewha2[1].alpha = 0
			daewha3[1].alpha = 0
			daewha2[2].alpha = 1
			my_daesapan.alpha =1
			my.alpha = 1

			daesapan:addEventListener("touch",second_2)
			choose1:removeEventListener("touch",one_box)


		end
	end

	local function third_2(event)

		if event.phase == "began" then

			if h == 3 then
				my_daesapan.alpha = 0
				my.alpha = 0
			else
				my_daesapan.alpha =1
				my.alpha = 1
			end

			if h < 5 then
				daewha3[h-1].alpha = 0
				daewha3[h].alpha = 1
			end 

			h = h + 1

			if h == 6 then
				daesapan:removeEventListener("touch",third_2)
				composer.removeScene("viewmonth2_event")
				composer.gotoScene("view01_month")
			end
		end

		
	end

	local function two_box(event)
		if event.phase == "began" then

			loadedSettings.red = loadedSettings.red + 1
			loadsave.saveTable(loadedSettings, "settings.json")

			choose1.alpha = 0
			choose2.alpha = 0
			daewha1[4].alpha = 0
			daewha3[1].alpha = 0
			daewha2[1].alpha = 0
			daewha3[2].alpha = 1
			my_daesapan.alpha =1
			my.alpha = 1

			daesapan:addEventListener("touch",third_2)
			choose1:removeEventListener("touch",one_box)
			choose2:removeEventListener("touch",two_box)


		end
	end

	local function second_1(event)
		if event.phase == "began" then
			if n == 2 then 
				my_daesapan.alpha = 1
				my.alpha = 1
			else
				my_daesapan.alpha = 0
				my.alpha = 0

			end

			daewha1[n-1].alpha = 0
			daewha1[n].alpha = 1
			n = n+1

			if n == 5 then

				daesapan:removeEventListener("touch",second_1)

				choose1.alpha = 1
				choose2.alpha = 2

				daewha2[1].alpha = 1
				daewha3[1].alpha = 1

				daewha2[1]:setFillColor(1)
				daewha3[1]:setFillColor(1)

				daewha2[1].x,daewha2[1].y = display.contentWidth*0.2,display.contentHeight*0.47
				daewha3[1].x,daewha3[1].y = display.contentWidth*0.8,display.contentHeight*0.47

				daewha2[1].anchorX,daewha2[1].anchorY = 0.5,0.5 
				daewha3[1].anchorX,daewha3[1].anchorY = 0.5,0.5

				choose1:addEventListener("touch",one_box)
				choose2:addEventListener("touch",two_box)


			end

		end
	end

	local function next_back(event)

		if event.phase == "began" then

			if m == 0 then
				m = m +1

			else
				
				daesapan.alpha = 1
				daewha1[1].alpha = 1
				background:removeEventListener("touch",next_back)
				daesapan:addEventListener("touch",second_1)
			end

		end

	end

	local function second(event)

		if event.phase == "began" then

			if k == 0 then
				daewha0[1].alpha = 0
				choose1.alpha = 0
				choose3:removeSelf()
				choose3=nil
				daewha0[2].alpha = 0
				daewha0[3].alpha = 0

				daewha0[4].alpha = 1
		
				choose1:removeEventListener("touch",second)
				daesapan:addEventListener("touch",second)
				--choose3:removeEventListener("touch",bye)
				k = k+1
			else
				background_1.alpha = 1
				blli.alpha = 0
				daewha0[4].alpha = 0
				daesapan.alpha = 0
				background:addEventListener("touch",next_back)
				daesapan:removeEventListener("touch",second)
			end
		end

	end

	local v = 1

	local function bye(event)
		if event.phase == "began" then 
			if v == 1 then
				choose1:removeEventListener("touch",bye)
				daesapan:addEventListener("touch",bye)
				daewha0[1].alpha = 0
				choose1.alpha = 0
				choose3.alpha = 0
				daewha0[2].alpha = 0
				daewha0[3].alpha = 0
				daewha0[5].alpha = 1
				my_daesapan.alpha = 1
				my.alpha = 1
				v = v+1
			else
				daesapan:removeEventListener("touch",bye)
				composer.removeScene("viewmonth2_event")
				composer.gotoScene("view01_month")
			end
		end
	end


	local function first(event)

		if event.phase == "began" then

			choose1.alpha = 1
			choose3.alpha = 1

			daewha0[2].alpha = 1
			daewha0[3].alpha = 1

			daewha0[2]:setFillColor(1)
			daewha0[3]:setFillColor(1)

			daewha0[2].x,daewha0[2].y = display.contentWidth*0.2,display.contentHeight*0.47
			daewha0[3].x,daewha0[3].y = display.contentWidth*0.8,display.contentHeight*0.47

			daewha0[2].anchorX,daewha0[2].anchorY = 0.5,0.5 
			daewha0[3].anchorX,daewha0[3].anchorY = 0.5,0.5

			choose1:addEventListener("touch",second)
			choose3:addEventListener("touch",bye)
			daesapan:removeEventListener("touch",first)

		end

	end

	daesapan:addEventListener("touch",first)

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
		composer.removeScene("viewmonth2_event")
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