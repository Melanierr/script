local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Undertale: WaveRush", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("")
Section:NewButton("GodMode", "", function()
    while true do
		game:GetService("Players").LocalPlayer.Character.Dash.Event:FireServer()
		wait()
	end
end)
Section:NewButton("Insta-kill", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/U%3AWR/insta-kill.lua", true))()
end)
Section:NewButton("??", "", function()
    game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "[SYSTEM] NIGGAAAAAA", Color = Color3.fromRGB( 255,0,0 ), Font = Enum.Font.Arial, FontSize = Enum.FontSize.Size24 } )
end)

--// Kindness

local Tab = Window:NewTab("Kindness")
local Section = Tab:NewSection("EQUIP KINDNESS SOUL IN LOBBY BEFORE PLAYING")
Section:NewButton("Heal self", "", function()
	game:GetService("Players").LocalPlayer.Character.Kindness.HealEvent:FireServer(game:GetService("Players").LocalPlayer.Character.Humanoid)
end)

Section:NewButton("Spawn Shield", "", function()
	game:GetService("Players").LocalPlayer.Character.Kindness.ShieldEvent:FireServer()
	wait(.1)
end)

--// Justice

local Tab = Window:NewTab("Justice")
local Section = Tab:NewSection("EQUIP JUSTICE SOUL IN LOBBY BEFORE PLAYING")
