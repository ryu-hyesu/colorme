-----------------------------------------------------------------------------------------
--
-- view09Lemon.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	
	local background = display.newImageRect("image/lemonbg.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local phyics = require "physics"
	phyics.start()

	local time = display.newImageRect("image/time.png", 150,167)
	time.anchorX, time.anchorY =0,0
	time.x,time.y = display.contentWidth - 180,20
	sceneGroup:insert(time)

	local score = display.newImageRect("image/score.png", 150,167)
	score.anchorX, score.anchorY =0,0
	score.x,score.y = 25,20
	sceneGroup:insert(score)

	local score_num = 0
	local score1 = 15
	local score_num = 15

	local showScore = display.newText(score1,100,95,"font/잘풀리는오늘 Medium.ttf") 
	showScore:setFillColor(1,0,0) 
	showScore.size = 73
	sceneGroup:insert(showScore)

	local limit = 20
	local showLimit = display.newText(limit,1176,103,"font/잘풀리는오늘 Medium.ttf")
	
	showLimit:setFillColor(1,0,0)
	showLimit.size =63
	sceneGroup:insert(showLimit)


	local floor = display.newImage("image/floor.png")
	floor.name = "floor"
	floor.x=display.contentWidth/2 
	floor.y=700
	phyics.addBody(floor,"static")
	sceneGroup:insert(floor)


	local lemon = {}
	local lemons = display.newGroup()

	local n
	local m = 0
	local k 
	local s 





	local function newlemon()
		
	
			m = m+1
			n = math.random(100,1100)
			k = math.random(1,5)
			s = math.random(1,2)

			if s ==1   then
				lemon[1] = display.newImageRect("image/lemon.png",68,48)
				lemon[1].name = "lemon"
			end
			if s ==2 then
				lemon[2] = display.newImageRect("image/bug.png",75,60)
				lemon[2].name = "bug"
			end

			
			
			lemon[s].x, lemon[s].y = n,-25
			phyics.addBody(lemon[s],{density=1.0, friction=0,bounce=0, radius=25})
			lemon[s].gravityScale = 0.5 *k
			sceneGroup:insert(lemon[s])

			score:toFront()
			time:toFront()
			showScore:toFront()
			showLimit:toFront()

			

	end


	
	local pen = display.newImageRect("image/colorpan.png",110,175)
	pen.name = "pen"
	pen.anchorY = 0
	pen.x,pen.y = display.contentWidth/2, 510
	phyics.addBody(pen,"static")
	sceneGroup:insert(pen)

	function move1(event)
		if event.x < 100 then
			pen.x = 100 
		elseif event.x > 1100 then
			pen.x = 1100
		else
			pen.x = event.x
		end
	end

	function remove1(object)
		object:remove()
	end
	function oncoll(self,event)
		
		if event.phase == "began" then
			if event.other.name == "lemon" or event.other.name == "bug" then

				if event.target.name == "floor" then
					timer.performWithDelay( 1000,event.other:removeSelf())
					event.other=nil
					m = m-1
					--timer.performWithDelay( 2000, newlemon,1 )
				end
				if event.target.name == "pen" and event.other.y < 520 then
					if event.other.name == "bug" then
						if score_num > 0 then
							score_num = score_num - 1
						end
							if score_num%5==0 then
								score1 = score_num
								showScore.text = score1
							end 
					end

					
					event.other:removeSelf()
					event.other=nil
					m = m-1
					--timer.performWithDelay( 2000, newlemon,1 )
				end
				
				
				
				
			end
		end
	end

	

	local function timeAttack( event )

		limit = limit - 1
		showLimit.text = limit

		if limit == 0 then
			composer.setVariable("score2", score1)
			composer.removeScene("view09Lemon")
			composer.gotoScene("view10Lemon")
		end
	end
	 
	timer.performWithDelay( 1000, timeAttack, 0 )

	Runtime:addEventListener("mouse",move1)
	timer.performWithDelay( 700, newlemon,-1)
	timer.performWithDelay( 700, newlemon,-1)
	pen.collision = oncoll
    pen:addEventListener( "collision" )
    floor.collision = oncoll
    floor:addEventListener( "collision" )

	pen:toFront()
	showLimit:toFront()


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
		composer.removeScene("view09Lemon")
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