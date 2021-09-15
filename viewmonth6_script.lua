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
	
	local background_1 = display.newImageRect("대화창-마을배경/캐릭터대화창-빨강마을배경.png",display.contentWidth, display.contentHeight)
	background_1.x,background_1.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_1)
	background_1.alpha = 0

	local background_2 = display.newImageRect("대화창-마을배경/캐릭터대화창-노랑마을배경.png",display.contentWidth, display.contentHeight)
	background_2.x,background_2.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_2)
	background_2.alpha = 0

	local background_3 = display.newImageRect("대화창-마을배경/캐릭터대화창-초록마을배경.png",display.contentWidth, display.contentHeight)
	background_3.x,background_3.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_3)
	background_3.alpha = 0

	local background_4 = display.newImageRect("대화창-마을배경/캐릭터대화창-파랑마을배경.png",display.contentWidth, display.contentHeight)
	background_4.x,background_4.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_4)
	background_4.alpha = 0

	local background_5 = display.newImageRect("대화창-마을배경/캐릭터대화창-보라마을배경.png",display.contentWidth, display.contentHeight)
	background_5.x,background_5.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_5)
	background_5.alpha = 0

	



	--블리

	local blli = display.newImage("캐릭터-기본(그림자O)/캐릭터-블리(그림자O).png")
	blli.x, blli.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(blli)
	blli.alpha = 0

	local happy_blli = display.newImage("캐릭터-기쁨(그림자O)/캐릭터-블리기쁨(그림자O).png")
	happy_blli.x, happy_blli.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(happy_blli)
	happy_blli.alpha = 0

	local nangam_blli = display.newImage("캐릭터-난감(그림자O)/캐릭터-블리난감(그림자O).png")
	nangam_blli.x, nangam_blli.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(nangam_blli)
	nangam_blli.alpha = 0

	local choose11 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(빨강마을).png")
	choose11.x, choose11.y = display.contentWidth*0.2,display.contentHeight*0.47
	sceneGroup:insert(choose11)
	choose11.alpha = 0

	local choose12 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(빨강마을).png")
	choose12.x, choose12.y = display.contentWidth*0.8,display.contentHeight*0.47
	sceneGroup:insert(choose12)
	choose12.alpha = 0

	--조이

	local joy = display.newImage("캐릭터-기본(그림자O)/캐릭터-조이(그림자O).png")
	joy.x, joy.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(joy)
	joy.alpha = 0

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

	local choose21 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(노랑마을).png")
	choose21.x, choose21.y = display.contentWidth*0.2,display.contentHeight*0.47
	sceneGroup:insert(choose21)
	choose21.alpha = 0

	local choose22 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(노랑마을).png")
	choose22.x, choose22.y = display.contentWidth*0.8,display.contentHeight*0.47
	sceneGroup:insert(choose22)
	choose22.alpha = 0

--솔리

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

	local choose31 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(초록마을).png")
	choose31.x, choose31.y = display.contentWidth*0.2,display.contentHeight*0.47
	sceneGroup:insert(choose31)
	choose31.alpha = 0

	local choose32 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(초록마을).png")
	choose32.x, choose32.y = display.contentWidth*0.8,display.contentHeight*0.47
	sceneGroup:insert(choose32)
	choose32.alpha = 0


--위즈

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

	local choose41 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(파랑마을).png")
	choose41.x, choose41.y = display.contentWidth*0.2,display.contentHeight*0.47
	sceneGroup:insert(choose41)
	choose41.alpha = 0

	local choose42 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(파랑마을).png")
	choose42.x, choose42.y = display.contentWidth*0.8,display.contentHeight*0.47
	sceneGroup:insert(choose42)
	choose42.alpha = 0

