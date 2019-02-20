-----------------------------------------------------------------------------------------
--
-- This program you put in numbers for an a,b and h value of an trapezoid and it will give you the area.
--
-- Created on: 2019-02-20
-- Created by: Aden Rao
--
-----------------------------------------------------------------------------------------

--Backround & Title
display.setDefault( "background", 100/255, 155/255, 250/255 )

local myText = display.newText( "Trapezoid Area Calculator", 160, 5, native.systemFont, 20 )
myText:setFillColor( 255/255, 100/255, 0 )

--variables
local SideAOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 200, 30 )
SideAOfTrapezoidTextField.id = "SideA textField"
local myText = display.newText( "a  =", 25, 388, native.systemFont, 20 )

local SideBOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 200, 30 )
SideBOfTrapezoidTextField.id = "SideB textField"
local myText = display.newText( "b  =", 25, 440, native.systemFont, 20 )

local HeightOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 250, 200, 30 )
HeightOfTrapezoidTextField.id = "Height textField"
local myText = display.newText( "h  =", 25, 490, native.systemFont, 20 )

local areaOfTrapezoidTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 25 )
areaOfTrapezoidTextField.id = "area textField"
areaOfTrapezoidTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/button.png", 250, 90 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
 
    local SideAOfTrapezoid
    local SideBOfTrapezoid
    local areaOfTrapezoid
 
    SideAOfTrapezoid = SideAOfTrapezoidTextField.text
    SideBOfTrapezoid = SideBOfTrapezoidTextField.text
    HeightOfTrapezoid = HeightOfTrapezoidTextField.text
    areaOfTrapezoid = ((SideAOfTrapezoid + SideBOfTrapezoid)/2)*HeightOfTrapezoid

    areaOfTrapezoidTextField.text = "The area is " .. areaOfTrapezoid

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )
