local plr = game:GetService('Players')
local rs = game:GetService('RunService')
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Grave Digger", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("")
--// buttons
Section:NewButton("Friendly Fire", "", function()
    plr.LocalPlayer.Character.Parent = game.Workspace
end)
Section:NewButton("Hitbox Expander", "", function()
    game:GetService("RunService").RenderStepped:Connect(function()
        for _,plrs in next, game:GetService('Players'):GetPlayers() do
            if plrs.Team ~= plr.LocalPlayer.Team then
                pcall(function()
                    plrs.Character.HeadHitbox.Transparency = 0.9
                    plrs.Character.HeadHitbox.Size = Vector3.new(4.5,4.5,4.5)
                    plrs.Character.HeadHitbox.CanCollide = false
                end)
            end
        end
    end)
end)
Section:NewButton("Wallhack", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Melanierr/script/main/Misc/synapsesp.lua"))()
end)
