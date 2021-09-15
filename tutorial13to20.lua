local loadsave = require( "loadsave" )
local composer = require( "composer" )
local scene = composer.newScene()

local i
local j = 13
function scene:create( event )
	local sceneGroup = self.view

	--로드
	local loadedSettings = loadsave.loadTable( "settings.json" )
	mainName = loadedSettings.name
	--음악
	local tutorialMusic = audio.loadStream( "음악/튜토리얼.mp3" )

	local b = {}
	bGroup = display.newGroup()
	--배경
	for i = 1, 8 do
		b[i] = display.newImage(bGroup, "image/tutorial" .. j .. ".png")
		j = j + 1
	end
	j = 1
	bGroup.x,bGroup.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(bGroup)


	--대화창
 	--대사
	local t = {}
	t[1] = display.newText("… 그걸 마시면 안 됐던 걸까?", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[2] = display.newText(mainName  .. "“, 무슨 일 있어? 네가 학교에 안 와서, 걱정돼서 와봤어.” ", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[3] = display.newText("“얘들아, 나… 색이 모두 사라져 버렸어.”", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[4] = display.newText("“이, 이게 어떻게 된 일이야?!”", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[5] = display.newText("“이제 난 어떡하지…?”", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[6] = display.newText("“걱정 하지 마, 색을 다시 찾으면 되지. 우리가 도와줄게!”", 640, 655, "font/잘풀리는오늘 Medium.ttf", 20)
	t[7] = display.newText("“고마워 얘들아…!”", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[8] = display.newText("열심히 노력해서 색을 되찾고 말 거야!", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)

	for i = 1, 8 do
		t[i]:setFillColor(alpha)
		sceneGroup:insert(t[i])
	end

	for i = 2, 8 do
		b[i].alpha = 0
		t[i].alpha = 0
	end

	-- 화면전환
	local function next1()
		if j < 9 then
			b[j].alpha = 0
			t[j].alpha = 0	
		end

		if j == 5 then
			t2 = display.newText("“맞아, 우리가 도와줄게!”", 640, 690, "font/잘풀리는오늘 Medium.ttf", 20)
			t2:setFillColor(alpha)
			sceneGroup:insert(t2)
		end

		if j == 6 then
			t2.alpha = 0
		end

		j = j + 1

		if j < 9 then
			b[j].alpha = 1
			t[j].alpha = 1		
		end

		if j == 9 then
			Runtime:removeEventListener("touch", next1)
			composer.removeScene("tutorial13to20")
			audio.pause(tutorialMusic)
			composer.gotoScene( "view01_month" )
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