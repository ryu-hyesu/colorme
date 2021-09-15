local composer = require( "composer" )
local scene = composer.newScene()
local widget = require("widget")

local i
local j = 1
function scene:create( event )
	local sceneGroup = self.view
	local b = {}
	bGroup = display.newGroup()
	--배경
	for i = 1, 7 do
		b[i] = display.newImage(bGroup, "image/tutorial0" .. i .. ".png")
	end
	bGroup.x,bGroup.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(bGroup)


	--대화창
 	--대사
	local t = {}
	t[1] = display.newText("망망대해 같은 우주의 어느 한 구석에는 색연필 행성이 있다.", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[2] = display.newText("색연필 행성은 5개의 마을로 이루어져 있고, 마을마다 같은 색을 가진 색연필들이 모여 사는, 아름다운 별이다.", 640, 655, "font/잘풀리는오늘 Medium.ttf", 20)
	t[3] = display.newText("사랑이 샘솟는 색연필들이 모여 사는 곳, 서로를 사랑하며 살아가는 빨강 마을!", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[4] = display.newText("언제나 즐거워! 신나는 노래가 흘러나오고, 활기찬 웃음소리가 끊이지 않는 노랑 마을!", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[5] = display.newText("친구를 생각하는 따뜻한 마음씨를 가진 색연필들이 모여 사는 곳, 초록 마을!", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[6] = display.newText("아는 것이 힘이지! 지혜로움을 중시하는 색연필들의 파랑 마을!", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	t[7] = display.newText("모든 시작의 원동력은 용감함이야! 용기 있는 색연필들이 사는 보라 마을!", 640, 673, "font/잘풀리는오늘 Medium.ttf", 20)
	
	for i = 1, 7 do
		t[i]:setFillColor(alpha)
		sceneGroup:insert(t[i])
	end

	for i = 2, 7 do
		b[i].alpha = 0
		t[i].alpha = 0
	end

	-- 화면전환
	local function next1()
		if j > 1 and j < 8 then
			b[j - 1].alpha = 0
			t[j - 1].alpha = 0
			b[j].alpha = 1
			t[j].alpha = 1
		end

		if j == 2 then
			t2 = display.newText("모든 마을에는 마을을 대표하는 색깔과 가치가 있는데…", 640, 690, "font/잘풀리는오늘 Medium.ttf", 20)
			t2:setFillColor(alpha)
			sceneGroup:insert(t2)
		end

		if j == 3 then
			t2.alpha = 0
		end

		j = j + 1


		if j == 8 then
			composer.removeScene("tutorial01to07")
			composer.gotoScene( "tutorial08to12" )
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