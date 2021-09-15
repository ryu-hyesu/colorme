-----------------------------------------------------------------------------------------
--
-- view5Dudu1.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	
	local background = display.newImageRect("image/dudubg.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local holl = {}
	local hide = {}

	local hollGroup = display.newGroup()
	local hideGroup = display.newGroup()

	for i=1,9 do
		holl[i] = display.newImageRect(hollGroup,"image/holl1.png",230,60)
		sceneGroup:insert(holl[i])
		holl[i].anchorX, holl[i].anchorY = 0,0
		hide[i] = display.newImageRect(hideGroup,"image/13113.png",230,235)
		hide[i].anchorX, hide[i].anchorY = 0,0
		sceneGroup:insert(hide[i])
		
	
		if i<4 then

			hide[i].x ,hide[i].y = 220 + 300*(i-1), 184.2
			holl[i].x ,holl[i].y = 220 + 300*(i-1), 178
		elseif i<7 then
			
			hide[i].x ,hide[i].y = 220 + 300*(i-4), 406.1
			holl[i].x ,holl[i].y =220 + 300*(i-4), 400
		else
			
			hide[i].x ,hide[i].y = 220 + 300*(i-7), 636.4
			holl[i].x ,holl[i].y = 220 + 300*(i-7), 630
		end

	end

	local time = display.newImageRect("image/time.png", 150,167)
	time.anchorX, time.anchorY =0,0
	time.x,time.y = display.contentWidth - 180,20
	sceneGroup:insert(time)

	local i = 3

	local score = display.newImageRect("image/score.png", 150,167)
	score.anchorX, score.anchorY =0,0
	score.x,score.y = 25,20
	sceneGroup:insert(score)

	local score_num = 0
	local score1 = 5
	local score_num = 0

	local showScore = display.newText(score1,100,95,"font/잘풀리는오늘 Medium.ttf") 
	showScore:setFillColor(1,0,0) 
	showScore.size = 73
	sceneGroup:insert(showScore)


	h1 = display.newImageRect("image/hammer.png",150,180)
	h1.anchorX,h1.anchorY=0.3,0.3
	h1.x,h1.y = 640,360
	sceneGroup:insert(h1)

	function move(event)
		if (event.phase == "began") then
			transition.to(h1,{rotation=-45,time=200})
		end

		if (event.phase == "ended") then
			transition.to(h1,{rotation=0,time=200})
		end
	end


	function move1(event)
		h1.x,h1.y = event.x,event.y
	end

	Runtime:addEventListener("mouse",move1)
	h1:addEventListener("touch",move)

	function removeRect(obj)
		obj:removeSelf()
	end

	local looping = 1
	local n3 = 15
	local n4 = 15
	local n1 = 30
	local n2 = 39


	local function newFish2()
		fish2 = display.newImageRect("image/dudu.png",150,160)
		
		sceneGroup:insert(fish2)
		fish2:addEventListener('touch',fishsHit2)

		while looping ==1 do
			n2 = math.random(1,9)

			if math.abs(n3-n2) ~= 3 and n1 ~= n2 and math.abs(n4-n2) ~= 3  and math.abs(n1-n2) ~= 3 then
				fish2.x,fish2.y = holl[n2].x + 115 , holl[n2].y +90
				break
			end
		end
		
		--fish2.x,fish2.y = holl[n2].x + 60 , holl[n2].y -20
		transition.to(fish2,{time=300,y=fish2.y -150 })
		transition.to(fish2,{time=300,delay=2000,y=fish2.y +6 })

		fish2:toFront()
		holl[n2]:toFront()
		hide[n2]:toFront()
		
		h1:toFront()	
	end

	local function move2()
		while looping ==1 do
			n2 = math.random(1,9)
		
			if math.abs(n3-n2) ~= 3 and n1 ~= n2 and math.abs(n4-n2) ~= 3 and math.abs(n1-n2) ~= 3 then
				fish2.x,fish2.y = holl[n2].x  + 115 , holl[n2].y +90
				break
			end
		end
		transition.to(fish2,{time=300,y=fish2.y-150})
		transition.to(fish2,{time=300,delay=2000,y=fish2.y +6 })
		

		fish2:toFront()
		
		holl[n2]:toFront()
		hide[n2]:toFront()
		
		h1:toFront()
		
	end

	local function remove1(fish)
		display.remove(fish)
	end

	local function pouch1()
		pounchfish = display.newImageRect("image/pouch.png",150,200)
		sceneGroup:insert(pounchfish)
	end


	function fishsHit2(event)

	    if ( event.phase == "ended" ) then

			 if (event.x  - event.target.x) < math.abs(50) 
					and (event.y - event.target.y ) < math.abs(50) 
					and event.target.y == holl[n2].y -60
					then
				score_num = score_num + 1
				if score_num == 6 then
					score1 = 10
					showScore.text = score1
				elseif score_num == 8 then
					score1 = 15
					showScore.text = score1
				end

				pouch1()
				pounchfish.x,pounchfish.y = event.target.x,event.target.y
				n3 = n2
				event.target:removeSelf()
				timer.cancel(timer2)

				newFish2()
				timer2=timer.performWithDelay(2500,move2,0,"fish2")	
				pounchfish:toFront()
				hide[n3]:toFront()
				holl[n3]:toFront()
				h1:toFront()

				transition.to(pounchfish,{time=300,delay=500,y=pounchfish.y+102,onComplete=removeRect,tag="delete"})				
			end
		end
	end


	----

	local function newFish1()
		fish1 = display.newImageRect("image/dudu.png",150,160)
		
		sceneGroup:insert(fish1)
		fish1:addEventListener('touch',fishsHit1)

		while looping ==1 do
			n1 = math.random(1,9)

			if n1~= n2 and math.abs(n4-n1) ~= 3 and math.abs(n3-n1) ~= 3  and math.abs(n1-n2) ~= 3 then
				fish1.x,fish1.y = holl[n1].x + 115 , holl[n1].y +90
				break
			end
		end
		

		transition.to(fish1,{time=300,y=fish1.y -150 })
		transition.to(fish1,{time=300,delay=2000,y=fish1.y +6 })

		fish1:toFront()
		holl[n1]:toFront()
		hide[n1]:toFront()
		
		h1:toFront()


		
	end

	local function move2()
		while looping ==1 do
			n1 = math.random(1,9)
		
			if  n1~= n2 and math.abs(n4-n1) ~= 3 and math.abs(n3-n1) ~= 3  and math.abs(n1-n2) ~= 3 then
				fish1.x,fish1.y = holl[n1].x  + 115 , holl[n1].y +90
				break
			end
		end
		transition.to(fish1,{time=300,y=fish1.y-150})
		transition.to(fish1,{time=300,delay=2000,y=fish1.y +6 })
		

		fish1:toFront()
		
		holl[n1]:toFront()
		hide[n1]:toFront()
		
		h1:toFront()
		
	end

	function fishsHit1(event)
		
	    if ( event.phase == "ended" ) then
			
			 if (event.x  - event.target.x) < math.abs(50) 
					and (event.y - event.target.y ) < math.abs(50) 
					and event.target.y == holl[n1].y -60
					then
				score_num = score_num + 1
				if score_num == 6 then
					score1 = 10
					showScore.text = score1
				elseif score_num == 8 then
					score1 = 15
					showScore.text = score1
				end

				pouch1()
				pounchfish.x,pounchfish.y = event.target.x,event.target.y
				n4 = n1
				event.target:removeSelf()
				timer.cancel(timer1)

				newFish1()
				timer1=timer.performWithDelay(2500,move1,0,"fish1")

				
				pounchfish:toFront()
				hide[n4]:toFront()
				holl[n4]:toFront()

				transition.to(pounchfish,{time=300,delay=500,y=pounchfish.y+102,onComplete=removeRect})

				h1:toFront()
			end
		end
	end


	---



	


	local limit = 15
	local showLimit = display.newText(limit,1176,103,"font/잘풀리는오늘 Medium.ttf")
	
	showLimit:setFillColor(1,0,0)
	showLimit.size =63
	sceneGroup:insert(showLimit)


	

	local function timeAttack( event )
		limit = limit - 1
		showLimit.text = limit

		if limit == 0 then
			--h1.alpha=0
			timer.pause("fish1")
			timer.pause("fish2")
			timer.pause("attack")
			transition.cancel()
			composer.setVariable("score2", score1)
			composer.removeScene("view05Dudu")
			composer.gotoScene("view06Dudu")
		end
	end
	 
	timer.performWithDelay( 1000, timeAttack, 0 ,"attack")

	
	----물고기 move------

	
	score:toBack()
	time:toBack()
	hollGroup:toFront()
	background:toBack()
	--h1:toFront()
	showLimit:toFront()

	newFish1()
	timer1 = timer.performWithDelay(2500,move2,0,"fish1")

	newFish2()
	timer2 = timer.performWithDelay(2500,move2,0,"fish2")
	hideGroup:toBack()
	hollGroup:toBack()
	
	background:toBack()










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