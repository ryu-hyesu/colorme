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
	mainName = loadedSettings.name

	--loadedSettings.month = loadedSettings.month + 1
	
	--loadedSettings.money = loadedSettings.money + score3
	--print(loadedSettings.money)
	--loadsave.saveTable(loadedSettings, "settings.json")
	local i
	local j = 1
	local c = {}
	local s = {}
	local t = {}
	local b1
	local b2
	local bt1
	local bt2

	local rf = 0
	local bf = 0
	local yf = 0
	local pf = 0
	local gf = 0
	local function touch4(event)
		for i = 2, 5 do
			t[i].alpha = 0
		end
			composer.removeScene("viewmonth1_script")
			composer.gotoScene("view01Map")
	end

	--빨간마을 버튼클릭
	local function b1ClickRed(event)
		j = 5
		rf = 1
		c[3].alpha = 0
		s[3].alpha = 0
		t[3].alpha = 0
		c[4].alpha = 1
		s[4].alpha = 1
		t[4].alpha = 1
		b1.alpha = 0
		b2.alpha = 0
		bt1.alpha = 0
		bt2.alpha = 0
		loadedSettings.red = loadedSettings.red + 5
		loadsave.saveTable(loadedSettings,"settings.json")
	end
	local function b2ClickRed(event)
		rf = 1
		j = 5
		c[3].alpha = 0
		s[3].alpha = 0
		t[3].alpha = 0
		c[5].alpha = 1
		s[5].alpha = 1
		t[5].alpha = 1
		b1.alpha = 0
		b2.alpha = 0
		bt1.alpha = 0
		bt2.alpha = 0
		loadedSettings.red = loadedSettings.red + 2
		loadsave.saveTable(loadedSettings,"settings.json")
	end

	--파란마을 버튼클릭
	local function b1ClickBlue(event)
		bf = 1
		j = 5
		c[3].alpha = 0
		s[3].alpha = 0
		t[3].alpha = 0
		c[4].alpha = 1
		s[4].alpha = 1
		t[4].alpha = 1
		b1.alpha = 0
		b2.alpha = 0
		bt1.alpha = 0
		bt2.alpha = 0
		loadedSettings.blue = loadedSettings.blue + 5
		loadsave.saveTable(loadedSettings,"settings.json")
	end
	local function b2ClickBlue(event)
		bf = 1
		j = 5
		c[3].alpha = 0
		s[3].alpha = 0
		t[3].alpha = 0
		c[5].alpha = 1
		s[5].alpha = 1
		t[5].alpha = 1
		b1.alpha = 0
		b2.alpha = 0
		bt1.alpha = 0
		bt2.alpha = 0
		loadedSettings.blue = loadedSettings.blue + 2
		loadsave.saveTable(loadedSettings,"settings.json")
	end

	--노란마을 버튼클릭
	local function b1ClickYellow(event)
		yf = 1
		j = 5
		c[3].alpha = 0
		s[3].alpha = 0
		t[3].alpha = 0
		c[4].alpha = 1
		s[4].alpha = 1
		t[4].alpha = 1
		b1.alpha = 0
		b2.alpha = 0
		bt1.alpha = 0
		bt2.alpha = 0
		loadedSettings.yellow = loadedSettings.yellow + 2
		loadsave.saveTable(loadedSettings,"settings.json")
	end
	local function b2ClickYellow(event)
		yf = 1
		j = 5
		c[3].alpha = 0
		s[3].alpha = 0
		t[3].alpha = 0
		c[5].alpha = 1
		s[5].alpha = 1
		t[5].alpha = 1
		b1.alpha = 0
		b2.alpha = 0
		bt1.alpha = 0
		bt2.alpha = 0
		loadedSettings.yellow = loadedSettings.yellow + 5
		loadsave.saveTable(loadedSettings,"settings.json")
	end

	--보라마을 버튼클릭
	local function b1ClickPurple(event)
		pf = 1
		j = 5
		c[3].alpha = 0
		s[3].alpha = 0
		t[3].alpha = 0
		c[4].alpha = 1
		s[4].alpha = 1
		t[4].alpha = 1
		b1.alpha = 0
		b2.alpha = 0
		bt1.alpha = 0
		bt2.alpha = 0
		loadedSettings.purple = loadedSettings.purple + 2
		loadsave.saveTable(loadedSettings,"settings.json")
	end
	local function b2ClickPurple(event)
		pf = 1
		j = 5
		c[3].alpha = 0
		s[3].alpha = 0
		t[3].alpha = 0
		c[5].alpha = 1
		s[5].alpha = 1
		t[5].alpha = 1
		b1.alpha = 0
		b2.alpha = 0
		bt1.alpha = 0
		bt2.alpha = 0
		loadedSettings.purple = loadedSettings.purple + 5
		loadsave.saveTable(loadedSettings,"settings.json")
	end

	--초록마을 버튼클릭
	local function b1ClickGreen(event)
		gf = 1
		j = 5
		c[3].alpha = 0
		s[3].alpha = 0
		t[3].alpha = 0
		c[4].alpha = 1
		s[4].alpha = 1
		t[4].alpha = 1
		b1.alpha = 0
		b2.alpha = 0
		bt1.alpha = 0
		bt2.alpha = 0
		loadedSettings.green = loadedSettings.green + 5
		loadsave.saveTable(loadedSettings,"settings.json")
	end
	local function b2ClickGreen(event)
		gf = 1
		j = 5
		c[3].alpha = 0
		s[3].alpha = 0
		t[3].alpha = 0
		c[5].alpha = 1
		s[5].alpha = 1
		t[5].alpha = 1
		b1.alpha = 0
		b2.alpha = 0
		bt1.alpha = 0
		bt2.alpha = 0
		loadedSettings.green = loadedSettings.green + 2
		loadsave.saveTable(loadedSettings,"settings.json")
	end

	print("what" .. loadedSettings.friendship)


	local color = composer.getVariable("color")

	-- 빨간마을화면전환
	local function redPage()
		if j > 1 and j < 4 then
			c[j - 1].alpha = 0
			s[j - 1].alpha = 0
			t[j - 1].alpha = 0
			c[j].alpha = 1
			s[j].alpha = 1
			t[j].alpha = 1
		end
		j = j + 1
		if j == 4 then
			b1.alpha = 1
			b2.alpha = 1
			bt1 = display.newText("잠자는 물 속의 공주", display.contentWidth*0.2,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
			bt1:setFillColor(1)
			bt1.anchorX,bt1.anchorY = 0.5,0.5
			sceneGroup:insert(bt1)
			b1:addEventListener("touch",b1ClickRed)
			bt2 = display.newText("007 돌아온 제임스 딱풀", display.contentWidth*0.8,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
			bt2:setFillColor(1)
			bt2.anchorX,bt2.anchorY = 0.5,0.5
			sceneGroup:insert(bt2)
			b2:addEventListener("touch",b2ClickRed)
		end

		if j == 7 and rf == 1 then
			composer.removeScene("viewmonth1_script")
			composer.gotoScene("view01Map")
		end
	end

	-- 파란마을화면전환
	local function bluePage()
		if j > 1 and j < 4 then
			c[j - 1].alpha = 0
			s[j - 1].alpha = 0
			t[j - 1].alpha = 0
			c[j].alpha = 1
			s[j].alpha = 1
			t[j].alpha = 1
		end
		j = j + 1
		if j == 4 then
			b1.alpha = 1
			b2.alpha = 1
			bt1 = display.newText("위즈라면 왠지…\n『박쥐와 베란다에 매달리기』", display.contentWidth*0.2,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
			bt1:setFillColor(1)
			bt1.anchorX,bt1.anchorY = 0.5,0.5
			sceneGroup:insert(bt1)
			b1:addEventListener("touch",b1ClickBlue)
			bt2 = display.newText("가장 기본적인 게 좋겠지?\n『과학의 정석』", display.contentWidth*0.8,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
			bt2:setFillColor(1)
			bt2.anchorX,bt2.anchorY = 0.5,0.5
			sceneGroup:insert(bt2)
			b2:addEventListener("touch",b2ClickBlue)
		end

		if j == 7 and bf == 1 then
			composer.removeScene("viewmonth1_script")
         	composer.gotoScene("viewmonth_event_위즈_birthday")----수정
         	--composer.gotoScene("view01Map")
		end
	end

	-- 노란마을화면전환
	local function yellowPage()
		if j > 1 and j < 4 then
			c[j - 1].alpha = 0
			s[j - 1].alpha = 0
			t[j - 1].alpha = 0
			c[j].alpha = 1
			s[j].alpha = 1
			t[j].alpha = 1
		end
		j = j + 1
		if j == 4 then
			b1.alpha = 1
			b2.alpha = 1
			bt1 = display.newText("오랜만에 도서관이나 갈까?\n재밌는 책이 많을 거야.", display.contentWidth*0.2,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
			bt1:setFillColor(1)
			bt1.anchorX,bt1.anchorY = 0.5,0.5
			sceneGroup:insert(bt1)
			b1:addEventListener("touch",b1ClickYellow)
			bt2 = display.newText("기분전환엔 이만한 곳이 없지! \n노래방에 가자. ", display.contentWidth*0.8,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
			bt2:setFillColor(1)
			bt2.anchorX,bt2.anchorY = 0.5,0.5
			sceneGroup:insert(bt2)
			b2:addEventListener("touch",b2ClickYellow)
		end

		if j == 7 and yf == 1 then
			composer.removeScene("viewmonth1_script")
			composer.gotoScene("view01Map")
		end
	end

	-- 보라마을화면전환
	local function purplePage()
		if j > 1 and j < 4 then
			c[j - 1].alpha = 0
			s[j - 1].alpha = 0
			t[j - 1].alpha = 0
			c[j].alpha = 1
			s[j].alpha = 1
			t[j].alpha = 1
		end
		j = j + 1
		if j == 4 then
			b1.alpha = 1
			b2.alpha = 1
			bt1 = display.newText("혼자 다녀오는 경험도\n해봐야 하지 않을까?\n혼자 다녀와 봐! 괜찮을거야.", display.contentWidth*0.2,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
			bt1:setFillColor(1)
			bt1.anchorX,bt1.anchorY = 0.5,0.5
			sceneGroup:insert(bt1)
			b1:addEventListener("touch",b1ClickPurple)
			bt2 = display.newText("그, 그건 나도 무서운데….\n하지만 둘이 간다면\n덜 무서울지도 몰라.", display.contentWidth*0.8,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
			bt2:setFillColor(1)
			bt2.anchorX,bt2.anchorY = 0.5,0.5
			sceneGroup:insert(bt2)
			b2:addEventListener("touch",b2ClickPurple)
		end

		if j == 7 and pf == 1 then
			composer.removeScene("viewmonth1_script")
			composer.gotoScene("view01Map")
		end
	end

	-- 초록마을화면전환
	local function greenPage()
		if j > 1 and j < 4 then
			c[j - 1].alpha = 0
			s[j - 1].alpha = 0
			t[j - 1].alpha = 0
			c[j].alpha = 1
			s[j].alpha = 1
			t[j].alpha = 1
		end
		j = j + 1
		if j == 4 then
			b1.alpha = 1
			b2.alpha = 1
			bt1 = display.newText("내가 큰 쪽을 먹고 싶지만…\n솔리에게 양보할래.\n[작은 쪽을 선택한다.]", display.contentWidth*0.2,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
			bt1:setFillColor(1)
			bt1.anchorX,bt1.anchorY = 0.5,0.5
			sceneGroup:insert(bt1)
			b1:addEventListener("touch",b1ClickGreen)
			bt2 = display.newText("쌍둥이 바 큰 쪽! 아싸~\n[큰 쪽을 선택한다.]", display.contentWidth*0.8,display.contentHeight*0.48, "font/NanumSquare_acB.ttf", 25)
			bt2:setFillColor(1)
			bt2.anchorX,bt2.anchorY = 0.5,0.5
			sceneGroup:insert(bt2)
			b2:addEventListener("touch",b2ClickGreen)
		end

		if j == 7 and gf == 1 then
			composer.removeScene("viewmonth1_script")
			composer.gotoScene("view01Map")
		end
	end

	if color == "1" then

		if loadedSettings.limited_num ~=2 then
				if loadedSettings.red_num ~= 1 then

					loadedSettings.red_num = loadedSettings.red_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1

					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					Runtime:addEventListener("tap", redPage)
					loadedSettings.friendship = loadedSettings.friendship + 8
					print("1번째")
					print(loadedSettings.limited_num)
					loadsave.saveTable(loadedSettings,"settings.json")
					local red_bg = display.newImage("대화창-마을배경/캐릭터대화창-빨강마을배경.png")
					red_bg.x, red_bg.y = display.contentWidth/2,display.contentHeight/2
					sceneGroup:insert(red_bg)

					--캐릭터
					c[1] = display.newImage("c/r.png", display.contentWidth/2,display.contentHeight*0.5)
					c[2] = display.newImage("c/r.png", display.contentWidth/2,display.contentHeight*0.5)
					c[3] = display.newImage("c/r.png", display.contentWidth/2,display.contentHeight*0.5)
					c[4] = display.newImage("c/rHappy.png", display.contentWidth/2,display.contentHeight*0.5)
					c[5] = display.newImage("c/rUgh.png", display.contentWidth/2,display.contentHeight*0.5)

					--대화창
					s[1] = display.newImage("s/r.png", display.contentWidth/2,display.contentHeight*0.8)
					s[2] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
					s[3] = display.newImage("s/r.png", display.contentWidth/2,display.contentHeight*0.8)
					s[4] = display.newImage("s/r.png", display.contentWidth/2,display.contentHeight*0.8)
					s[5] = display.newImage("s/r.png", display.contentWidth/2,display.contentHeight*0.8)

					--대사
					t[1] = display.newText(mainName  .. ", 영화보러 가자!", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[2] = display.newText("좋아!", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[3] = display.newText("어떤 영화를 볼까?", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[4] = display.newText("꺄아! 공주이야기라니! 재밌겠다!", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[5] = display.newText("제임스 딱풀… 이거 무서운거 아니야? 막 총 쏘던데….", 105,550, "font/NanumSquare_acB.ttf", 25)

					--버튼
					b1 = display.newImage("b/r.png")
					b1.x, b1.y = display.contentWidth*0.2,display.contentHeight*0.47
					sceneGroup:insert(b1)
					b1.alpha = 0
					b2 = display.newImage("b/r.png")
					b2.x, b2.y = display.contentWidth*0.8,display.contentHeight*0.47
					sceneGroup:insert(b2)
					b2.alpha = 0


					for i = 1, 5 do
						t[i]:setFillColor(alpha)
						t[i].anchorX,t[i].anchorY = 0.0,0.0
						sceneGroup:insert(c[i])
						sceneGroup:insert(s[i])
						sceneGroup:insert(t[i])
					end

					for i = 2, 5 do
						s[i].alpha = 0
						c[i].alpha = 0
						t[i].alpha = 0
					end
				else 
					composer.removeScene("viewmonth1_script")
					composer.gotoScene("view15limited")
				end
		else 
					composer.removeScene("viewmonth1_script")
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
					Runtime:addEventListener("tap", bluePage)

					loadedSettings.friendship = loadedSettings.friendship + 8
					print(loadedSettings.limited_num)
					print("1번째")
					loadsave.saveTable(loadedSettings,"settings.json")
					local blue_bg = display.newImage("대화창-마을배경/캐릭터대화창-파랑마을배경.png")
					blue_bg.x, blue_bg.y = display.contentWidth/2,display.contentHeight/2
					sceneGroup:insert(blue_bg)

					--캐릭터
					c[1] = display.newImage("c/b.png", display.contentWidth/2,display.contentHeight*0.5)
					c[2] = display.newImage("c/b.png", display.contentWidth/2,display.contentHeight*0.5)
					c[3] = display.newImage("c/b.png", display.contentWidth/2,display.contentHeight*0.5)
					c[4] = display.newImage("c/bHappy.png", display.contentWidth/2,display.contentHeight*0.5)
					c[5] = display.newImage("c/bUgh.png", display.contentWidth/2,display.contentHeight*0.5)

					--대화창
					s[1] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
					s[2] = display.newImage("s/b.png", display.contentWidth/2,display.contentHeight*0.8)
					s[3] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
					s[4] = display.newImage("s/b.png", display.contentWidth/2,display.contentHeight*0.8)
					s[5] = display.newImage("s/b.png", display.contentWidth/2,display.contentHeight*0.8)

					--대사
					t[1] = display.newText("위즈야! 내가 선물을 갖고 왔어.", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[2] = display.newText("정말?", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[3] = display.newText("위즈에게 어떤 책을 선물하면 좋을까?", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[4] = display.newText("이야, 제목만 봐도 벌써 흥미로운걸. 고마워!", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[5] = display.newText("…고맙다….(이건 이미 세 살에 다 통달한 책이라구…;)", 105,550, "font/NanumSquare_acB.ttf", 25)

					--버튼
					b1 = display.newImage("b/b.png")
					b1.x, b1.y = display.contentWidth*0.2,display.contentHeight*0.47
					sceneGroup:insert(b1)
					b1.alpha = 0
					b2 = display.newImage("b/b.png")
					b2.x, b2.y = display.contentWidth*0.8,display.contentHeight*0.47
					sceneGroup:insert(b2)
					b2.alpha = 0


					for i = 1, 5 do
						t[i]:setFillColor(alpha)
						t[i].anchorX,t[i].anchorY = 0.0,0.0
						sceneGroup:insert(c[i])
						sceneGroup:insert(s[i])
						sceneGroup:insert(t[i])
					end

					for i = 2, 5 do
						s[i].alpha = 0
						c[i].alpha = 0
						t[i].alpha = 0
					end
				else 
					composer.removeScene("viewmonth1_script")
					composer.gotoScene("view15limited")
				end
		else 
					composer.removeScene("viewmonth1_script")
					composer.gotoScene("view15limited")
		end


	elseif color == "3" then
		--노랑마을 이동
		if loadedSettings.limited_num ~=2 then

				if loadedSettings.yellow_num ~= 1 then
					loadedSettings.yellow_num = loadedSettings.yellow_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1

					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					Runtime:addEventListener("tap", yellowPage)

					loadedSettings.friendship = loadedSettings.friendship + 8
					print("1번째")
					print(loadedSettings.limited_num)
					loadsave.saveTable(loadedSettings,"settings.json")
					local yellow_bg = display.newImage("대화창-마을배경/캐릭터대화창-노랑마을배경.png")
					yellow_bg.x, yellow_bg.y = display.contentWidth/2,display.contentHeight/2
					sceneGroup:insert(yellow_bg)

					--캐릭터
					c[1] = display.newImage("c/y.png", display.contentWidth/2,display.contentHeight*0.5)
					c[2] = display.newImage("c/y.png", display.contentWidth/2,display.contentHeight*0.5)
					c[3] = display.newImage("c/y.png", display.contentWidth/2,display.contentHeight*0.5)
					c[4] = display.newImage("c/yUgh.png", display.contentWidth/2,display.contentHeight*0.5)
					c[5] = display.newImage("c/yHappy.png", display.contentWidth/2,display.contentHeight*0.5)

					--대화창
					s[1] = display.newImage("s/y.png", display.contentWidth/2,display.contentHeight*0.8)
					s[2] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
					s[3] = display.newImage("s/y.png", display.contentWidth/2,display.contentHeight*0.8)
					s[4] = display.newImage("s/y.png", display.contentWidth/2,display.contentHeight*0.8)
					s[5] = display.newImage("s/y.png", display.contentWidth/2,display.contentHeight*0.8)

					--대사
					t[1] = display.newText(mainName  .."! 잘 왔어. 마침 기분 전환하러 나가던 참이거든! 같이 가자!", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[2] = display.newText("그래, 좋아!", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[3] = display.newText("어디로 갈까?", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[4] = display.newText("채, 책…? 그, 그래!(도서관에서는 조용히 해야지….)", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[5] = display.newText("좋아! 무슨 노래를 부를까? 빨리 가자!", 105,550, "font/NanumSquare_acB.ttf", 25)

					--버튼
					b1 = display.newImage("b/y.png")
					b1.x, b1.y = display.contentWidth*0.2,display.contentHeight*0.47
					sceneGroup:insert(b1)
					b1.alpha = 0
					b2 = display.newImage("b/y.png")
					b2.x, b2.y = display.contentWidth*0.8,display.contentHeight*0.47
					sceneGroup:insert(b2)
					b2.alpha = 0


					for i = 1, 5 do
						t[i]:setFillColor(alpha)
						t[i].anchorX,t[i].anchorY = 0.0,0.0
						sceneGroup:insert(c[i])
						sceneGroup:insert(s[i])
						sceneGroup:insert(t[i])
					end

					for i = 2, 5 do
						s[i].alpha = 0
						c[i].alpha = 0
						t[i].alpha = 0
					end
				else 
					composer.removeScene("viewmonth1_script")
					composer.gotoScene("view15limited")
				end
		else 
					composer.removeScene("viewmonth1_script")
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
					Runtime:addEventListener("tap", purplePage)

					loadedSettings.friendship = loadedSettings.friendship + 8
					print("1번째")
					loadsave.saveTable(loadedSettings,"settings.json")
					local purple_bg = display.newImage("대화창-마을배경/캐릭터대화창-보라마을배경.png")
					purple_bg.x, purple_bg.y = display.contentWidth/2,display.contentHeight/2
					sceneGroup:insert(purple_bg)

					local script_bg = display.newImage("대화창-대사판/캐릭터대화창-대사창(블리).png")
					script_bg.x, script_bg.y = display.contentWidth/2,display.contentHeight*0.8
					sceneGroup:insert(script_bg)
					--캐릭터
					c[1] = display.newImage("c/p.png", display.contentWidth/2,display.contentHeight*0.5)
					c[2] = display.newImage("c/p.png", display.contentWidth/2,display.contentHeight*0.5)
					c[3] = display.newImage("c/p.png", display.contentWidth/2,display.contentHeight*0.5)
					c[4] = display.newImage("c/pSad.png", display.contentWidth/2,display.contentHeight*0.5)
					c[5] = display.newImage("c/pHappy.png", display.contentWidth/2,display.contentHeight*0.5)

					--대화창
					s[1] = display.newImage("s/p.png", display.contentWidth/2,display.contentHeight*0.8)
					s[2] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
					s[3] = display.newImage("s/p.png", display.contentWidth/2,display.contentHeight*0.8)
					s[4] = display.newImage("s/p.png", display.contentWidth/2,display.contentHeight*0.8)
					s[5] = display.newImage("s/p.png", display.contentWidth/2,display.contentHeight*0.8)

					--대사
					t[1] = display.newText(mainName  ..", 나 좀 도와줘!", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[2] = display.newText("왜 그래?", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[3] = display.newText("심부름을 가야 하는데, 밖이 너무 깜깜해서 무서워…. 같이 가 줄래? ", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[4] = display.newText("내가 할 수 있…을까?", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[5] = display.newText("맞아! 둘이 가면 덜 무서울거야.", 105,550, "font/NanumSquare_acB.ttf", 25)

					--버튼
					b1 = display.newImage("b/y.png")
					b1.x, b1.y = display.contentWidth*0.2,display.contentHeight*0.47
					sceneGroup:insert(b1)
					b1.alpha = 0
					b2 = display.newImage("b/y.png")
					b2.x, b2.y = display.contentWidth*0.8,display.contentHeight*0.47
					sceneGroup:insert(b2)
					b2.alpha = 0


					for i = 1, 5 do
						t[i]:setFillColor(alpha)
						t[i].anchorX,t[i].anchorY = 0.0,0.0
						sceneGroup:insert(c[i])
						sceneGroup:insert(s[i])
						sceneGroup:insert(t[i])
					end

					for i = 2, 5 do
						s[i].alpha = 0
						c[i].alpha = 0
						t[i].alpha = 0
					end
				else 
					composer.removeScene("viewmonth1_script")
					composer.gotoScene("view15limited")
				end
		else 
					composer.removeScene("viewmonth1_script")
					composer.gotoScene("view15limited")
		end
	elseif color == "5" then
			-- 초록마을 이동
		if loadedSettings.limited_num ~=2 then

				if loadedSettings.green_num ~= 1 then
					loadedSettings.green_num = loadedSettings.green_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1
					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					Runtime:addEventListener("tap", greenPage)
					loadedSettings.friendship = loadedSettings.friendship + 8
					print("1번째")
					loadsave.saveTable(loadedSettings,"settings.json")
					local green_bg = display.newImage("대화창-마을배경/캐릭터대화창-초록마을배경.png")
					green_bg.x, green_bg.y = display.contentWidth/2,display.contentHeight/2
					sceneGroup:insert(green_bg)

					local script_bg = display.newImage("대화창-대사판/캐릭터대화창-대사창(블리).png")
					script_bg.x, script_bg.y = display.contentWidth/2,display.contentHeight*0.8
					sceneGroup:insert(script_bg)
					--캐릭터
					c[1] = display.newImage("c/g.png", display.contentWidth/2,display.contentHeight*0.5)
					c[2] = display.newImage("c/g.png", display.contentWidth/2,display.contentHeight*0.5)
					c[3] = display.newImage("c/g.png", display.contentWidth/2,display.contentHeight*0.5)
					c[4] = display.newImage("c/gHappy.png", display.contentWidth/2,display.contentHeight*0.5)
					c[5] = display.newImage("c/gHappy.png", display.contentWidth/2,display.contentHeight*0.5)

					--대화창
					s[1] = display.newImage("s/g.png", display.contentWidth/2,display.contentHeight*0.8)
					s[2] = display.newImage("s/w.png", display.contentWidth/2,display.contentHeight*0.8)
					s[3] = display.newImage("s/g.png", display.contentWidth/2,display.contentHeight*0.8)
					s[4] = display.newImage("s/g.png", display.contentWidth/2,display.contentHeight*0.8)
					s[5] = display.newImage("s/g.png", display.contentWidth/2,display.contentHeight*0.8)

					--대사
					t[1] = display.newText(mainName  .."! 어서 와. 같이 쌍둥이 바 먹자.", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[2] = display.newText("응!", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[3] = display.newText("솔리가 아이스크림을 반으로 나눈다.\n아이스크림이 비대칭으로 나눠진다.\n솔리가 주인공에게 큰 쪽을 내민다.", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[4] = display.newText("솔리가 환하게 웃는다. “나에게 양보해주는거야? 정말 고마워 "..  mainName  .. "!”", 105,550, "font/NanumSquare_acB.ttf", 25)
					t[5] = display.newText("솔리가 웃는다. “맛있게 먹어, " ..  mainName  ..".”", 105,550, "font/NanumSquare_acB.ttf", 25)

					--버튼
					b1 = display.newImage("b/y.png")
					b1.x, b1.y = display.contentWidth*0.2,display.contentHeight*0.47
					sceneGroup:insert(b1)
					b1.alpha = 0
					b2 = display.newImage("b/y.png")
					b2.x, b2.y = display.contentWidth*0.8,display.contentHeight*0.47
					sceneGroup:insert(b2)
					b2.alpha = 0


					for i = 1, 5 do
						t[i]:setFillColor(alpha)
						t[i].anchorX,t[i].anchorY = 0.0,0.0
						sceneGroup:insert(c[i])
						sceneGroup:insert(s[i])
						sceneGroup:insert(t[i])
					end

					for i = 2, 5 do
						s[i].alpha = 0
						c[i].alpha = 0
						t[i].alpha = 0
					end
				else 
					composer.removeScene("viewmonth1_script")
					composer.gotoScene("view15limited")
				end
		else 
					composer.removeScene("viewmonth1_script")
					composer.gotoScene("view15limited")
		end
	end
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