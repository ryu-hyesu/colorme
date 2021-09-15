local loadsave = require( "loadsave" )
local composer = require( "composer" )
local scene = composer.newScene()
local json = require( "json" ) 

function scene:create( event )
    local sceneGroup = self.view
    --local titleMusic = audio.loadStream( "음악/타이틀.mp3" )
    --audio.play(titleMusic)

    local background = display.newImageRect("image/title.png",display.contentWidth, display.contentHeight)
    background.x,background.y = display.contentWidth/2,display.contentHeight/2
    sceneGroup:insert(background)

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

    --new--

    local options = {
        isModal = true
        
    }


    local function move(event)
        if event.phase == "began" then
            composer.removeScene("title")
            composer.gotoScene("title1")
        end
    end

    local ending = display.newImage("image/엔딩.png")
    ending.x, ending.y = display.contentWidth*0.95,display.contentHeight*0.9
    sceneGroup:insert(ending)
    ending:addEventListener("touch",move)

    --



    local function openPopup()
        composer.removeScene("title")
        composer.gotoScene("title2")
    end
    newgame:addEventListener("tap",openPopup)


    local function startLoad(event)
            --세이브 파일 불러오기--
            -- Path for the file to read
            local path = system.pathForFile( "settings.json", system.DocumentsDirectory)
 
            -- Open the file handle
            local file, errorString = io.open( path, "r" )
 
            if not file then
                composer.showOverlay( "nosave", options )
            else
                composer.removeScene("title")
                composer.gotoScene( "view00Room" )
                audio.pause( titleMusic )
            end
    end
    loadgame:addEventListener("tap",startLoad)

    
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