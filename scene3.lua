local composer = require( "composer" )
local scene = composer.newScene()
 
---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------
 
-- local forward references should go here
 
---------------------------------------------------------------------------------

local function switchScene(event) -- Change scenes
      
      composer.gotoScene("scene1") --Title Screen
end 


-- "scene:create()"
function scene:create( event )
 
   local sceneGroup = self.view
 
local button1 = display.newRect( 300, 700, 100, 75)
button1:setFillColor(0,1,0)
local buttontext1 = display.newText( "End Game", 300, 700, native.systemFont, 16 )
sceneGroup:insert(button1)
sceneGroup:insert(buttontext1)
button1:addEventListener( "tap", switchScene )
local helpText1 = display.newText("Instructions", display.contentCenterX, 100, native.systemFont, 60)
sceneGroup:insert(helpText1)
local helpText2 = display.newText("Tap the left side of screen to move ship up gradually", display.contentCenterX, 200, native.systemFont, 35)
sceneGroup:insert(helpText2)
local helpText3 = display.newText("Tap the right side of screen, also indicated by the shoot label to fire at enemies", display.contentCenterX, 300, native.systemFont, 35)
sceneGroup:insert(helpText3)
end
 
-- "scene:show()"
function scene:show( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
   elseif ( phase == "did" ) then
      -- Called when the scene is now on screen.
      -- Insert code here to make the scene come alive.
      -- Example: start timers, begin animation, play audio, etc.
   end
end
 
-- "scene:hide()"
function scene:hide( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is on screen (but is about to go off screen).
      -- Insert code here to "pause" the scene.
      -- Example: stop timers, stop animation, stop audio, etc.
   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
   end
end
 
-- "scene:destroy()"
function scene:destroy( event )
 
   local sceneGroup = self.view
 
   -- Called prior to the removal of scene's view ("sceneGroup").
   -- Insert code here to clean up the scene.
   -- Example: remove display objects, save state, etc.
end
 
---------------------------------------------------------------------------------
 
-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
 
---------------------------------------------------------------------------------
 
return scene