--보라
	
	local lay = display.newImage("캐릭터-기본(그림자O)/캐릭터-레이(그림자O).png")
	lay.x, lay.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(lay)
	lay.alpha = 0

	local alay = display.newImage("캐릭터-기본(그림자O)/캐릭터-레이각성(그림자O).png")
	alay.x, alay.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(alay)
	alay.alpha = 0

	local happy_lay = display.newImage("캐릭터-기쁨(그림자O)/캐릭터-레이기쁨(그림자O).png")
	happy_lay.x, happy_lay.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(happy_lay)
	happy_lay.alpha = 0
	
	local sad_lay = display.newImage("캐릭터-슬픔(그림자O)/캐릭터-레이슬픔(그림자O).png")
	sad_lay.x, sad_lay.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(sad_lay)
	sad_lay.alpha = 0

	local choose51 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(보라마을).png")
	choose51.x, choose51.y = display.contentWidth*0.2,display.contentHeight*0.47
	sceneGroup:insert(choose51)
	choose51.alpha = 0

	local choose52 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(보라마을).png")
	choose52.x, choose52.y = display.contentWidth*0.8,display.contentHeight*0.47
	sceneGroup:insert(choose52)
	choose52.alpha = 0



	local script_1 = display.newImage("s/r.png")
	script_1.x,script_1.y =  display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(script_1)
	script_1.alpha = 0

	local script_2 = display.newImage("s/y.png")
	script_2.x, script_2.y = display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(script_2)
	script_2.alpha = 0

	local script_3 = display.newImage("s/g.png")
	script_3.x, script_3.y =  display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(script_3)
	script_3.alpha = 0

	local script_4 = display.newImage("s/b.png")
	script_4.x, script_4.y =  display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(script_4)
	script_4.alpha = 0

	local script_5 = display.newImage("s/p.png")
	script_5.x, script_5.y =  display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(script_5)
	script_5.alpha = 0

	local my_daesapan = display.newImage("대화창-대사판/캐릭터대화창-대사창(주인공).png")
	my_daesapan.x, my_daesapan.y = display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(my_daesapan)
	my_daesapan.alpha=0



	local daewha11 = {}
	local daewha12 = {}
	local daewha13 = {}

	local text11 = {
		"주인공아, 어서와~ 마침 어렸을 때 사진을 보던 중이었어. 이것 봐. 나 너무 귀엽지?!",
		"귀엽다!",
		"내가 아주 어렸을 땐 부모님이 바쁘셔서 같이 보낸 시간이 별로 없었어. 그래서 부모님이 나한테 …"
	}

	local text12 = {
		"곰인형을 사주셨구나!",
		"응, 맞아! 그때부터 지금까지 곰돌이는 내 단짝이야. (웃음)"
		--"그래! 자꾸 땅굴을 파서 간식을 훔쳐 가는 녀석들은 혼이 나 봐야 해!"
	}

	local text13 = {
		"블루베리 타르트를\n만들어 주셨어?",
		"으응? 같이 있을 때 요리를 많이 해주신건 맞지만… (당황)"
		--"묘하게 설득되는걸…? 그래 맞아, 간식은 또 사면 되지!"
	}

	for i = 1,3 do
		daewha11[i] = display.newText(text11[i],105,550,"font/NanumSquare_acB.ttf")
		daewha11[i].anchorX,daewha11[i].anchorY = 0,0
		daewha11[i]:setFillColor(0)
		daewha11[i].alpha = 0
		daewha11[i].size = 25
		sceneGroup:insert(daewha11[i])
	end

	for i = 1,2 do
		daewha12[i] = display.newText(text12[i],105,550,"font/NanumSquare_acB.ttf")
		daewha12[i].anchorX,daewha12[i].anchorY = 0,0
		daewha12[i]:setFillColor(0)
		daewha12[i].alpha = 0
		daewha12[i].size = 25
		sceneGroup:insert(daewha12[i])
	end

	for i =1,2 do
		daewha13[i] = display.newText(text13[i],105,550,"font/NanumSquare_acB.ttf")
		daewha13[i].anchorX,daewha13[i].anchorY = 0,0
		daewha13[i]:setFillColor(0)
		daewha13[i].alpha = 0
		daewha13[i].size = 25
		sceneGroup:insert(daewha13[i])
	end

	local daewha21 = {}
	local daewha22 = {}
	local daewha23 = {}

	local text21 = {

		"우왓, 이게 다 뭐야?",
		"앗, 내 노랑오리 목욕장난감이야! 이제껏 갖고 있던걸 정리하고 있었거든.",
		"그렇구나.",
		"사실 난 씻는 걸 너무 싫어하는 애였는데, 부모님이 '씻고 나면 놀이터에 가자.'고 매번 나를 달래셨어."
		
	}

	local text22 = {
		"하지만 이제 목욕오리 같은건\n졸업할 때도 되지 않았어?",
		"그, 그런가…? 이제 좀 유치한가…? (당황)"
		--"밤을 새우면 지렁이가 올 틈도 없겠구나! 그치만, 내일 밤에 찾아오면 어떡하지…. "
	}

	local text23 = {
		"그럼 목욕을 좋아하게\n될 수 밖에 없었겠다!",
		"그치?! 지금까지도 목욕을 하고 나면 신나는 일이 일어날 것만 같다니까!(웃음)"
		--"그거 좋겠다! 지금부터 밤새도록 노래를 불러서 지렁이들을 쫓아내자!"
	}

	for i = 1,4 do
		daewha21[i] = display.newText(text21[i],105,550,"font/NanumSquare_acB.ttf")
		daewha21[i].anchorX,daewha21[i].anchorY = 0,0
		daewha21[i]:setFillColor(0)
		daewha21[i].alpha = 0
		daewha21[i].size = 25
		sceneGroup:insert(daewha21[i])
	end

	for i = 1,2 do
		daewha22[i] = display.newText(text22[i],105,550,"font/NanumSquare_acB.ttf")
		daewha22[i].anchorX,daewha22[i].anchorY = 0,0
		daewha22[i]:setFillColor(0)
		daewha22[i].alpha = 0
		daewha22[i].size = 25
		sceneGroup:insert(daewha22[i])
	end

	for i =1,2 do
		daewha23[i] = display.newText(text23[i],105,550,"font/NanumSquare_acB.ttf")
		daewha23[i].anchorX,daewha23[i].anchorY = 0,0
		daewha23[i]:setFillColor(0)
		daewha23[i].alpha = 0
		daewha23[i].size = 25
		sceneGroup:insert(daewha23[i])
	end


	local daewha31 = {}
	local daewha32 = {}
	local daewha33 = {}

	local text31 = {
		"네 방엔 화분이 많은 것 같아. 화분 키우는 걸 좋아하는 이유가 있어?",
		"그건 말이야, 내가 화분에 매일 물을 주면서 말을 걸었더니 선물처럼 내 생일에 꽃이 핀거 있지!\n그때 키웠던 화분이 바로…"
		--"너는 오선지 종이개를정말 좋아하더라.",
		--"응! 종이개들이 기분 좋을 때 짖는 소리는 노래 같아. 오늘은 ‘반짝반짝 작은 별’ 멜로디를 들려줬어~ 너는 어때?"
	}

	local text32 = {
		"허브 화분이었어?",
		"응, 맞아! 민트 향을 좋아하게 된 것도 그때부터였어.(웃음)",
		--"나도야! 너랑 좋아하는 게 겹쳐서 기뻐~ "
	}

	local text33 = {
		"방울토마토였지?",
		"응? 아니…. 아직 방울토마토를 키워본 적은 없는데. 이 참에 토마토를 키워보는 것도 좋겠다! 멋진 아이디어 고마워~"
		--"그렇구나~ 언젠가 공원에 놀러 가자~ 거긴 종이개랑 고양이가 많거든~"
	}

	for i = 1,2 do
		daewha31[i] = display.newText(text31[i],105,550,"font/NanumSquare_acB.ttf")
		daewha31[i].anchorX,daewha31[i].anchorY = 0,0
		daewha31[i]:setFillColor(0)
		daewha31[i].alpha = 0
		daewha31[i].size = 25
		sceneGroup:insert(daewha31[i])
	end

	for i = 1,2 do
		daewha32[i] = display.newText(text32[i],105,550,"font/NanumSquare_acB.ttf")
		daewha32[i].anchorX,daewha32[i].anchorY = 0,0
		daewha32[i]:setFillColor(0)
		daewha32[i].alpha = 0
		daewha32[i].size = 25
		sceneGroup:insert(daewha32[i])
	end

	for i =1,2 do
		daewha33[i] = display.newText(text33[i],105,550,"font/NanumSquare_acB.ttf")
		daewha33[i].anchorX,daewha33[i].anchorY = 0,0
		daewha33[i]:setFillColor(0)
		daewha33[i].alpha = 0
		daewha33[i].size = 25
		sceneGroup:insert(daewha33[i])
	end


	local daewha41 = {}
	local daewha42 = {}
	local daewha43 = {}

	local text41 = {
		"주인공아, 너는 가장 기억에 남는 여행지가 어디야?",
		"기억에 남는 여행지…? 난 아직까진 잘 모르겠어.",
		"흠, 그래? 내가 제일 기억에 남았던 곳은…",
		"내가 맞춰볼게! 아마도…"
		
	}

	local text42 = {

		"이웃 행성인 거꾸로 별",
		"맞았어! 거긴 모든 것들이 거꾸로더라고!? 정말 재밌는 곳이야!"
		--"땡! 틀렸어. 그런 건 옛날 옛적 고리타분한 이론이라구! "
		
	}

	local text43 = {
		"컬러풀 놀이공원!",
		"거기도 재미있긴 했지만… 가장 기억에 남는 곳은 아냐. 난 좀 더 색다른 곳이 좋더라고."
		--"딩동댕! 너… 내 논문을 읽었구나? 감동인데!"
	}

	for i = 1,4 do
		daewha41[i] = display.newText(text41[i],105,550,"font/NanumSquare_acB.ttf")
		daewha41[i].anchorX,daewha41[i].anchorY = 0,0
		daewha41[i]:setFillColor(0)
		daewha41[i].alpha = 0
		daewha41[i].size = 25
		sceneGroup:insert(daewha41[i])
	end

	for i = 1,2 do
		daewha42[i] = display.newText(text42[i],105,550,"font/NanumSquare_acB.ttf")
		daewha42[i].anchorX,daewha42[i].anchorY = 0,0
		daewha42[i]:setFillColor(0)
		daewha42[i].alpha = 0
		daewha42[i].size = 25
		sceneGroup:insert(daewha42[i])
	end

	for i =1,2 do
		daewha43[i] = display.newText(text43[i],105,550,"font/NanumSquare_acB.ttf")
		daewha43[i].anchorX,daewha43[i].anchorY = 0,0
		daewha43[i]:setFillColor(0)
		daewha43[i].alpha = 0
		daewha43[i].size = 25
		sceneGroup:insert(daewha43[i])
	end

	local daewha51 = {}
	local daewha52 = {}
	local daewha53 = {}

	local text51 = {
		"주인공아, 너는 다시 가보고 싶은 곳이 있어? 언젠가 시간이 나면 같이 놀러 가자.",
		"글쎄? 어디가 좋을까…"
	}
	local text52 = {
		"사파리월드",
		"사, 사파리월드? 조금 무섭지만… 주인공 너와 함께라면 갈 수 있을 것 같아! (웃음)"
		--"그런 꿈을 또 꾸면, 난 또 떨어지고 말 거야…. 너무 무서워서 못 자겠어…. "
	}

	local text53 = {
		"곰인형 놀이방",
		"놀이방? 무섭지 않아서 좋긴 하지만…. 그건 블리가 더 좋아할 것 같은 곳인걸. (당황)"
		--"앗, 맞아! 그렇게 생각하니까 하나도 안 무서워. 오늘은 더 높이 나는 꿈을 꾸고 싶어!"
	}

	for i = 1,2 do
		daewha51[i] = display.newText(text51[i],105,550,"font/NanumSquare_acB.ttf")
		daewha51[i].anchorX,daewha51[i].anchorY = 0,0
		daewha51[i]:setFillColor(0)
		daewha51[i].alpha = 0
		daewha51[i].size = 25
		sceneGroup:insert(daewha51[i])
	end

	for i = 1,2 do
		daewha52[i] = display.newText(text52[i],105,550,"font/NanumSquare_acB.ttf")
		daewha52[i].anchorX,daewha52[i].anchorY = 0,0
		daewha52[i]:setFillColor(0)
		daewha52[i].alpha = 0
		daewha52[i].size = 25
		sceneGroup:insert(daewha52[i])
	end

	for i =1,2 do
		daewha53[i] = display.newText(text53[i],105,550,"font/NanumSquare_acB.ttf")
		daewha53[i].anchorX,daewha53[i].anchorY = 0,0
		daewha53[i]:setFillColor(0)
		daewha53[i].alpha = 0
		daewha53[i].size = 25
		sceneGroup:insert(daewha53[i])
	end



	--[[local cd = display.newImage("image/cd1.png")
	cd.x, cd.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(cd)
	cd.alpha =0]]


	local loadedSettings = loadsave.loadTable( "settings.json" )



	local color = composer.getVariable("color")


	if color == "1" then

		if loadedSettings.limited_num ~=2 then

				if loadedSettings.red_num ~= 1 then

					loadedSettings.red_num = loadedSettings.red_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1
					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					loadsave.saveTable(loadedSettings, "settings.json")
					local i = 0
					local j = 0

					local function next1_1(event)

						if event.phase == "began" then
							
							--[[if j == 0 then
								
								my_daesapan.alpha = 0
								daewha12[2].alpha = 0
								daewha12[3].alpha = 1
								j = j+1
							else]]
								composer.removeScene("viewmonth6_script")
								composer.gotoScene("view01Map")
							--end
						end
					end

					
					
					local function next1(event)
						if event.phase == "began" then
							loadedSettings.red = loadedSettings.red + 2
							loadsave.saveTable(loadedSettings,"settings.json")
							daewha11[3].alpha = 0
							my_daesapan.alpha= 0 --수정
							choose11.alpha = 0
							choose12.alpha = 0
							daewha12[1].alpha = 0
							daewha13[1].alpha = 0
							daewha12[2].alpha = 1
							choose11:removeEventListener("touch",next1)
							script_1:addEventListener("touch",next1_1)
						end

					end

					local function next1_2(event)

						if event.phase == "began" then
							
							--[[if j == 0 then
								nangam_blli.alpha = 0
								blli.alpha = 1
								my_daesapan.alpha = 0
								daewha13[2].alpha = 0
								daewha13[3].alpha = 1
								j = j+1
							else]]
								composer.removeScene("viewmonth6_script")
								composer.gotoScene("view01Map")
							--end
						end
					end

					local function next2(event)
						if event.phase == "began" then
							loadedSettings.red = loadedSettings.red + 5
							loadsave.saveTable(loadedSettings,"settings.json")
							
							daewha11[3].alpha = 0
							my_daesapan.alpha= 0--수정
							choose11.alpha = 0
							choose12.alpha = 0
							daewha13[1].alpha = 0
							daewha12[1].alpha = 0
							daewha13[2].alpha = 1
							choose12:removeEventListener("touch",next1)
							script_1:addEventListener("touch",next1_2)
						end

					end

					local function next(event)
						if event.phase == "began" then

							if i == 0 then
								daewha11[1].alpha = 0
								my_daesapan.alpha = 1
								daewha11[2].alpha = 1
								i = i+1

							elseif i == 1 then
								
								daewha11[2].alpha = 0
								my_daesapan.alpha = 0
								daewha11[3].alpha = 1
								i=i+1

							else
								
								script_1:removeEventListener("touch",next)
								choose11.alpha = 1
								daewha12[1].alpha = 1
								daewha12[1]:setFillColor(1)
								daewha12[1].anchorX,daewha12[1].anchorY = 0.5,0.5
								daewha12[1].x,daewha12[1].y = display.contentWidth*0.2,display.contentHeight*0.47
				
								choose12.alpha = 1
								daewha13[1].alpha = 1
								daewha13[1]:setFillColor(1)
								daewha13[1].anchorX,daewha13[1].anchorY = 0.5,0.5
								daewha13[1].x,daewha13[1].y = display.contentWidth*0.8,display.contentHeight*0.47

								choose11:addEventListener("touch",next1)
								choose12:addEventListener("touch",next2)

							end
						end
					end


					background_1.alpha = 1
					nangam_blli.alpha = 1
					script_1.alpha = 1
					daewha11.alpha = 1
					daewha11[1].alpha = 1
					script_1:addEventListener("touch",next)
				else 
					composer.removeScene("viewmonth6_script")
					composer.gotoScene("view15limited")
				end
		else 
					composer.removeScene("viewmonth6_script")
					composer.gotoScene("view15limited")
		end


	elseif color == "2" then
			-- 파랑마을 이동
		if loadedSettings.limited_num ~=2 then

				if loadedSettings.blue_num ~= 1 then
					loadedSettings.blue_num = loadedSettings.blue_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1
					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					loadsave.saveTable(loadedSettings, "settings.json")
					local i = 0
					local j = 0

					local function next1_1(event)

						if event.phase == "began" then
							composer.removeScene("viewmonth6_script")
							composer.gotoScene("view01Map")
						end
					end

					

					local function next1(event)
						if event.phase == "began" then
							loadedSettings.blue = loadedSettings.blue + 2
							loadsave.saveTable(loadedSettings,"settings.json")
							daewha41[4].alpha = 0
							my_daesapan.alpha=1
							choose41.alpha = 0
							choose42.alpha = 0
							daewha42[1].alpha = 0
							daewha43[1].alpha = 0
							daewha42[2].alpha = 1
							choose41:removeEventListener("touch",next1)
							script_4:addEventListener("touch",next1_1)
						end

					end

					local function next1_2(event)

						if event.phase == "began" then
							composer.removeScene("viewmonth6_script")
							composer.gotoScene("view01Map")
						end
					end

					local function next2(event)
						if event.phase == "began" then
							loadedSettings.blue = loadedSettings.blue + 5
							loadsave.saveTable(loadedSettings,"settings.json")					
							daewha41[4].alpha = 0
							my_daesapan.alpha=1
							choose41.alpha = 0
							choose42.alpha = 0
							daewha43[1].alpha = 0
							daewha42[1].alpha = 0
							daewha43[2].alpha = 1
							choose42:removeEventListener("touch",next1)
							script_4:addEventListener("touch",next1_2)
						end

					end

					local function next(event)
						if event.phase == "began" then

							if i == 0 then
								
								daewha41[1].alpha = 0
								my_daesapan.alpha = 1
								daewha41[2].alpha = 1
								i=i+1

							elseif i == 1 then

								daewha41[2].alpha = 0
								my_daesapan.alpha = 0
								daewha41[3].alpha = 1
								i=i+1

							elseif i == 2 then

								daewha41[3].alpha = 0
								my_daesapan.alpha = 0
								daewha41[4].alpha = 1
								i=i+1

							else
								
								script_4:removeEventListener("touch",next)
								choose41.alpha = 1
								daewha42[1].alpha = 1
								daewha42[1]:setFillColor(1)
								daewha42[1].anchorX,daewha42[1].anchorY = 0.5,0.5
								daewha42[1].x,daewha42[1].y = display.contentWidth*0.2,display.contentHeight*0.47
				
								choose42.alpha = 1
								daewha43[1].alpha = 1
								daewha43[1]:setFillColor(1)
								daewha43[1].anchorX,daewha43[1].anchorY = 0.5,0.5
								daewha43[1].x,daewha43[1].y = display.contentWidth*0.8,display.contentHeight*0.47

								choose41:addEventListener("touch",next1)
								choose42:addEventListener("touch",next2)

							end
						end
					end


					background_4.alpha = 1
					wiz.alpha = 1
					script_4.alpha = 1
					
					daewha41.alpha = 1
					daewha41[1].alpha = 1
					script_4:addEventListener("touch",next)


				else 
					composer.removeScene("viewmonth6_script")
					composer.gotoScene("view15limited")
				end
		else 
					composer.removeScene("viewmonth6_script")
					composer.gotoScene("view15limited")
		end

	elseif color == "3" then
		--노랑마을 이동
		if loadedSettings.limited_num ~= 2 then
			print("loadedSettings.limited_num" .. loadedSettings.limited_num)

				if loadedSettings.yellow_num ~= 1 then
					loadedSettings.yellow_num = loadedSettings.yellow_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1
					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					loadsave.saveTable(loadedSettings, "settings.json")
					local i = 0
					local j = 0

					local function next1_1(event)

						if event.phase == "began" then
							
							--[[if j == 0 then
								nangam_joy.alpha = 1
								joy.alpha = 0
								my_daesapan.alpha = 0
								daewha22[2].alpha = 0
								daewha22[3].alpha = 1
								j = j+1
							else]]
								composer.removeScene("viewmonth6_script")
								composer.gotoScene("view01Map")
							--end
						end
					end

					

					local function next1(event)
						if event.phase == "began" then
							loadedSettings.yellow = loadedSettings.yellow + 2
							loadsave.saveTable(loadedSettings,"settings.json")
							daewha21[4].alpha = 0
							my_daesapan.alpha=1
							choose21.alpha = 0
							choose22.alpha = 0
							daewha22[1].alpha = 0
							daewha23[1].alpha = 0
							daewha22[2].alpha = 1
							choose21:removeEventListener("touch",next1)
							script_2:addEventListener("touch",next1_1)
						end

					end

					local function next1_2(event)

						if event.phase == "began" then
							
							--[[if j == 0 then
								joy.alpha = 0
								happy_joy.alpha = 1
								my_daesapan.alpha = 0
								daewha23[2].alpha = 0
								daewha23[3].alpha = 1
								j = j+1
							else]]
								script_2:removeEventListener("touch",next1_2)
								composer.removeScene("viewmonth6_script")
								composer.gotoScene("view01Map")
							--end
						end
					end

					local function next2(event)
						if event.phase == "began" then
							loadedSettings.yellow = loadedSettings.yellow + 5
							loadsave.saveTable(loadedSettings,"settings.json")				
							daewha21[4].alpha = 0
							my_daesapan.alpha=1
							choose21.alpha = 0
							choose22.alpha = 0
							daewha23[1].alpha = 0
							daewha22[1].alpha = 0
							daewha23[2].alpha = 1
							choose22:removeEventListener("touch",next2)
							script_2:addEventListener("touch",next1_2)
						end

					end

					local function next(event)
						if event.phase == "began" then

							if i == 0 then
								daewha21[1].alpha = 0
						
								daewha21[2].alpha = 1
								my_daesapan.alpha  = 1
								i=i+1

							elseif i == 1 then
								
								daewha21[2].alpha = 0
								my_daesapan.alpha  = 0
								daewha21[3].alpha = 1
								i=i+1

							elseif i == 2 then
								
								daewha21[3].alpha = 0
								my_daesapan.alpha  = 0
								daewha21[4].alpha = 1
								i=i+1
							

							else
								
								script_2:removeEventListener("touch",next)
								choose21.alpha = 1
								daewha22[1].alpha = 1
								daewha22[1]:setFillColor(1)
								daewha22[1].anchorX,daewha22[1].anchorY = 0.5,0.5
								daewha22[1].x,daewha22[1].y = display.contentWidth*0.2,display.contentHeight*0.47
				
								choose22.alpha = 1
								daewha23[1].alpha = 1
								daewha23[1]:setFillColor(1)
								daewha23[1].anchorX,daewha23[1].anchorY = 0.5,0.5
								daewha23[1].x,daewha23[1].y = display.contentWidth*0.8,display.contentHeight*0.47

								choose21:addEventListener("touch",next1)
								choose22:addEventListener("touch",next2)

							end
						end
					end


					background_2.alpha = 1
					joy.alpha = 1
					script_2.alpha = 1
					daewha21.alpha = 1
					daewha21[1].alpha = 1
					script_2:addEventListener("touch",next)
				else 
					composer.removeScene("viewmonth6_script")
					composer.gotoScene("view15limited")
				end
		else 
					composer.removeScene("viewmonth6_script")
					composer.gotoScene("view15limited")
		end
	elseif color == "4" then
			-- 보라마을 이동
		if loadedSettings.limited_num ~=2 then

				if loadedSettings.purple_num ~= 1 then
					loadedSettings.purple_num = loadedSettings.purple_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1
					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					loadsave.saveTable(loadedSettings, "settings.json")
					local i = 0
					local j = 0

					local function next1_1(event)

						if event.phase == "began" then
							
							--[[if j == 0 then
								lay.alpha = 0
								sad_lay.alpha = 1
								my_daesapan.alpha = 0
								daewha52[2].alpha = 0
								daewha52[3].alpha = 1
								j = j+1
							else]]
								composer.removeScene("viewmonth6_script")
								composer.gotoScene("viewmonth_event_레이_birthday")
								--composer.gotoScene("view01Map")
							--end
						end
					end

					

					local function next1(event)
						if event.phase == "began" then
							loadedSettings.purple = loadedSettings.purple + 2
							loadsave.saveTable(loadedSettings,"settings.json")
							daewha51[2].alpha = 0
							my_daesapan.alpha= 0
							choose51.alpha = 0
							choose52.alpha = 0
							daewha52[1].alpha = 0
							daewha53[1].alpha = 0
							daewha52[2].alpha = 1
							choose51:removeEventListener("touch",next1)
							script_5:addEventListener("touch",next1_1)
						end

					end

					local function next1_2(event)

						if event.phase == "began" then
							
							--[[if j == 0 then
								
								lay.alpha = 0
								alay.alpha = 1
								my_daesapan.alpha = 0
								daewha53[2].alpha = 0
								daewha53[3].alpha = 1
								j = j+1
							else]]
								composer.removeScene("viewmonth6_script")
								composer.gotoScene("viewmonth_event_레이_birthday")----수정
								--composer.gotoScene("view01Map")
							--end
						end
					end

					local function next2(event)
						if event.phase == "began" then
							loadedSettings.purple = loadedSettings.purple + 5
							loadsave.saveTable(loadedSettings,"settings.json")					
							daewha51[2].alpha = 0
							my_daesapan.alpha= 0
							choose51.alpha = 0
							choose52.alpha = 0
							daewha53[1].alpha = 0
							daewha52[1].alpha = 0
							daewha53[2].alpha = 1
							choose52:removeEventListener("touch",next1)
							script_5:addEventListener("touch",next1_2)
						end

					end

					local function next(event)
						if event.phase == "began" then

							

							if i == 0 then
								
								daewha51[1].alpha = 0
								my_daesapan.alpha = 1
								daewha51[2].alpha = 1
								i=i+1

							else
								
								script_5:removeEventListener("touch",next)
								choose51.alpha = 1
								daewha52[1].alpha = 1
								daewha52[1]:setFillColor(1)
								daewha52[1].anchorX,daewha52[1].anchorY = 0.5,0.5
								daewha52[1].x,daewha52[1].y = display.contentWidth*0.2,display.contentHeight*0.47
				
								choose52.alpha = 1
								daewha53[1].alpha = 1
								daewha53[1]:setFillColor(1)
								daewha53[1].anchorX,daewha53[1].anchorY = 0.5,0.5
								daewha53[1].x,daewha53[1].y = display.contentWidth*0.8,display.contentHeight*0.47

								choose51:addEventListener("touch",next1)
								choose52:addEventListener("touch",next2)

							end
						end
					end


					background_5.alpha = 1
					lay.alpha = 1
					script_5.alpha = 1
					daewha51.alpha = 1
					my_daesapan.alpha = 0
					daewha51[1].alpha = 1
					script_5:addEventListener("touch",next)

				else 
					composer.removeScene("viewmonth6_script")
					composer.gotoScene("view15limited")
				end
		else 
					composer.removeScene("viewmonth6_script")
					composer.gotoScene("view15limited")
		end
	elseif color == "5" then
		--초록마을 이동
		if loadedSettings.limited_num ~=2 then

				if loadedSettings.green_num ~= 1 then
					loadedSettings.green_num = loadedSettings.green_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1
					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					loadsave.saveTable(loadedSettings, "settings.json")
					local i = 0
					local j = 0

					local function next1_1(event)

						if event.phase == "began" then
							
							--[[if j == 0 then
								soli.alpha = 0
								happy_soli.alpha = 1
								my_daesapan.alpha = 0
								daewha32[2].alpha = 0
								daewha32[3].alpha = 1
								j = j+1
							else]]
								composer.removeScene("viewmonth6_script")
								composer.gotoScene("view01Map")
							--end
						end
					end

					

					local function next1(event)
						if event.phase == "began" then
							loadedSettings.green = loadedSettings.green + 5
							loadsave.saveTable(loadedSettings,"settings.json")
							daewha31[2].alpha = 0
							my_daesapan.alpha=1
							choose31.alpha = 0
							choose32.alpha = 0
							daewha32[1].alpha = 0
							daewha33[1].alpha = 0
							daewha32[2].alpha = 1
							choose31:removeEventListener("touch",next1)
							script_3:addEventListener("touch",next1_1)
						end

					end

					local function next1_2(event)

						if event.phase == "began" then
							
							--[[if j == 0 then
								
								
								my_daesapan.alpha = 0
								daewha33[2].alpha = 0
								daewha33[3].alpha = 1
								j = j+1
							else]]
								composer.removeScene("viewmonth6_script")
								composer.gotoScene("view01Map")
							--end
						end
					end

					local function next2(event)
						if event.phase == "began" then
							loadedSettings.green = loadedSettings.green + 2
							loadsave.saveTable(loadedSettings,"settings.json")		
							daewha31[2].alpha = 0
							my_daesapan.alpha=1
							choose31.alpha = 0
							choose32.alpha = 0
							daewha33[1].alpha = 0
							daewha32[1].alpha = 0
							daewha33[2].alpha = 1
							choose32:removeEventListener("touch",next1)
							script_3:addEventListener("touch",next1_2)
						end

					end

					local function next(event)
						if event.phase == "began" then

							

							if i == 0 then
								
								daewha31[1].alpha = 0
								my_daesapan.alpha = 0
								daewha31[2].alpha = 1
								i=i+1

							--[[elseif i == 1 then

								daewha31[2].alpha = 0
								my_daesapan.alpha = 1
								daewha31[3].alpha = 1
								i=i+1

							elseif i == 2 then

								daewha31[3].alpha = 0
								my_daesapan.alpha = 0
								daewha31[4].alpha = 1
								i=i+1]]


							else
								
								script_3:removeEventListener("touch",next)
								choose31.alpha = 1
								daewha32[1].alpha = 1
								daewha32[1]:setFillColor(1)
								daewha32[1].anchorX,daewha32[1].anchorY = 0.5,0.5
								daewha32[1].x,daewha32[1].y = display.contentWidth*0.2,display.contentHeight*0.47
				
								choose32.alpha = 1
								daewha33[1].alpha = 1
								daewha33[1]:setFillColor(1)
								daewha33[1].anchorX,daewha33[1].anchorY = 0.5,0.5
								daewha33[1].x,daewha33[1].y = display.contentWidth*0.8,display.contentHeight*0.47

								choose31:addEventListener("touch",next1)
								choose32:addEventListener("touch",next2)

							end
						end
					end


					background_3.alpha = 1
					soli.alpha = 1
					script_3.alpha = 1
					my_daesapan.alpha = 1
					daewha31.alpha = 1
					daewha31[1].alpha = 1
					script_3:addEventListener("touch",next)
				else 
					composer.removeScene("viewmonth6_script")
					composer.gotoScene("view15limited")
				end
		else 
					composer.removeScene("viewmonth6_script")
					composer.gotoScene("view15limited")
		end
	end
			-- 초록마을 이동





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