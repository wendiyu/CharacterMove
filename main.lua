-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Wendi Yu
-- Created on: Apr 2018
--
-- character move use the button
-----------------------------------------------------------------------------------------

-- Character move
local SnowMen = display.newImageRect( "./assets/sprites/SnowMan.png", 500, 500 )
SnowMen.x = display.contentCenterX
SnowMen.y = display.contentCenterY
SnowMen.id = "the character"

local dPad = display.newImageRect( "./assets/sprites/d-pad.png", 300, 300 )
dPad.x = 150
dPad.y = display.contentHeight - 160
dPad.id = "d-pad"
dPad.alpha = 0.5

local upArrow = display.newImage( "./assets/sprites/upArrow.png" )
upArrow.x = 150
upArrow.y = display.contentHeight - 270
upArrow.id = "up arrow"
upArrow.alpha = 1

local downArrow = display.newImage( "./assets/sprites/downArrow.png" )
downArrow.x = 150
downArrow.y = display.contentHeight - 50
downArrow.id = "down arrow"
downArrow.alpha = 1

local leftArrow = display.newImage( "./assets/sprites/leftArrow.png" )
leftArrow.x = 40
leftArrow.y = display.contentHeight - 160
leftArrow.id = "left arrow"
leftArrow.alpha = 1

local rightArrow = display.newImage( "./assets/sprites/rightArrow.png" )
rightArrow.x = 260
rightArrow.y = display.contentHeight - 160
rightArrow.id = "right arrow"
rightArrow.alpha = 1
 
function upArrow:touch( event )

    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( SnowMen, { 
        	x = 0, -- move 0 in the x direction 
        	y = -50, -- move up 50 pixels
        	time = 1000 -- move in a 1/10 of a second
        	} )
    end

    return true
end

function downArrow:touch( event )
	-- body
	if ( event.phase == "ended" ) then
        -- move the character down
        transition.moveBy( SnowMen, { 
        	x = 0, -- move 0 in the x direction 
        	y = 50, -- move up 50 pixels
        	time = 1000 -- move in a 1/10 of a second
        	} )
    end 
    
    return true    
end

function leftArrow:touch( event )
	-- body
	if ( event.phase == "ended" ) then
        -- move the character left
        transition.moveBy( SnowMen, { 
        	x = -50, -- move 0 in the x direction 
        	y = 0, -- move up 50 pixels
        	time = 1000 -- move in a 1/10 of a second
        	} )
    end 
    
    return true    
end

function rightArrow:touch( event )
	-- body
	if ( event.phase == "ended" ) then
        -- move the character right
        transition.moveBy( SnowMen, { 
        	x = 100, -- move 0 in the x direction 
        	y = 0, -- move up 50 pixels
        	time = 1000 -- move in a 1/10 of a second
        	} )
    end 
    
    return true    
end

upArrow:addEventListener( "touch", upArrow )
downArrow:addEventListener( "touch", downArrow )
leftArrow:addEventListener( "touch", leftArrow )
rightArrow:addEventListener( "touch", rightArrow )
