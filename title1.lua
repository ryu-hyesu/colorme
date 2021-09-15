local loadsave = require( "loadsave" )
local composer = require( "composer" )
local scene = composer.newScene()
local json = require( "json" ) 

function scene:create( event )
	local sceneGroup = self.view

	local path = system.pathForFile( "endings.json", system.DocumentsDirectory)
 
    -- Open the file handle
    local file, errorString = io.open( path, "r" )
    if not file then
    	print("make an ending file")
		local endings = {
			rainbow = 0,
			bonus = 0,
			orange = 0,
			violet = 0,
			act_orange = 0,
			act_chung = 0,
			act_violet = 0,
			red = 0,
			yellow = 0,
			blue = 0,
			green = 0,
			purple = 0,
			good = 0,
			bad = 0,
			pastel_red = 0,
			pastel_yellow = 0,
			pastel_blue = 0,
			pastel_green = 0,
			pastel_purple = 0
		}
		loadsave.saveTable( endings, "endings.json" )
    end

    loadedEndings = loadsave.loadTable( "endings.json" )
    local background = display.newImageRect("image/title.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local back = display.newRect(display.contentWidth/2,display.contentHeight/2,display.contentWidth,display.contentHeight)
	back:setFillColor(0)
	back.alpha = 0.5
	sceneGroup:insert(back)

	local color = {}

	for i = 1,6 do
		color[i] = {}
	end

	color[6][1] = loadedEndings.rainbow
	color[6][2] =loadedEndings.bonus

	color[4][1] = loadedEndings.orange
	color[4][2] = loadedEndings.chung
	color[4][3] = loadedEndings.violet
	color[4][4] = loadedEndings.act_orange
	color[4][5] = loadedEndings.act_chung
	color[4][6] = loadedEndings.act_violet

	color[2][1] = loadedEndings.red
	color[2][2] = loadedEndings.yellow
	color[2][3] = loadedEndings.blue
	color[2][4] = loadedEndings.green
	color[2][5] = loadedEndings.purple

	color[3][1] = loadedEndings.good
	color[3][2] = loadedEndings.bad


	color[5][1] = loadedEndings.pastel_red
	color[5][2] = loadedEndings.pastel_yellow
	color[5][3] = loadedEndings.pastel_blue
	color[5][4] = loadedEndings.pastel_green
	color[5][5] = loadedEndings.pastel_purple

	color[1][1] = loadedEndings.red
	color[1][2] = loadedEndings.yellow
	color[1][3] = loadedEndings.blue
	color[1][4] = loadedEndings.green
	color[1][5] = loadedEndings.purple
	color[1][6] = loadedEndings.pastel_red
	color[1][7] = loadedEndings.pastel_yellow
	color[1][8] = loadedEndings.pastel_blue
	color[1][9] = loadedEndings.pastel_green
	color[1][10] = loadedEndings.pastel_purple
	color[1][11] = loadedEndings.orange
	color[1][12] = loadedEndings.chung
	color[1][13] = loadedEndings.violet
	color[1][14] = loadedEndings.act_orange
	color[1][15] = loadedEndings.act_chung
	color[1][16] = loadedEndings.act_violet
	color[1][17] = loadedEndings.good
	color[1][18] = loadedEndings.bad




	 num = {}
	 num[1] = 18
	 num[2] = 5
	 num[3] = 2
	 num[4] = 6
	 num[5] = 5
	 num[6] = 2

	



	local chang = {}
	local button = {}

	local image = {
		"엔딩모음창-색연필모음창/엔딩모음-모든엔딩모음창.png",
		"엔딩모음창-색연필모음창/엔딩모음-우정엔딩모음창.png",
		"엔딩모음창-색연필모음창/엔딩모음-히든엔딩모음창.png",
		"엔딩모음창-색연필모음창/엔딩모음-혼합엔딩모음창.png",
		"엔딩모음창-색연필모음창/엔딩모음-파스텔엔딩모음창.png",
		"엔딩모음창-베스트엔딩 모음/엔딩모음-베스트엔딩모음창.png"
	}

	local image2 = {
		"엔딩모음창-버튼/엔딩모음-모든엔딩모음창 버튼.png",
		"엔딩모음창-버튼/엔딩모음-우정엔딩모음창 버튼.png",
		"엔딩모음창-버튼/엔딩모음-히든엔딩모음창 버튼.png",
		"엔딩모음창-버튼/엔딩모음-혼합엔딩모음창 버튼.png",
		"엔딩모음창-버튼/엔딩모음-파스텔엔딩모음창 버튼.png",
		"엔딩모음창-버튼/엔딩모음-베스트엔딩모음창 버튼.png"
	}

	local image3 = {
		"엔딩모음창-소형색연필모음/엔딩모음-우정엔딩색연필1(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-우정엔딩색연필2(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-우정엔딩색연필3(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-우정엔딩색연필4(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-우정엔딩색연필5(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-파스텔엔딩색연필1(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-파스텔엔딩색연필2(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-파스텔엔딩색연필3(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-파스텔엔딩색연필4(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-파스텔엔딩색연필5(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-혼합엔딩공부색연필1(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-혼합엔딩공부색연필2(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-혼합엔딩공부색연필3(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-혼합엔딩놀이색연필1(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-혼합엔딩놀이색연필2(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-혼합엔딩놀이색연필3(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-히든엔딩색연필1(소형).png",
		"엔딩모음창-소형색연필모음/엔딩모음-히든엔딩색연필2(소형).png"
	}

	local image4 ={

		"엔딩모음창-색연필모음/엔딩모음-우정엔딩색연필1.png",
		"엔딩모음창-색연필모음/엔딩모음-우정엔딩색연필2.png",
		"엔딩모음창-색연필모음/엔딩모음-우정엔딩색연필3.png",
		"엔딩모음창-색연필모음/엔딩모음-우정엔딩색연필4.png",
		"엔딩모음창-색연필모음/엔딩모음-우정엔딩색연필5.png"

	}

	local image5 = {
		"엔딩모음창-색연필모음/엔딩모음-히든엔딩색연필1.png",
		"엔딩모음창-색연필모음/엔딩모음-히든엔딩색연필2.png"
	}

	local image6 = {
		"엔딩모음창-색연필모음/엔딩모음-혼합엔딩공부색연필1.png",
		"엔딩모음창-색연필모음/엔딩모음-혼합엔딩공부색연필2.png",
		"엔딩모음창-색연필모음/엔딩모음-혼합엔딩공부색연필3.png",
		"엔딩모음창-색연필모음/엔딩모음-혼합엔딩놀이색연필1.png",
		"엔딩모음창-색연필모음/엔딩모음-혼합엔딩놀이색연필2.png",
		"엔딩모음창-색연필모음/엔딩모음-혼합엔딩놀이색연필3.png"
	}

	local image7 = {
		"엔딩모음창-색연필모음/엔딩모음-파스텔엔딩색연필1.png",
		"엔딩모음창-색연필모음/엔딩모음-파스텔엔딩색연필2.png",
		"엔딩모음창-색연필모음/엔딩모음-파스텔엔딩색연필3.png",
		"엔딩모음창-색연필모음/엔딩모음-파스텔엔딩색연필4.png",
		"엔딩모음창-색연필모음/엔딩모음-파스텔엔딩색연필5.png"
		

	}

	local image8 = {
		"엔딩모음창-베스트엔딩 모음/엔딩모음-무지개엔딩색연필.png",
		"엔딩모음창-베스트엔딩 모음/엔딩모음-보너스색연필.png"
	}


	local i = 1

	

	local k = 0

	

	for i=1,6 do
		chang[i] = display.newImage(image[i])
		chang[i].x, chang[i].y = display.contentWidth/2,display.contentHeight/2
		sceneGroup:insert(chang[i])
		chang[i].alpha = 0
	end


--색연필 객체 array
	local options = {
    	isModal = true
    	
	}
	local pen = {}
--pen 2차 배열 // group array
	for i=1,7 do
		pen[i] ={}
	end

	local function popup(event)
		if event.phase == "began" then
			local name = event.target.name
			composer.setVariable("name",name)
			composer.showOverlay("title3",options)
		end
	end



--1번쨰 index 색연필들
	for i=1,18 do
		pen[1][i] = display.newImage(image3[i])
		if i > 10 then
			pen[1][i].x, pen[1][i].y = 266 + 75.2*(i-11), 530
		else
			pen[1][i].x, pen[1][i].y = 266 + 75.2*(i-1), 259
		end 
		sceneGroup:insert(pen[1][i])
		pen[1][i].alpha =color[1][i]
		pen[1][i].name = i
		pen[1][i]:addEventListener("touch",popup)
		
	end

--2번째 index 색연필들	
	for i=1,5 do
		pen[2][i] = display.newImage(image4[i])
		pen[2][i].x,pen[2][i].y =  328 + 139*(i-1), 395
		sceneGroup:insert(pen[2][i])
		pen[2][i].alpha = 0
		pen[2][i].name = i
		pen[2][i]:addEventListener("touch",popup)
	end

	for i=1,2 do
		pen[3][i] = display.newImage(image5[i])
		pen[3][i].x, pen[3][i].y = 515 + 182*(i-1), 395
		pen[3][i].alpha = 0
		--hidden[i]
		pen[3][i].name = i+16
		sceneGroup:insert(pen[3][i])
		pen[3][i]:addEventListener("touch",popup)
	end

	for i=1,6 do
		pen[4][i] = display.newImage(image6[i])
		pen[4][i].x, pen[4][i].y = 260 + 138.3*(i-1), 395
		pen[4][i].alpha = 0
		pen[4][i].name = i+10
		sceneGroup:insert(pen[4][i])
		pen[4][i]:addEventListener("touch",popup)
	end

	for i=1,5 do
		pen[5][i] = display.newImage(image7[i])
		pen[5][i].x, pen[5][i].y = 328 + 139*(i-1), 395
		pen[5][i].alpha = 0
		pen[5][i].name = i+5
		sceneGroup:insert(pen[5][i])
		pen[5][i]:addEventListener("touch",popup)
	end

	for i=1,2 do
		pen[6][i] = display.newImage(image8[i])
		pen[6][i].x, pen[6][i].y = 515 + 182*(i-1), 395
		pen[6][i].alpha = 0
		pen[6][i].name = i+18
		sceneGroup:insert(pen[6][i])
		pen[6][i]:addEventListener("touch",popup)
	end

	local function gotomap(event)
			composer.removeScene("title1")
			composer.gotoScene("title")
	end

	local exit = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit)
	exit.x, exit.y = display.contentWidth*0.105, display.contentHeight*0.165
	exit:addEventListener("tap",gotomap)

	chang[1].alpha = 1
	--group[1].alpha = 1

	local function side(event)
		if event.phase == "began" then
			chang[i].alpha = 0
			button[i].alpha = 1
			local k = 0
			for j=1,num[i] do
				pen[i][j].alpha = 0
				
			end

			i = event.target.name
			chang[i].alpha = 1
			button[i].alpha = 0
			local m = 0 
			for j = 1, num[i] do
				pen[i][j].alpha = color[i][j]
			end
			
		end

	end


	for i = 1,6 do
		button[i] = display.newImage(image2[i])
		button[i].x, button[i].y = 1131,178 + 79.5*(i-1)
		sceneGroup:insert(button[i])
		button[i].name = i
		button[i]:addEventListener("touch",side)
		button[i].alpha = 1
	end

	button[1].alpha = 0
	
	
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
		-- C.alled when the scene is on screen and is about to move off screen
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