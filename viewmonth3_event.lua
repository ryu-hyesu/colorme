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
	
	-- Called when the scene's view does not exist.
	-- 
	-- INSERT code here to initialize the scene
	-- e.g. add display objects to 'sceneGroup', add touch listeners, etc.
	
	-- create a white background to fill screen
	local background = display.newImage("홈화면소스모음/홈-배경(가구O)-01.png")
	background.x, background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local month = display.newText("",888,115,"font/잘풀리는오늘 Medium.ttf")
	month:setFillColor(0)
	month.size = 25
	sceneGroup:insert(month)



		if loadedSettings.month == 0 then
			month.text = "이른 봄의 달"
			
		elseif loadedSettings.month == 1 then
			month.text = "꽃 피는 달"
		elseif loadedSettings.month == 2 then
			month.text = "해변달"
		elseif loadedSettings.month == 3 then
			month.text = "단풍달"
		elseif loadedSettings.month == 4 then
			month.text = "도토리 달"
		elseif loadedSettings.month ==5 then
			month.text = "눈꽃 달"
		end

	local former = display.newText("",793,175,"font/잘풀리는오늘 Medium.ttf")
	former.anchorX = 0
	former:setFillColor(0)
	former.size = 15
	former.text = loadedSettings.former1
	sceneGroup:insert(former)

	local former2 = display.newText("",793,197,"font/잘풀리는오늘 Medium.ttf")
	former2.anchorX = 0
	former2:setFillColor(0)
	former2.size = 15
	former2.text = loadedSettings.former2
	sceneGroup:insert(former2)

	local next1 = display.newText("dd",793,254,"font/잘풀리는오늘 Medium.ttf")
	next1.anchorX = 0
	next1:setFillColor(0)
	next1.size = 15
	next1.text = loadedSettings.next1
	sceneGroup:insert(next1)

	local next2 = display.newText("dd",793,276,"font/잘풀리는오늘 Medium.ttf")
	next2.anchorX = 0
	next2:setFillColor(0)
	next2.size = 15
	next2.text = loadedSettings.next2
	sceneGroup:insert(next2)

	local background_1 = display.newImage("계절우정이벤트-해변에서 춤을/계절우정이벤트_계절우정이벤트(해변에서춤을)1.png")
	background_1.x,background_1.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_1)
	background_1.width, background_1.height = display.contentWidth,display.contentHeight
	background_1.alpha = 0

	local sing1 = display.newImage("계절우정이벤트-해변에서 춤을/계절우정이벤트_계절우정이벤트(해변에서춤을)2-1.png")
	sing1.x, sing1.y  = display.contentWidth*0.5,display.contentHeight*0.5
	sceneGroup:insert(sing1)
	sing1.alpha = 0

	local sing = display.newImage("계절우정이벤트-해변에서 춤을/계절우정이벤트_계절우정이벤트(해변에서춤을)2-2.png")
	sing.x, sing.y  = display.contentWidth*0.5,display.contentHeight*0.5
	sceneGroup:insert(sing)
	sing.alpha = 0

	local black_box = display.newRect(display.contentWidth/2,display.contentHeight/2, display.contentWidth,display.contentHeight)
	black_box.alpha = 0
	black_box:setFillColor(0)
	sceneGroup:insert(black_box)

	local home = display.newImage("계절우정이벤트-해변에서 춤을/계절우정이벤트_계절우정이벤트(해변에서춤을)3.png")
	home.x, home.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(home)
	home.alpha = 0
	
	local joy = display.newImage("캐릭터-기본(그림자O)/캐릭터-조이(그림자O).png")
	joy.x, joy.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(joy)

	local happy_joy = display.newImage("캐릭터-기쁨(그림자O)/캐릭터-조이기쁨(그림자O).png")
	happy_joy.x, happy_joy.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(happy_joy)
	happy_joy.alpha = 0

	local nangam_joy = display.newImage("캐릭터-난감(그림자O)/캐릭터-조이난감(그림자O).png")
	nangam_joy.x, nangam_joy.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(nangam_joy)
	nangam_joy.alpha = 0

	local sad_joy = display.newImage("캐릭터-슬픔(그림자O)/캐릭터-조이슬픔(그림자O).png")
	sad_joy.x, sad_joy.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(sad_joy)
	sad_joy.alpha = 0


	local daesapan = display.newImage("대화창-대사판/캐릭터대화창-대사창(조이).png")
	daesapan.x, daesapan.y = display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(daesapan)

	local my_daesapan = display.newImage("대화창-대사판/캐릭터대화창-대사창(주인공).png")
	my_daesapan.x, my_daesapan.y = display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(my_daesapan)
	my_daesapan.alpha=0

	local choose1 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(노랑마을).png")
	choose1.x, choose1.y = display.contentWidth*0.2,display.contentHeight*0.47
	sceneGroup:insert(choose1)
	choose1.alpha = 0

	local choose2 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(노랑마을).png")
	choose2.x, choose2.y = display.contentWidth*0.8,display.contentHeight*0.47
	sceneGroup:insert(choose2)
	choose2.alpha = 0

	mainName = loadedSettings.name
	

	local my = display.newText(mainName,190,505,"font/잘풀리는오늘 Medium.ttf")
	my.size = 30
	my.alpha = 0
	my:setFillColor(1)
	sceneGroup:insert(my)


