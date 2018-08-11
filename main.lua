local androidSheet, sequenceData, androidSprite, waveRight, waveLeft 
local walk, run, courtsey, jump, waverightText, waveleftText, walkText 
local runText, courtseyText, jumpText

local w = display.contentWidth

androidTable = { 
	width = 329,
	height = 241, 
	numFrames = 30, 
	sheetContentHeight = 723, 
	sheetContentWidth = 3290
}
	
androidSheet = graphics.newImageSheet( "android_sheet.png", androidTable )

sequenceData = {
	{ 
	name = "waveright",
	start = 1,
	count = 10,
	time = 800,
	loopDirection = "bounce", 
	loopCount = 1 
	},
	{ 
	name = "waveleft",
	start = 11,
	count = 10,
	time = 800,
	loopDirection = "bounce", 
	loopCount = 1 
	},
	{ 
	name = "walk",
	frames = { 1, 21, 22, 23, 22, 21, 1, 24, 25, 26, 25, 24 },
	time = 1000 
	},
	{ 
	name = "run",
	frames = { 1, 21, 22, 23, 22, 21, 1, 24, 25, 26, 25, 24 },
	time = 600 
	},
	{ 
	name = "courtsey",
	frames = { 1, 27, 28, 29, 30 }, 
	time = 400 ,
	loopDirection = "bounce", 
	loopCount = 1 
	}
}
	

androidSprite = display.newSprite( androidSheet, sequenceData ) 
androidSprite.x = w/2
androidSprite.y = 300
androidSprite.xScale, androidSprite.yScale = 1, 1

androidSprite:setSequence( "run" )
androidSprite:play()



