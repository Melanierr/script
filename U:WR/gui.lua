local plr = game:GetService("Players").LocalPlayer
local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
local workspace = game:GetService("Workspace")
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Undertale: WaveRush", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("")
Section:NewButton("TP to Memory Star", "", function()
for _,mem in pairs(game.Workspace:GetDescendants()) do
if mem.Name == "Memory" or mem.Name == "memory" then
print("found memory")
hrp.CFrame = mem.CFrame
end
end
end)

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
plr.Character.Humanoid.JumpPower = 55
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


--// TP
local Tab4 = Window:NewTab("Teleports")
local Section = Tab4:NewSection("")
Section:NewButton("F1", "", function()
local h1=game:GetService("Workspace").FlowerBed.Holder

hrp.CFrame = h1.CFrame
end)
Section:NewButton("F2", "", function()
local h2 = game:GetService("Workspace").Map.Base.InfiniteModeDoor["Floor thing"]
hrp.CFrame = h2.CFrame
end)