--초반 대사--
	local text0 ={
		"(누군가 벨을 누른다)",
		mainName .. "! 뭐해? 나 지금 해변에 물놀이 갈 건데, 같이 갈래?",
		"그래 좋아!",
		"아니, 난 쉬고 싶어.\n 다음에 같이 가자!",
		"좋아! 같이 놀러 가자!",
		"아니, 난 쉬고 싶어. 다음에 같이 가자!"
	}
	
	local text1 = {
		"여름의 바다는 정말 아름다워! 파도가 노래하는 것 같아~",
		"그러게!",
		"앗, 저기! 축제를 하나봐.",
		"(조이가 가리킨 곳에는 '해변 노래자랑'이 열리고 있다)",
		"와, 노래자랑! 주인공아, 우리 저기 나가지 않을래? 나 꼭 나가보고 싶었거든!"
	}

	local text2 = {

		"거절할래!",
		"너무 갑작스러워서…. 난 안 나갈래. 대신 너를 열심히 응원할게! 응원엔 자신 있다구!",
		"음, 좀 갑작스럽긴 했지? 그래! 그럼 내가 멋지게 노래하고 상금 타올게! 우리 이걸로 맛있는 거 먹자!",
		"좋아! 화이팅이야!",
		"(조이가 노래하는 모습)"

	}

	local text3 = {

		"참가할래!",
		"좋아, 실은 나도 노래자랑 참여하고 싶었어!",
		"우리 둘이 나간다면 우승은 따 놓은 당상이지~",
		"(조이와 주인공이 노래하는 모습)"

	}

	local text4 = {
		"오늘 장기자랑도 나가보고 같이 놀아서 즐거웠어! 너랑 놀러가길 잘 한 것 같아~",
		"나도 즐거웠어."
	}

	local daewha0 = {}
	local daewha1 = {}
	local daewha2 = {}
	local daewha3 = {}
	local daewha4 = {}

	for i = 1,6 do
		daewha0[i] = display.newText(text0[i],105,550,"font/NanumSquare_acB.ttf")
		daewha0[i].anchorX,daewha0[i].anchorY = 0,0
		daewha0[i]:setFillColor(0)
		daewha0[i].alpha = 0
		daewha0[i].size = 25
		sceneGroup:insert(daewha0[i])
	end

	for i = 1,5 do
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

	for i = 1,2 do
		daewha4[i] = display.newText(text4[i],105,550,"font/NanumSquare_acB.ttf")
		daewha4[i].anchorX,daewha4[i].anchorY = 0,0
		daewha4[i]:setFillColor(0)
		daewha4[i].alpha = 0
		daewha4[i].size = 25
		sceneGroup:insert(daewha4[i])
	end

	daewha0[1].alpha = 1
	my_daesapan.alpha = 1
	joy.alpha = 0
	local k = 0
	local m = 0
	local n = 2
	local h = 3
	local w = 3

	local i = 0
	local j = 0


	local function last(event)

		if event.phase == "began" then
			if j == 0 then
				black_box.alpha = 0
				daewha4[2].alpha=1
				my_daesapan.alpha = 1
				my.alpha = 1
				display.remove(daewha4[1])
				j = j+1
			else 
				daesapan:removeEventListener("touch",last)
				composer.removeScene("viewmonth3_event")
				composer.gotoScene("view12Plan")
			end

			
		end

	end


	local function show(event)

		if event.phase == "began" then
			if i == 0 then

				transition.to(home,{time=1000,alpha=1})
				i = i + 1

			elseif i == 1 then

				black_box:removeEventListener("touch",show)
				
				happy_joy.alpha = 1
				daesapan.alpha = 1
				daewha4[1].alpha = 1
				daesapan:addEventListener("touch",last)
				
			end

			
		end

	end


	local function second_2(event)
		if event.phase == "began" then
			if w < 5 then
				if w == 3 then
					nangam_joy.alpha = 1
					joy.alpha = 0
					my_daesapan.alpha = 0
					my.alpha = 0
				else

					my_daesapan.alpha =1
					my.alpha = 1
				end

				daewha2[w-1].alpha = 0
				daewha2[w].alpha = 1
				w = w + 1
			elseif w == 5 then
				daewha2[4].alpha = 0
				nangam_joy.alpha = 0
				daesapan.alpha = 0
				my_daesapan.alpha = 0
				my.alpha = 0
				transition.to(sing1,{time=2000,alpha=1})
				transition.to(black_box,{time=2000,alpha=1,delay=6000})
				black_box:addEventListener("touch",show)

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

			if h < 4 then
				if h == 3 then
					happy_joy.alpha = 1
					joy.alpha = 0
					my_daesapan.alpha = 0
					my.alpha = 0
				else
					happy_joy.alpha = 0
					joy.alpha = 1
					my_daesapan.alpha =1
					my.alpha = 1
				end

				daewha3[h-1].alpha = 0
				daewha3[h].alpha = 1
				h = h + 1

			else
				daesapan:removeEventListener("touch",third_2)
				daewha3[3].alpha = 0
				happy_joy.alpha = 0
				daesapan.alpha = 0
				my_daesapan.alpha = 0
				my.alpha = 0
				transition.to(sing,{time=2000,alpha=1})
				transition.to(black_box,{time=2000,alpha=1,delay=6000})
				black_box:addEventListener("touch",show)
			end
		end

		
	end

	local function two_box(event)
		if event.phase == "began" then

			loadedSettings.yellow = loadedSettings.yellow + 1
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
				joy.alpha = 1
				daesapan.alpha = 1
				daewha1[1].alpha = 1
				background:removeEventListener("touch",next_back)
				daesapan:addEventListener("touch",second_1)
			end

		end

	end

	local function bye(event)
		if event.phase == "began" then 
			if v == 1 then
				choose1:removeEventListener("touch",bye)
				daesapan:addEventListener("touch",bye)
				daewha0[2].alpha = 0
				choose1.alpha = 0
				choose2.alpha = 0
				daewha0[3].alpha = 0
				daewha0[4].alpha = 0

				daewha0[6].alpha = 1
				my_daesapan.alpha = 1
				my.alpha = 1
				v = v+1
			else
				daesapan:removeEventListener("touch",bye)
				composer.removeScene("viewmonth3_event")
				composer.gotoScene("view12Plan")
			end
		end
	end

	local function second(event)

		if event.phase == "began" then

			if k == 0 then
				daewha0[2].alpha = 0
				choose1.alpha = 0
				choose2.alpha = 0
				daewha0[3].alpha = 0
				daewha0[4].alpha = 0

				daewha0[5].alpha = 1
		
				choose1:removeEventListener("touch",second)
				daesapan:addEventListener("touch",second)
				choose2:removeEventListener("touch",bye)
				k = k+1
			else
				background_1.alpha = 1
				joy.alpha = 0
				daewha0[5].alpha = 0
				daesapan.alpha = 0
				background:addEventListener("touch",next_back)
				daesapan:removeEventListener("touch",second)
			end
		end

	end

	local j = 0 

	local v = 1

	

	local function first(event)

		if event.phase == "began" then

			if j == 0 then
				joy.alpha = 1
				my_daesapan.alpha = 0
				my.alpha = 0
				daewha0[1].alpha = 0
				daewha0[2].alpha = 1
				j = j+1
			else
				choose1.alpha = 1
				choose2.alpha = 2

				daewha0[3].alpha = 1
				daewha0[4].alpha = 1

				daewha0[3]:setFillColor(1)
				daewha0[4]:setFillColor(1)

				daewha0[3].x,daewha0[3].y = display.contentWidth*0.2,display.contentHeight*0.47
				daewha0[4].x,daewha0[4].y = display.contentWidth*0.8,display.contentHeight*0.47

				daewha0[3].anchorX,daewha0[3].anchorY = 0.5,0.5 
				daewha0[4].anchorX,daewha0[4].anchorY = 0.5,0.5

				choose1:addEventListener("touch",second)
				choose2:addEventListener("touch",bye)
				daesapan:removeEventListener("touch",first)
			end

			

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
		composer.removeScene("viewmonth3_event")
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