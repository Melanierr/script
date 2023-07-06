local plr = game:GetService("Players").LocalPlayer
local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
local workspace = game:GetService("Workspace")
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Undertale: WaveRush", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("")
Section:NewButton("TP to Memory Star", "", function()
local oldcf = hrp.CFrame
for _,mem in pairs(game.Workspace:GetDescendants()) do
if mem.Name == "Memory" or mem.Name == "memory" then
print("found memory")
hrp.CFrame = mem.CFrame
fireproximityprompt(mem.ProximityPrompt, 1, true)
fireproximityprompt(mem.ProximityPrompt, 0, true)
wait(2)
hrp.CFrame = oldcf
end
end
end)
Section:NewLabel("Instant kill most enemies, like fr upgrade ur weapon")
Section:NewButton("Insta-kill", "", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/U%3AWR/insta-kill.lua", true))()
end)

Section:NewButton("??", "", function()
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "[SYSTEM] YOU SHOULD KILL YOURSELF NOW!", Color = Color3.fromRGB( 255,0,0 ), Font = Enum.Font.Arial, FontSize = Enum.FontSize.Size24 } )
end)

--// Players
local Tab1 = Window:NewTab("Player")
local Section = Tab1:NewSection("")
Section:NewButton("Jump", "enables jump", function()
while true do
plr.Character.Humanoid.JumpPower = 55
wait()
end
end)

Section:NewButton("GodMode", "", function()
while true do
game:GetService("Players").LocalPlayer.Character.Dash.Event:FireServer()
wait()
end
end)


--// Kindness

local Tab2 = Window:NewTab("Kindness")
local Section = Tab2:NewSection("EQUIP KINDNESS SOUL IN LOBBY BEFORE PLAYING")
Section:NewButton("Heal self", "", function()
game:GetService("Players").LocalPlayer.Character.Kindness.HealEvent:FireServer(game:GetService("Players").LocalPlayer.Character.Humanoid)
end)

Section:NewButton("Spawn Shield", "", function()
game:GetService("Players").LocalPlayer.Character.Kindness.ShieldEvent:FireServer()
end)

--// Justice

local Tab3 = Window:NewTab("Justice")
local Section = Tab3:NewSection("EQUIP JUSTICE SOUL IN LOBBY BEFORE PLAYING")
Section:NewButton("No Cooldown + Fully Charged", "", function()
	game:GetService("UserInputService").InputBegan:Connect(function(Key)
	    if Key.KeyCode == Enum.KeyCode.T then 
			game:GetService("Players").LocalPlayer.Character.Justice.ShootEvent:FireServer("5")
	    end
	end)
end)

--// Preservance

local Tab4 = Window:NewTab("Preservance")
local Section = Tab4:NewSection("EQUIP PRESERVANCE SOUL IN LOBBY BEFORE PLAYING")
Section:NewButton("No Cooldown", "", function()
	game:GetService("UserInputService").InputBegan:Connect(function(Key)
	    if Key.KeyCode == Enum.KeyCode.T then 
			game:GetService("Players").LocalPlayer.Character.Perseverance.ShootEvent:FireServer()
	    end
	end)
end)

--// TP

local Tabs = Window:NewTab("Teleports")
local Section = Tabs:NewSection("")
Section:NewButton("G", "", function()
hrp.CFrame = game:GetService("Workspace").Map.Base.FlowerBed.Holder.CFrame.CFrame
end)
Section:NewButton("F1", "", function()
hrp.CFrame = game:GetService("Workspace").FlowerBed.Holder.CFrame
end)
Section:NewButton("F2", "", function()
hrp.CFrame = game:GetService("Workspace").Map.Base.InfiniteModeDoor["Floor thing"].CFrame
end)


local Tabss = Window:NewTab("Misc")
local Section = Tabss:NewSection("Created by Musc")
Section:NewKeybind("P to toogle UI", "", Enum.KeyCode.P, function()
	Library:ToggleUI()
end)
