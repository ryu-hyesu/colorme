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

	

	local background_1 = display.newImage("캠핑/모닥불1.png")
	background_1.x,background_1.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_1)
	background_1.width, background_1.height = display.contentWidth,display.contentHeight
	background_1.alpha = 0

	local background_2 = display.newImage("캠핑/모닥불2.png")
	background_2.x,background_2.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_2)
	background_2.width, background_2.height = display.contentWidth,display.contentHeight
	background_2.alpha = 0
	local background_2_1 = display.newImage("캠핑/모닥불1.png")
	background_2_1.x,background_2_1.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_2_1)
	background_2_1.width, background_2_1.height = display.contentWidth,display.contentHeight
	background_2_1.alpha = 0

	local background_3 = display.newImage("캠핑/모닥불3.png")
	background_3.x,background_3.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_3)
	background_3.width, background_3.height = display.contentWidth,display.contentHeight
	background_3.alpha = 0

	
	local soli = display.newImage("캐릭터-기본(그림자O)/캐릭터-솔리(그림자O).png")
	soli.x, soli.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(soli)
	soli.alpha = 0
	local happy_soli = display.newImage("캐릭터-기쁨(그림자O)/캐릭터-솔리기쁨(그림자O).png")
	happy_soli.x, happy_soli.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(happy_soli)
	happy_soli.alpha = 0

	local nangam_soli = display.newImage("캐릭터-난감(그림자O)/캐릭터-솔리난감(그림자O).png")
	nangam_soli.x, nangam_soli.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(nangam_soli)
	nangam_soli.alpha = 0

	local sad_soli = display.newImage("캐릭터-슬픔(그림자O)/캐릭터-솔리슬픔(그림자O).png")
	sad_soli.x, sad_soli.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(sad_soli)
	sad_soli.alpha = 0


	local wiz = display.newImage("캐릭터-기본(그림자O)/캐릭터-위즈(그림자O).png")
	wiz.x, wiz.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(wiz)
	wiz.alpha = 0

	local happy_wiz = display.newImage("캐릭터-기쁨(그림자O)/캐릭터-위즈기쁨(그림자O).png")
	happy_wiz.x, happy_wiz.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(happy_wiz)
	happy_wiz.alpha = 0

	local nangam_wiz = display.newImage("캐릭터-난감(그림자O)/캐릭터-위즈난감(그림자O).png")
	nangam_wiz.x, nangam_wiz.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(nangam_wiz)
	nangam_wiz.alpha = 0

	local sad_wiz = display.newImage("캐릭터-슬픔(그림자O)/캐릭터-위즈슬픔(그림자O).png")
	sad_wiz.x, sad_wiz.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(sad_wiz)
	sad_wiz.alpha = 0

	local daesapan = display.newImage("대화창-대사판/캐릭터대화창-대사창(솔리).png")
	daesapan.x, daesapan.y = display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(daesapan)

	local my_daesapan = display.newImage("대화창-대사판/캐릭터대화창-대사창(주인공).png")
	my_daesapan.x, my_daesapan.y = display.contentWidth/2-1,display.contentHeight*0.8-1.5
	sceneGroup:insert(my_daesapan)
	my_daesapan.alpha=0

	local wiz_daesapan = display.newImage("대화창-대사판/캐릭터대화창-대사창(위즈).png")
	wiz_daesapan.x, wiz_daesapan.y = display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(wiz_daesapan)
	wiz_daesapan.alpha=0

	local choose1 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(초록마을).png")
	choose1.x, choose1.y = display.contentWidth*0.2,display.contentHeight*0.47
	sceneGroup:insert(choose1)
	choose1.alpha = 0

	local choose2 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(초록마을).png")
	choose2.x, choose2.y = display.contentWidth*0.8,display.contentHeight*0.47
	sceneGroup:insert(choose2)
	choose2.alpha = 0

	local choose3 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(초록마을).png")
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
		"(누군가 벨을 누른다)",
		mainName .. "! 안녕? 시간 되면 위즈랑 같이 캠핑 안 갈래? 가서 마쉬멜로우도 구워 먹자!",
		"그래 좋아!",
		"아니, 난 쉬고 싶어.\n 다음에 같이 가자!",
		"좋아! 같이 놀러 가자!",
		"아니, 난 쉬고 싶어. 다음에 같이 가자!"
	}
	
	local text1 = {
		"마쉬멜로우를 구워 먹으려면 불을 피워야겠지?",
		"응! 내가 나뭇가지를 주워 올게!",
		"잠깐만! 불 대신 연못에서 물을 구해오자. 오늘이야말로 물 속에서 불 피우기 키트를 써 볼 좋은 기회야.",
		"무, 물 속에서 불…? 그래! 내가 물을 구해 올게!",
		"으악!"
	}

	local text1_1 = {
		"솔리야, 괜찮아?",
		"조심했어야지! 하마터면 큰일 날 뻔했잖아! 우리 행성에선 물 근처에 가면 중력에 세지는 것도 모르는 거야?\n어떻게 그런 기본적인 상식을 까먹을 수 있어? 그럴 거면 차라리 나를 시키지!",
		"콜록, 나는 그런 게 아니고… 콜록, 너네를 편게 해주고 싶어서 내가 하려고 한 건데…. 콜록.",
		"얘, 얘들아…."
	}

	local text2 = {

		"위즈를 말린다.",
		"위즈야, 솔리가 우리를 배려하다 그런거니까…. 너무 화내지 말자.",
		"휴, 사실 나도 너무 놀라서…. 잠깐 흥분했나봐. 솔리야, 미안해.",
		"아, 아냐…. 나 괜찮아! 너희가 구해줬잖아. 정말 고마워!",
		"그래도 물가는 위험하니까 다음부턴 꼭 같이 하자.",
		"응! 알겠어. 고마워 얘들아!"

	}

	local text3 = {

		"솔리에게 충고한다.",
		"솔리야, 그래도 위험하면 말을 해야지…. 너무 배려한다고 혼자 모든 걸 할 필요는 없어. 우린 친구잖아.",
		"맞아. 내가 얼마나 놀랐는지 알아?",
		"으응…. 알겠어. 미안해."

	}

	local text4 = {
		"마쉬멜로우 정말 맛있겠다~",
		"빨리 먹고 싶어!",
		"가끔 캠핑 오는 것도 좋은 것 같아. 다음에 또 오자!",
		"그래~"
	}

	local daewha0 = {}
	local daewha1 = {}
	local daewha1_1 = {}
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

	for i = 1,4 do
		daewha1_1[i] = display.newText(text1_1[i],105,550,"font/NanumSquare_acB.ttf")
		daewha1_1[i].anchorX,daewha1_1[i].anchorY = 0,0
		daewha1_1[i]:setFillColor(0)
		daewha1_1[i].alpha = 0
		daewha1_1[i].size = 25
		sceneGroup:insert(daewha1_1[i])
	end

	for i = 1,6 do
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

	for i = 1,4 do
		daewha4[i] = display.newText(text4[i],105,550,"font/NanumSquare_acB.ttf")
		daewha4[i].anchorX,daewha4[i].anchorY = 0,0
		daewha4[i]:setFillColor(0)
		daewha4[i].alpha = 0
		daewha4[i].size = 25
		sceneGroup:insert(daewha4[i])
	end

	daewha0[1].alpha = 1
	my_daesapan.alpha = 1
	
	local k = 0
	local m = 0
	local n = 2
	local h = 3
	local w = 3

	local i = 0
	local e = 2


	local function last(event)

		if event.phase == "began" then
			if e < 5 then
				if e== 2 then
					display.remove(daewha4[1])
					daewha4[2].alpha=1
					my_daesapan.alpha = 1
					my.alpha = 1
				elseif e == 3 then
					display.remove(daewha4[2])
					daewha4[3].alpha=1
					wiz_daesapan.alpha = 1
					my_daesapan.alpha = 0
					my.alpha = 0
				elseif e == 4 then
					display.remove(daewha4[3])
					daewha4[4].alpha=1
					wiz_daesapan.alpha = 0
				end
				
				
				e = e+1
			elseif e == 5 then
				e = e+ 1
			elseif e == 6 then
				daesapan:removeEventListener("touch",last)
				composer.removeScene("viewmonth4_event")
				composer.gotoScene("view12Plan")
			end
		end
	end



	local function show(event)

		if event.phase == "began" then
			if i == 0 then
				
				i = i + 1

			elseif i == 1 then
				

				daesapan.alpha = 1
				daewha4[1].alpha = 1
				background_3:removeEventListener("touch",show)
				daesapan:addEventListener("touch",last)
				
			end

			
		end

	end


	local function second_2(event)
		if event.phase == "began" then
			if w < 7 then
				if w == 3 or w==5 then
					sad_soli.alpha = 0
					my_daesapan.alpha = 0
					my.alpha = 0
					wiz_daesapan.alpha = 1
					wiz.alpha = 1
				else
					wiz.alpha = 0
					happy_soli.alpha = 1
					wiz_daesapan.alpha = 0
				end

				daewha2[w-1].alpha = 0
				daewha2[w].alpha = 1
				w = w + 1
			else
				daesapan:removeEventListener("touch",second_2)
				daewha2[6].alpha = 0
				happy_soli.alpha = 0
				daesapan.alpha = 0
				transition.to(background_3,{time=1000,alpha=1})
				background_3:addEventListener("touch",show)
				

			end

		end
	end

	local function one_box(event)

		if event.phase == "began" then

			loadedSettings.green = loadedSettings.green + 1
			loadsave.saveTable(loadedSettings, "settings.json")
			choose1.alpha = 0
			choose2.alpha = 0
			display.remove(daewha1_1[4])
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

			if h < 5 then
				
				if h == 3 then
					sad_soli.alpha = 0
					nangam_wiz.alpha = 1
					my_daesapan.alpha =0
					my.alpha = 0
					wiz_daesapan.alpha = 1
					
				elseif h == 4 then
					nangam_wiz.alpha = 0
					sad_soli.alpha = 1
					wiz_daesapan.alpha = 0
					
				end
				daewha3[h-1].alpha = 0
				daewha3[h].alpha = 1
				h = h + 1
				
			else 
				daesapan:removeEventListener("touch",third_2)
				daewha3[4].alpha = 0
				sad_soli.alpha = 0
				daesapan.alpha = 0
				my_daesapan.alpha = 0
				my.alpha = 0
				
				transition.to(background_3,{time=1000,alpha=1})
				background_3:addEventListener("touch",show)
				
				
			end
		end

		
	end

	local function two_box(event)
		if event.phase == "began" then

			choose1.alpha = 0
			choose2.alpha = 0
			display.remove(daewha1_1[4])
			
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
				daewha1_1[1].alpha = 0
				

				my_daesapan.alpha = 0
				my.alpha = 0
				wiz_daesapan.alpha = 1
				nangam_wiz.alpha = 1
			elseif n ==3 then
				wiz_daesapan.alpha = 0
				sad_soli.alpha = 1
				nangam_wiz.alpha = 0

			elseif n == 4 then
				my_daesapan.alpha = 1
				my.alpha = 1

			end

			daewha1_1[n-1].alpha = 0
			daewha1_1[n].alpha = 1
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

	local l = 2
	local g = 1

	

	local function next_display(event)
		if event.phase == "began" then
			if g == 1 then
				
				g = g+1



			elseif g == 2 then
				
				daesapan.alpha = 1
				my_daesapan.alpha = 1
				my.alpha = 1
				daewha1_1[1].alpha = 1
				background_2_1:removeEventListener("touch",next_display)
				daesapan:addEventListener("touch",second_1)
			end

		end
	end

	


	local function second_01(event)

		if event.phase == "began" then
			if l < 5 then

				if l ==2 or l == 4 then
					my_daesapan.alpha = 0
					my.alpha = 0
				else
					my_daesapan.alpha = 1
					my.alpha = 1
				end

				daewha1[l-1].alpha = 0
				daewha1[l].alpha =1

				l = l +1

			elseif l == 5 then
				soli.alpha = 0
				daewha1[4].alpha = 0
				my_daesapan.alpha = 0
				my.alpha = 0
				daesapan.alpha = 0
				transition.to(daesapan,{time=0,alpha=1,delay=1000})
				transition.to(daewha1[5],{time=0,alpha=1,delay=1000})
				l =l +1
			elseif l == 6 then
				daesapan.alpha = 0
				display.remove(daewha1[5])
				daesapan:removeEventListener("touch",second_01)
				transition.to(background_2,{time=1000,alpha=1})
				transition.to(background_2_1,{alpha=1,delay=2000})
				background_2_1:addEventListener("touch",next_display)
				


			end
		end

	end

	local function next_back(event)

		if event.phase == "began" then

			if m == 0 then
				m = m +1

			else
				soli.alpha = 1
				daesapan.alpha = 1
				my_daesapan.alpha = 1
				my.alpha = 1
				daewha1[1].alpha = 1
				background:removeEventListener("touch",next_back)
				daesapan:addEventListener("touch",second_01)
			end

		end

	end

	local function second(event)

		if event.phase == "began" then

			if k == 0 then
				choose1:removeEventListener("touch",second)

				daewha0[2].alpha = 0
				choose1.alpha = 0
				choose3.alpha = 0
				daewha0[3].alpha = 0
				daewha0[4].alpha = 0

				daewha0[5].alpha = 1
		
				
				daesapan:addEventListener("touch",second)


				k = k+1
			else
				background_1.alpha = 1
				soli.alpha = 0
				daewha0[5].alpha = 0
				daesapan.alpha = 0
				background:addEventListener("touch",next_back)
				daesapan:removeEventListener("touch",second)
			end
		end

	end

	local j = 0 

	local v = 1

	local function bye(event)
		if event.phase == "began" then 
			if v == 1 then
				choose1:removeEventListener("touch",bye)
				choose3:removeEventListener("touch",bye)
				daesapan:addEventListener("touch",bye)
				daewha0[2].alpha = 0
				choose1.alpha = 0
				choose3.alpha = 0
				daewha0[3].alpha = 0
				daewha0[4].alpha = 0

				daewha0[6].alpha = 1
				my_daesapan.alpha = 1
				my.alpha = 1
				v = v+1
			else
				daesapan:removeEventListener("touch",bye)
				composer.removeScene("viewmonth4_event")
				composer.gotoScene("view12Plan")
			end
		end
	end

	local function first(event)

		if event.phase == "began" then

			if j == 0 then
				soli.alpha = 1
				my_daesapan.alpha = 0
				my.alpha = 0
				daewha0[1].alpha = 0
				daewha0[2].alpha = 1
				j = j+1
			else
				choose1.alpha = 1
				choose3.alpha = 2

				daewha0[3].alpha = 1
				daewha0[4].alpha = 1

				daewha0[3]:setFillColor(1)
				daewha0[4]:setFillColor(1)

				daewha0[3].x,daewha0[3].y = display.contentWidth*0.2,display.contentHeight*0.47
				daewha0[4].x,daewha0[4].y = display.contentWidth*0.8,display.contentHeight*0.47

				daewha0[3].anchorX,daewha0[3].anchorY = 0.5,0.5 
				daewha0[4].anchorX,daewha0[4].anchorY = 0.5,0.5

				choose1:addEventListener("touch",second)
				choose3:addEventListener("touch",bye)
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
		composer.removeScene("viewmonth4_event")
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