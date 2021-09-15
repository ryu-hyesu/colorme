-----------------------------------------------------------------------------------------
--
-- CardReverse.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()


local i, j = 0, 0
local isFinished = 0
local card = {}
local rand = {}
local count = {}

-- GUI

local background 
local backUI = {}
local gameUI = {}

function scene:create( event )
	local sceneGroup = self.view


	
---배경화면
	local background = display.newImageRect("image/BG_Forest.png", display.contentWidth, display.contentHeight)
	background.x, background.y = display.contentWidth/2, display.contentHeight/2
	sceneGroup:insert(background)--그룹

--점수
	local score = display.newImageRect("image/score.png", 130,150)
	score.anchorX, score.anchorY =0,0
	score.x,score.y = 15,20

	local score1 = 0 
	local showScore = display.newText(score1,80,85,"font/잘풀리는오늘 Medium.ttf") 
	showScore:setFillColor(0) 
	showScore.size = 40


--타이머
	local time = display.newImageRect("image/time.png", 130,150)
	time.anchorX, time.anchorY =0,0
	time.x,time.y = 1115,20
	

	local limit = 25
	local showLimit = display.newText(limit,1180,95,"font/잘풀리는오늘 Medium.ttf")
	
	showLimit:setFillColor(0)
	showLimit.size = 40
	
	
	--local function timeAttack( event )
   	 --	print( "listener called" )
	--end
	local function timeAttack( event )
		limit = limit - 1
		showLimit.text = limit

		if limit == 0 then
			
			timer.cancel(time1)
			--composer.setVariable("result", 0)
			composer.setVariable("score2", score1)
			composer.removeScene("view21card")
			composer.gotoScene("view22card")
		end
	end
	 
	time1 = timer.performWithDelay( 1000, timeAttack,0)


	gameUI[0] = graphics.newImageSheet( "image/card1.jpg", {width=95, height=151, numFrames=10} )
	--sceneGroup:insert(gameUI[0])--그룹
	--sceneGroup:insert(gameUI[1])--그룹

	--local gameUI = {}
	--gameUI = graphics.newImageSheet( "Card/card1.jpg", {width=95, height=151, numFrames=10} )
	--sceneGroup:insert(gameUI[0])

	backUI[1] = display.newImageRect(gameUI[0], 1, 90, 140)
	backUI[1].x, backUI[1].y = display.contentWidth/2 - backUI[1].width*3.5 - 70 + 85, display.contentHeight/2 - backUI[1].height/2 + 20
	backUI[2] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[2].x, backUI[2].y = backUI[1].x+backUI[1].width+20, backUI[1].y
	backUI[3] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[3].x, backUI[3].y = backUI[2].x+backUI[1].width+20, backUI[1].y
	backUI[4] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[4].x, backUI[4].y = backUI[3].x+backUI[1].width+20, backUI[1].y
	backUI[5] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[5].x, backUI[5].y = backUI[4].x+backUI[1].width+20, backUI[1].y
	backUI[6] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[6].x, backUI[6].y = backUI[5].x+backUI[1].width+20, backUI[1].y
	backUI[7] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[7].x, backUI[7].y = backUI[2].x, backUI[1].y - 150
	backUI[8] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[8].x, backUI[8].y = backUI[5].x, backUI[1].y - 150

	backUI[9] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[9].x, backUI[9].y = backUI[1].x, backUI[1].y+backUI[1].height+20
	backUI[10] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[10].x, backUI[10].y = backUI[2].x, backUI[9].y
	backUI[11] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[11].x, backUI[11].y = backUI[3].x, backUI[9].y
	backUI[12] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[12].x, backUI[12].y = backUI[4].x, backUI[9].y
	backUI[13] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[13].x, backUI[13].y = backUI[5].x, backUI[9].y
	backUI[14] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[14].x, backUI[14].y = backUI[6].x, backUI[9].y
	backUI[15] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[15].x, backUI[15].y = backUI[11].x, backUI[9].y + 150
	backUI[16] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[16].x, backUI[16].y = backUI[12].x, backUI[9].y + 150

	--종료
	--backUI[21] = display.newText("", display.contentWidth, display.contentHeight-100)

	--backUI[21].size = 75
	--backUI[21].alpha = 0

	for i = 1, 16, 1 do
		backUI[i].name = i;
	end

	count[0] = 0 --시도 횟수
	count[1] = 100 --성공확률
	count[2] = 0 --성공횟수
	count[3] = 0 --실패횟수


	--[[for i = 0, 3, 1 do
		sceneGroup:insert(count[i])--그룹
	end]]

	function resetCardCount()
		card[0] = 0
		card[1] = 999
		card[2] = 777
		isFinished = 1
	end

	function isLastCard( c1, c2 )
		for i = 1, 16, 1 do
			if (i ~= c1 and i ~= c2 and rand[i] ~= 0) then
				return 0
			end
		end
		return 1
	end

	function clickBackUI( event )
		j = event.target.name
		
		if (backUI[j].alpha ~= 0 and isFinished == 1 and card[1] ~= j) then
			card[0] = card[0] + 1
			
			if (card[0] <= 2) then
				isFinished = 0

				transition.to( gameUI[j], { time=300, alpha=1 } )
				transition.to( gameUI[j], { time=300, delay=300, xScale=1 } )
				transition.to( backUI[j], { time=300, xScale=0 } )
				transition.to( backUI[j], { time=300, delay=300, alpha=0 } )

				if (card[0] == 1) then
					card[1] = j
					isFinished = 1

				elseif (card[0] == 2) then
					card[2] = j
					count[0] = count[0] + 1
					

					if(rand[card[1]] == rand[card[2]]) then
						rand[card[1]] = 0
						rand[card[2]] = 0
						count[2] = count[2] + 1
						
						--점수 1점
						score1 = score1 + 1
						showScore.text = score1
						print(score1)
						
						if (isLastCard(card[1], card[2]) == 1) then
							transition.to( gameUI[card[1]], { time=1000, x=display.contentWidth/2, y=display.contentHeight/2 } )
							transition.to( gameUI[card[2]], { time=1000, x=display.contentWidth/2, y=display.contentHeight/2 } )
							transition.to( gameUI[card[1]], { time=1000, delay=1000, width=gameUI[card[1]].width*2, height=gameUI[card[1]].height*2 } )
							transition.to( gameUI[card[2]], { time=1000, delay=1000, width=gameUI[card[1]].width*2, height=gameUI[card[1]].height*2 } )
							transition.to( backUI[21], { time=1000, delay=1100, alpha=1 } )
							transition.cancel()
							composer.setVariable("score2", score1)
							composer.removeScene("CardReverse")
							composer.gotoScene("view2")
						else
							transition.to( backUI[card[1]], { time=300, delay=500, alpha=0 } )
							transition.to( backUI[card[2]], { time=300, delay=500, alpha=0 } )
							transition.to( gameUI[card[1]], { time=300, delay=800, alpha=0 } )
							transition.to( gameUI[card[2]], { time=300, delay=800, alpha=0, onComplete=resetCardCount } )
						end
					else
						count[3] = count[3] + 1
						
						transition.to( backUI[card[1]], { time=300, delay=800, alpha=1 } )
						transition.to( backUI[card[1]], { time=300, delay=800, xScale=1 } )
						transition.to( gameUI[card[1]], { time=300, delay=700, xScale=0 } )
						transition.to( gameUI[card[1]], { time=300, delay=700, alpha=0 } )

						transition.to( backUI[card[2]], { time=300, delay=800, alpha=1 } )
						transition.to( backUI[card[2]], { time=300, delay=800, xScale=1 } )
						transition.to( gameUI[card[2]], { time=300, delay=700, xScale=0 } )
						transition.to( gameUI[card[2]], { time=300, delay=700, alpha=0, onComplete=resetCardCount } )
					end
				end
			end
		end
	end

	function createGameUI()
		for i = 1, 8, 1 do
			rand[i] = i + 1;
			rand[i+8] = i + 1;
		end

		for i = 1, 8, 1 do
			j = math.floor(math.random(1, 16));
			rand[0] = rand[i];
			rand[i] = rand[j];
			rand[j] = rand[0];
		end

		for i = 1, 16, 1 do
			gameUI[i] = display.newImageRect(gameUI[0], rand[i], backUI[1].width, backUI[1].height)
			gameUI[i].x, gameUI[i].y = backUI[i].x, backUI[i].y
			transition.to( backUI[i], { time=1000, delay=2000, xScale=0 } )
			transition.to( backUI[i], { time=1000, delay=3000, xScale=1, onComplete=resetCardCount } )
			transition.to( gameUI[i], { time=1000, delay=2000, xScale=0 } )
			transition.to( gameUI[i], { time=1000, delay=2500, alpha=0 } )
			backUI[i]:addEventListener( "tap", clickBackUI )
		end
	end
	createGameUI()


	--[[for i = 0, 2, 1 do
		sceneGroup:insert( card[i] )--그룹
	end]]
 
	sceneGroup:insert( background )
    for i = 1, 16, 1 do
		sceneGroup:insert( backUI[i] )--그룹
		sceneGroup:insert( gameUI[i] )
	end
  	sceneGroup:insert(showScore)--그룹
	sceneGroup:insert(score)--그룹
	sceneGroup:insert(time)--그룹
	sceneGroup:insert(showLimit)--그룹			
    sceneGroup:insert(showScore)--그룹
end
function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
	elseif phase == "did" then
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene