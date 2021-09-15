local loadsave = require( "loadsave" )
local composer = require( "composer" )
local scene = composer.newScene()
local json = require( "json" ) 

function scene:create( event )
	local sceneGroup = self.view
	local titleMusic = audio.loadStream( "음악/타이틀.mp3" )

	local background = display.newImageRect("image/title.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local ending = display.newImage("image/엔딩.png")
	ending.x, ending.y = display.contentWidth*0.95,display.contentHeight*0.9
	sceneGroup:insert(ending)

	local newgame = display.newImage("image/newgame.png")
	newgame.x,newgame.y = 510,640
	sceneGroup:insert(newgame)

	local loadgame = display.newImage("image/loadgame.png")
	loadgame.x,loadgame.y = 765,640
	sceneGroup:insert(loadgame)

	local titlePopup = display.newImage("image/titlePopup.png")
	titlePopup.x,titlePopup.y = display.contentWidth/2,display.contentHeight/2
	titlePopup.alpha = 0
	sceneGroup:insert(titlePopup)

	local titleButton = display.newImage("image/titleButton.png")
	titleButton.x,titleButton.y = display.contentWidth/2,display.contentHeight/2 + 200
	titleButton.alpha = 0
	sceneGroup:insert(titleButton)

	local titlePopup = display.newImage("image/titlePopup.png")
	titlePopup.x,titlePopup.y = display.contentWidth/2,display.contentHeight/2
	titlePopup.alpha = 0
	sceneGroup:insert(titlePopup)

	local titleButton = display.newImage("image/titleButton.png")
	titleButton.x,titleButton.y = display.contentWidth/2,display.contentHeight/2 + 200
	titleButton.alpha = 0
	sceneGroup:insert(titleButton)

	--이름 입력을 위한 텍스트상자 생성--
	local defaultField
	local function textListener( event )
 
    	if ( event.phase == "began" ) then
        	-- User begins editing "defaultField"
 
    	elseif ( event.phase == "ended" or event.phase == "submitted" ) then
        	-- Output resulting text from "defaultField"
        	print( event.target.text )
 
    	elseif ( event.phase == "editing" ) then
        	print( event.newCharacters )
        	print( event.oldText )
        	print( event.startPosition )
        	print( event.text )
    	end
	end

	titlePopup.alpha = 1
	titleButton.alpha = 1

		-- Create text field

	local function make_text()
		defaultField = native.newTextField( 640, 400, 370, 60 )
		defaultField:addEventListener( "userInput", textListener )
		defaultField.font = native.newFont( "font/잘풀리는오늘 Medium.ttf", 40)
		defaultFied = ""
		defaultField.align = "center"
		sceneGroup:insert(defaultField)
	end
	make_text()


	local buttonRed = display.newImageRect("image/num1.png", 60, 60)
	buttonRed.x,buttonRed.y = 494, 465
	buttonRed.alpha = 0.01
	sceneGroup:insert(buttonRed)
	local buttonYellow = display.newImageRect("image/num1.png", 60, 60)
	buttonYellow.x,buttonYellow.y = 569, 465
	buttonYellow.alpha = 0.01
	sceneGroup:insert(buttonYellow)
	local buttonBlue = display.newImageRect("image/num1.png", 60, 60)
	buttonBlue.x,buttonBlue.y = 643, 465
	buttonBlue.alpha = 0.01
	sceneGroup:insert(buttonBlue)
	local buttonGreen = display.newImageRect("image/num1.png", 60, 60)
	buttonGreen.x,buttonGreen.y = 717, 465
	buttonGreen.alpha = 0.01
	sceneGroup:insert(buttonGreen)
	local buttonPurple = display.newImageRect("image/num1.png", 60, 60)
	buttonPurple.x,buttonPurple.y = 791, 465
	buttonPurple.alpha = 0.01
	sceneGroup:insert(buttonPurple)

	local chosenColor = "no"
	local pickRed = display.newImage("image/titlePick.png")
	pickRed.alpha = 0
	sceneGroup:insert(pickRed)
	
	local function colorRed()
		
		pickRed.alpha = 1
		pickRed.x,pickRed.y = 494, 465
		chosenColor = "red"
		
	end
	buttonRed:addEventListener("tap",colorRed)

	local function colorYellow()
		pickRed.alpha = 1
		pickRed.x,pickRed.y  = 569, 465

		chosenColor = "yellow"
	end
	buttonYellow:addEventListener("tap",colorYellow)

	local function colorBlue()
		pickRed.alpha = 1
		pickRed.x,pickRed.y  =  643, 465

		chosenColor = "blue"
	end
	buttonBlue:addEventListener("tap",colorBlue)

	local function colorGreen()
		pickRed.alpha = 1
		pickRed.x,pickRed.y =  717, 465

		chosenColor = "green"
	end
	buttonGreen:addEventListener("tap",colorGreen)

	local function colorPurple()
		pickRed.alpha = 1
		pickRed.x,pickRed.y  = 791, 465

		chosenColor = "purple"
	end
	buttonPurple:addEventListener("tap",colorPurple)



	local function startNew(event)
		if chosenColor == "no" or defaultField.text == "" then
			defaultField:removeSelf()
			defaultField = nil
			composer.removeScene("title2")
			composer.gotoScene("title2_1")
		else
			
				local gameSettings = {
    				money = 0,
    				fun = 0,
    				hobby = 0,
    				study = 0,
    				friendship =0,
    			
    				red = 0,
    				yellow = 0,
    				green = 0,
    				blue = 0,
    				purple = 0,
    				month = 0,
    				limited_num= 0,
    				red_num = 0,
    				blue_num = 0,
    				yellow_num = 0,
    				green_num = 0,
    				purple_num = 0,
    				game_num = 0,
    				activity_num = 0,
    				friend_num = 0,
    				play1_num =0,
    				play2_num=0,
    				play3_num=0,
    				play4_num=0,
    				play5_num=0,
    				hobby1_num = 0,
    				hobby2_num = 0,
    				hobby3_num = 0,
    				hobby4_num = 0,
    				hobby5_num = 0,
    				study1_num = 0,
    				study2_num = 0,
    				study3_num = 0,
    				study4_num = 0,
    				study5_num = 0,
    				friend1_num = 0,
    				friend2_num = 0,
    				friend3_num = 0,
    				friend4_num = 0,
    				friend5_num = 0,
    				show1 = 0,
    				show2= 0,
    				show3= 0,
    				show4= 0,
    				show5= 0,
    				show6= 0,
    				show7= 0,

    				month1_event = 0,
    				month2_event = 0,
    				month3_event = 0,
    				month4_event = 0,
    				month5_event = 0,
    				month6_event = 0,

    				tutorial = 0,

    				badWhite = 0,
    				goodWhite = 0,

    				former1 = "",
    				former2 = "",
    				former01 = "",
    				former02 = "",
    				next1 = "",
    				next2 = "",
    				name = defaultField.text,
    				color = chosenColor,

    				test = 0,
				}
				loadsave.saveTable( gameSettings, "settings.json" )
					local items = {
						itemCount = 0,
						item1 = "없음",
						item2 = "없음",
						item3 = "없음",
						item4 = "없음",
						item5 = "없음",
						item6 = "없음",
						item7 = "없음",
						item8 = "없음",
						item9 = "없음",
						item10 = "없음",
						item11 = "없음",
						item12 = "없음"
					}
				loadsave.saveTable( items, "items.json" )
				composer.setVariable("name",defaultField.text)
				defaultField:removeSelf()
				defaultField = nil
				composer.removeScene("title2")
				composer.gotoScene( "tutorial01to07" )
				--audio.pause( titleMusic )
				--local tutorialMusic = audio.loadStream( "음악/튜토리얼.mp3" )
				--audio.play(tutorialMusic)
			end
	end
	titleButton:addEventListener("tap",startNew)


	local function gotomap(event)
		if event.phase == "began" then
			
			defaultField:removeSelf()
			defaultField = nil
				composer.removeScene("title2")
				composer.gotoScene("title")
		end
	end


	local exit1 = display.newImage("image/공통-x버튼.png")
	sceneGroup:insert(exit1)
	exit1.x, exit1.y = display.contentWidth*0.77, display.contentHeight*0.16
	exit1:addEventListener("touch",gotomap)
	

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