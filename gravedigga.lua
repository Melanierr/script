local plr = game:GetService('Players')
local rs = game:GetService('RunService')
local lg = game:GetService('Lighting')
local ws = game:GetService('Workspace')
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Grave Digger", "Synapse")
local Tab = Window:NewTab("Main")
local Section1 = Tab:NewSection("Visual")
Section1:NewButton("Fullbright", "", function()
    lg.Brightness = 2
	lg.ClockTime = 14
	lg.FogEnd = 100000
	lg.GlobalShadows = false
	lg.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end)
Section1:NewButton("Unlimited Vision", "", function()
    game:GetService("RunService").RenderStepped:Connect(function()
	if ws.Camera.fakesky then
        	ws.Camera:FindFirstChild("fakesky"):Destroy()
	end
        wait(5)
    end)
end)


local Section2 = Tab:NewSection("Cheats")
Section2:NewButton("Friendly Fire", "", function()
    plr.LocalPlayer.Character.Parent = game.Workspace
end)
Section2:NewButton("Hitbox Expander", "", function()
    game:GetService("RunService").RenderStepped:Connect(function()
        for _,plrs in next, game:GetService('Players'):GetPlayers() do
            if plrs.Team ~= plr.LocalPlayer.Team then
                pcall(function()
                    plrs.Character.HeadHitbox.Transparency = 0.9
                    plrs.Character.HeadHitbox.Size = Vector3.new(3.5,4,3.5)
                    plrs.Character.HeadHitbox.CanCollide = false
                end)
            end
        end
    end)
end)
Section2:NewButton("Wallhack", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Melanierr/script/main/Misc/synapsesp.lua"))()
end)
