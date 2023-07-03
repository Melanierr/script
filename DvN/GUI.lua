local InfiniteJumpEnabled = true
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DvN", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection(" ")
Section:NewButton("Inf Ammo", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/Inf%20Ammo.lua", true))()
end)
Section:NewButton("Damage Multiplier [ x6 ]", "", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/Damage%20Multiplier.lua", true))()
end)
Section:NewButton("Hitbox Expander", "ButtonInfo", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/Hitbox%20Extender.lua", true))()
end)
local Section = Tab:NewSection("Not finished")
Section:NewButton("Auto Reload", "ButtonInfo", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/Auto%20Reload.lua", true))()
end)
local Tab = Window:NewTab("Misc")
local Sections = Tab:NewSection("random things")
Sections:NewToggle("Day/Night", "", function(state)
    if state then
        game:GetService("Lighting").TimeOfDay = 12
    else
        game:GetService("Lighting").TimeOfDay = 24
    end
end)
Sections:NewButton("No Fog", "", function()
	while true do
		game:GetService("Lighting").FogEnd = 10000
		wait()
	end
end)
Sections:NewSlider("Walkspeed", "", 200, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Sections:NewButton("Inf Jump", "", function()
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfiniteJumpEnabled then
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
		end
	end)
end)
Sections:NewButton("Infinite Yield", "", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/we-will-be-back-soon/main/IY.lua", true))()
end)
Sections:NewButton("Enemy ESP?", "Sometimes work!!", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/Landmine%20ESP.lua", true))()
end)

