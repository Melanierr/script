local plr = game:GetService("Players").LocalPlayer
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Grave Digger", "DarkTheme")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("")
Section:NewButton("Remove camera fog", "ButtonInfo", function()
    game.Workspace.Camera.fakesky:Destroy()
end)
Section:NewButton("Hitbox Extender", "ButtonInfo", function()
    game:GetService('RunService').RenderStepped:connect(function()
            for i,v in next, game:GetService('Players'):GetPlayers() do
                if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Team ~= game:GetService("Players").LocalPlayer.Team then
                    pcall(function()
                        local hl = Instance.new("Highlight", v)
                        v.Character.HeadHitbox.Material = "Plastic"
                        v.Character.HeadHitbox.Transparency = 0.5
                        v.Character.HeadHitbox.Size = Vector3.new(4,4,4)
                    end)
                end
            end
    end)
end)