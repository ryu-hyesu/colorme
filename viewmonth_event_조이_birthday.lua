-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------
-----viewmonth1-----
local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require( "loadsave" )

local limit9992 = composer.getVariable("limit9992")---수정
function scene:create( event )
	if limit9992 == 1 then
		composer.removeScene("viewmonth_script_조이_birthday")
		composer.gotoScene("view15limited")
    end

	local sceneGroup = self.view
	
	local loadedSettings = loadsave.loadTable( "settings.json" )

	local background = display.newImageRect("대화창-마을배경/캐릭터대화창-노랑마을배경.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	--[[local red = display.newImageRect("image/red.png",250,237)
	red.x,red.y = display.contentWidth*0.225,display.contentHeight*0.29
	red.name = "1"
	sceneGroup:insert(red)
	

	local blue = display.newImageRect("image/blue.png",250,237)
	blue.x,blue.y = display.contentWidth*0.78,display.contentHeight*0.3
	blue.name = "2"
	sceneGroup:insert(blue)

	local yellow = display.newImageRect("image/yellow.png",250,237)
	yellow.x,yellow.y = display.contentWidth*0.5,display.contentHeight*0.18
	yellow.name = "3"
	sceneGroup:insert(yellow)

	local purple = display.newImageRect("image/purple.png",250,237)
	purple.x,purple.y = display.contentWidth*0.22,display.contentHeight*0.71
	purple.name = "4"
	sceneGroup:insert(purple)

	local green = display.newImageRect("image/green.png",250,237)
	green.x,green.y = display.contentWidth*0.785,display.contentHeight*0.715
	green.name = "5"
	sceneGroup:insert(green)

	local em = display.newImageRect("image/em.png",250,237)
	em.x,em.y = display.contentWidth*0.5,display.contentHeight*0.83
	em.name = "6"
	sceneGroup:insert(em)

	local store = display.newImageRect("image/store.png",250,237)
	store.x,store.y = display.contentWidth*0.5,display.contentHeight*0.5
	store.name = "7"
	sceneGroup:insert(store)]]



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

	local my_daesapan = display.newImage("대화창-대사판/캐릭터대화창-대사창(주인공).png")
	my_daesapan.x, my_daesapan.y = display.contentWidth/2,display.contentHeight*0.8
	sceneGroup:insert(my_daesapan)
	my_daesapan.alpha=1

	local choose1 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(노랑마을).png")
	choose1.x, choose1.y = display.contentWidth*0.2,display.contentHeight*0.47
	sceneGroup:insert(choose1)
	choose1.alpha = 0

	local choose2 = display.newImage("대화창-선택지버튼/캐릭터대화창-선택지(노랑마을).png")
	choose2.x, choose2.y = display.contentWidth*0.8,display.contentHeight*0.47
	sceneGroup:insert(choose2)
	choose2.alpha = 0
	

	local name = "주인공"

	local daewha = {}
	local daewha2 = {}
	local daewha3 = {}

	local text = {
		"앗,저기 있잖아....",
		"오늘은 조이의 생일이야. 조이에게 생일선물을 줄까?",
		--[["엇, " .. name .. "! 여기서 다 만나네.",
		"어쩐 일이야?",
		"아, 나 개구리를 좀 잡아 볼까 해서 쇼핑하러 왔어.",
		"개구리?",
		"응. 이제 봄이니까 개구리가 겨울잠에서 깨어날 시간이잖아. 각자 다른 곳에서 사는 개구리들을 한 군데에 모아서\n개구리 마을을 만들어 보려고! 그럼 내가 첫 번째 개구리 마을 주민 대표가 되는 거야!",
		"어때, 멋지지 않아?"--]]
	}

	local text2 = {
		"조이의 생일을 축하하자!",
		--[["개구리 마을? 재밌겠다!",
		"개구리 마을이라니, 만들어지면 나도 초대해주는 거지?",
		"물론이지. 제일 먼저 초대할게. 그럼 나 먼저 간다!"]]
	}

	local text3 = {
		"음... 역시 마음이 \n최고의 선물 아닐까?",
		"아, 아무것도 아니야."
		--[["그, 그건 좀…. 개구리 의견도\n    들어 봐야 하지 않을까?",
		"그치만… 개구리가 원하지 않을 수도 있지 않을까?\n개구리들이 다 다른 곳에 사는 데에는 이유가 있을 것 같아!",
		"아, 그렇지. 개구리가 원하지 않을 수도 있겠어.\n그럼 대신 개구리가 왜 한 곳에 살지 않는지를 연구해봐야겠다!",
		"응, 그게 좋겠다!",
		"그럼 쇼핑하고 가. 나는 산 걸 반품하고 '개구리 언어 마이크'를 사야겠어!"]]
	}

	for i = 1,2 do
		daewha[i] = display.newText(text[i],105,550,"font/NanumSquare_acB.ttf")
		daewha[i].anchorX,daewha[i].anchorY = 0,0
		daewha[i]:setFillColor(0)
		daewha[i].alpha = 0
		daewha[i].size = 25
		sceneGroup:insert(daewha[i])
	end

	for i = 1,1 do
		daewha2[i] = display.newText(text2[i],105,550,"font/NanumSquare_acB.ttf")
		daewha2[i].anchorX,daewha2[i].anchorY = 0,0
		daewha2[i]:setFillColor(0)
		daewha2[i].alpha = 0
		daewha2[i].size = 25
		sceneGroup:insert(daewha2[i])
	end

	for i =1,2 do
		daewha3[i] = display.newText(text3[i],105,550,"font/NanumSquare_acB.ttf")
		daewha3[i].anchorX,daewha3[i].anchorY = 0,0
		daewha3[i]:setFillColor(0)
		daewha3[i].alpha = 0
		daewha3[i].size = 25
		sceneGroup:insert(daewha3[i])
	end

	local i = 2
	local n = 3

	daewha[1].alpha = 1

	local function next1_1(event) --choose1 골랐을때 표정
		if event.phase == "began" then
			composer.setVariable("what", 2)
			composer.removeScene("viewmonth_event_조이_birthday")
			composer.gotoScene("viewmonth_event_위즈_birthday_상점")
		end
	end

	local function next1(event) ---choose1을 골랐을때 대사
		if event.phase == "began" then
			--[[daewha[2].alpha = 0
			my_daesapan.alpha=1
			choose1.alpha = 0
			choose2.alpha = 0
			daewha2[1].alpha = 0
			daewha3[1].alpha = 0]]
			--composer.removeScene("viewmonth_event_위즈_birthday")
			--composer.gotoScene("viewmonth_event_위즈_birthday_상점")
			--choose1:removeEventListener("touch",next1)
			--my_daesapan:addEventListener("touch",next1_1)
			composer.setVariable("what", 2)
			composer.removeScene("viewmonth_event_조이_birthday")
			composer.gotoScene("viewmonth_event_위즈_birthday_상점")
		end

	end

	local function next2_1(event) --choose2 골랐을때 표정
		if event.phase == "began" then
			--[[if n == 3 then
				my_daesapan.alpha=1
				daewha3[n-2].alpha = 0
				daewha3[n-1].alpha = 1
				n= n+ 1]]
			composer.removeScene("viewmonth_event_조이_birthday")
			composer.gotoScene("view01Map")
		end
	end

	local function next2(event)  --choose2를 골랐을때 대사
		if event.phase == "began" then
			daewha[2].alpha = 0
			choose1.alpha = 0
			choose2.alpha = 0
			daewha3[1].alpha = 0
			daewha2[1].alpha = 0
			daewha3[2].alpha = 1
			my_daesapan.alpha=1
			print(loadedSettings.blue)
			loadedSettings.blue = loadedSettings.blue + 1
			loadsave.saveTable(loadedSettings, "settings.json")
			choose1:removeEventListener("touch",next2)
			my_daesapan:addEventListener("touch",next2_1)
			
		end

	end


	local function next(event)
		if event.phase == "began" then

			if i == 2 or i == 3 then--or i == 4 then
				my_daesapan.alpha=1
			end
			if i < 3 then
				daewha[i-1].alpha = 0
				daewha[i].alpha = 1
			end

			--i = i + 1

			if i < 4 then
				my_daesapan:removeEventListener("touch",next)
				choose1.alpha = 1
				daewha2[1].alpha = 1
				daewha2[1]:setFillColor(1)
				daewha2[1].anchorX,daewha2.anchorY = 0.5,0.5
				daewha2[1].x,daewha2[1].y = display.contentWidth*0.2,display.contentHeight*0.45
				
				choose2.alpha = 1
				daewha3[1].alpha = 1
				daewha3[1]:setFillColor(1)
				daewha3[1].anchorX,daewha2.anchorY = 0.5,0.5
				daewha3[1].x,daewha3[1].y = display.contentWidth*0.8,display.contentHeight*0.43

				choose1:addEventListener("touch",next1)
				choose2:addEventListener("touch",next2)
			end
		end
	end

	my_daesapan:addEventListener("touch",next)
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