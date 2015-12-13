gamestate = require "libs.hump.gamestate"
vector = require "libs.hump.vector"
anim8 = require "libs.anim8"
camera = require "libs.hump.camera"

levels = require "levels.levels"

states = {}

function love.load()
	states.title = require "states.title"
	states.game = require "states.game"
	states.editor = require "states.editor"
	states.level_select = require "states.level_select"

	love.graphics.setBackgroundColor(0,0,0)

	love.keyboard.setTextInput( false )	--used later in editor_save state

	levels:load()

	font = love.graphics.newImageFont("img/font.png",
								      " abcdefghijklmnopqrstuvwxyz" ..
								      "ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
								      "123456789.,!?-+/():;%&`'*#=[]\"")

	music = love.audio.newSource( 'snd/music.wav', 'static' )
	music:setLooping( true ) --so it doesnt stop
	music:play()

	love.graphics.setFont(font)

	gamestate.registerEvents()
	gamestate.push(states.title)
end
