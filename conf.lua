function love.conf(t)
	t.title = "Wöbble"
	t.author = "lauterklabauter, Jonathan Wehrle"

	t.version = "0.9.2"

	t.window.title = "Wöbble"
    t.window.icon = "img/wöbble-256.png"

	t.window.width = 1280
	t.window.height = 720
	t.window.fullscreen = false

    t.console = true

    t.window.borderless = false

    t.window.resizable = false
    t.window.minwidth = 1
	t.window.minheight = 1

    t.window.fullscreen = false
    t.window.vsync = true
	t.window.fsaa = 0
    t.window.display = 1
 
    t.modules.audio = true
	t.modules.event = true
	t.modules.graphics = true
    t.modules.image = true
    t.modules.joystick = true
    t.modules.keyboard = true
    t.modules.math = true
    t.modules.mouse = true
    t.modules.physics = true
    t.modules.sound = true
    t.modules.system = true
    t.modules.timer = true
    t.modules.window = true
    t.modules.thread = true
end
