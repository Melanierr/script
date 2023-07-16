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
Section:NewButton("Enemy ESP [ Very shitty ]", "fixed!!", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/ESP.lua", true))()
end)
local Section = Tab:NewSection("NOT RECOMMENDED")
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
Sections:NewButton("Be a gunner [ Visual only ]", "", function()
	game:GetService("ReplicatedStorage").Remotes.Armoury.BuyItem:InvokeServer("LMG")
	local lmg = game:GetService("ReplicatedStorage").Tools.LMG:Clone()
	lmg.Parent = game.Players.LocalPlayer.Backpack
	game:GetService("ReplicatedStorage").Remotes.Toolbar.SetBackpackOrderServer:FireServer({[7] = game:GetService("Players").LocalPlayer.Backpack.LMG})
end)
Sections:NewButton("Unlock Hell Mode", "", function()
	local threatening = game:GetService("ReplicatedStorage").UI.PsyOp
	local omg = threatening:Clone()
	omg.Parent = game.Players.LocalPlayer.PlayerGui
	wait(4)
	game.Players.LocalPlayer:Kick("ONLY HARDWORK CAN GRANT IT LOL")
end)

