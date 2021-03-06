-- Title: TouchAndReact
-- Name: Aliya Satifa
-- Course: ICS2O/3C
-- This program displays a button that when I click on it turns color and another

-- set background color
display.setDefault("background", 153/255, 204/255, 255/255)

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- create blue button, set its position and make it vivsible 
local blueButton = display.newImageRect("Images/Fast Button Active@2x.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisisble = true 

-- create red buttton, set its position and make it invisible 
local redButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisisble = false 

-- create text object, set its position and make it invisible
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (1, 1, 0)
textObject.isVisisble = false 

-- Function : BlueButtonListner 
-- Input: touch listener 
-- Output: none
-- Description: when blue button is clicked, it will make the text appear with the red button, 
-- and make the blue button disapear
local function BlueButtonListner (touch)
	if (touch.phase == "began") then 
		blueButton.isVisisble = false
		redButton.isVisisble = true
		textObject.isVisisble = true
	end 

	if (touch.phase == "ended") then 
	    blueButton.isVisisble = true
	    redButton.isVisisble = false
	    textObject.isVisisble = false 

	end 

end 




-- add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListner)