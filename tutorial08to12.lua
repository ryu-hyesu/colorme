local loadsave = require( "loadsave" )
local composer = require( "composer" )
local scene = composer.newScene()

local i
local j = 1
function scene:create( event )
	local sceneGroup = self.view

	--로드
	local loadedSettings = loadsave.loadTable( "settings.json" )
	chosenColor = loadedSettings.color
	mainName = loadedSettings.name

	--배경
	local sceneGroup = self.view
	local b = {}
	bGroup = display.newGroup()
	if chosenColor == "red" then
		b[1] = display.newImage(bGroup, "image/tutorial08red.png")
		b[2] = display.newImage(bGroup, "image/tutorial09red.png")
		b[3] = display.newImage(bGroup, "image/tutorial10red.png")
		b[4] = display.newImage(bGroup, "image/tutorial11red.png")
		b[5] = display.newImage(bGroup, "image/tutorial12red.png")
	elseif chosenColor == "yellow" then
		b[1] = display.newImage(bGroup, "image/tutorial08yellow.png")
		b[2] = display.newImage(bGroup, "image/tutorial09yellow.png")
		b[3] = display.newImage(bGroup, "image/tutorial10yellow.png")
		b[4] = display.newImage(bGroup, "image/tutorial11yellow.png")
		b[5] = display.newImage(bGroup, "image/tutorial12yellow.png")
	elseif chosenColor == "blue" then
		b[1] = display.newImage(bGroup, "image/tutorial08blue.png")
		b[2] = display.newImage(bGroup, "image/tutorial09blue.png")
		b[3] = display.newImage(bGroup, "image/tutorial10blue.png")
		b[4] = display.newImage(bGroup, "image/tutorial11blue.png")
		b[5] = display.newImage(bGroup, "image/tutorial12blue.png")
	elseif chosenColor == "green" then
		b[1] = display.newImage(bGroup, "image/tutorial08green.png")
		b[2] = display.newImage(bGroup, "image/tutorial09green.png")
		b[3] = display.newImage(bGroup, "image/tutorial10green.png")
		b[4] = display.newImage(bGroup, "image/tutorial11green.png")
		b[5] = display.newImage(bGroup, "image/tutorial12green.png")
	else
		b[1] = display.newImage(bGroup, "image/tutorial08purple.png")
		b[2] = display.newImage(bGroup, "image/tutorial09purple.png")
		b[3] = display.newImage(bGroup, "image/tutorial10purple.png")
		b[4] = display.newImage(bGroup, "image/tutorial11purple.png")
		b[5] = display.newImage(bGroup, "image/tutorial12purple.png")
	end
	bGroup.x,bGroup.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(bGroup)

	--대화창
 	--대사
	local t = {}
	t[1] = display.newText("나는 " .. mainName  .. ". 아름답고 평화로운 색연필 행성에 사는 색연필이야.", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[2] = display.newText("어느 날, 꿈 속에서의 나는 무지개 숲에 와 있었어.", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[3] = display.newText("신비로운 꽃과 나비, 그리고 달콤한 열매와 기분 좋은 바람이 부는, 멋진 곳이었지.", 640, 655, "font/잘풀리는오늘 Medium.ttf", 20)
	t[4] = display.newText("한참 뛰놀다 목이 말랐던 나는 우유 한 잔을 발견했어.", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[5] = display.newText("… 나는 너무 목이 말랐던 나머지, 그 우유를 의심 없이 마셨어.", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
			
	for i = 1, 5 do
		t[i]:setFillColor(alpha)
		sceneGroup:insert(t[i])
	end

	for i = 2, 5 do
		b[i].alpha = 0
		t[i].alpha = 0
	end


	-- 화면전환
	local function next1()
		if j < 6 then
			b[j].alpha = 0
			t[j].alpha = 0	
		end

		j = j + 1

		if j < 6 then
			b[j].alpha = 1
			t[j].alpha = 1		
		end

		if j == 3 then
			t2 = display.newText("나는 그 곳에서 ‘지우개’와 신나게 뛰놀았어.", 640, 690, "font/잘풀리는오늘 Medium.ttf", 20)
			t2:setFillColor(alpha)
			sceneGroup:insert(t2)
		end

		if j == 4 then
			t2.alpha = 0
		end

		if j == 6 then
			composer.removeScene("tutorial08to12")
			composer.gotoScene( "tutorial13to20" )
		end
	end
	Runtime:addEventListener("tap", next1)

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