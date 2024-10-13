local plr = game:GetService('Players')
local rs = game:GetService('RunService')
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Grave Digger", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("")
--// function
function wallhack(obj)
    local wh = Instance.new("BoxHandleAdornment")
    wh.Parent = obj
    wh.Adornee = obj
    wh.AlwaysOnTop = true
    wh.ZIndex = 0
    wh.Size = obj.Size
    wh.Transparency = 0.8
end
--// buttons
Section:NewButton("Friendly Fire", "", function()
    plr.LocalPlayer.Character.Parent = game.Workspace
end)
Section:NewButton("Hitbox Expander", "", function()
    rs.RenderStepped:Connect(function()
        for _,plrs in next, game:GetService('Players'):GetPlayers() do
            if plrs.Name ~= plr.LocalPlayer.Name and plrs.Team ~= plr.LocalPlayer.Team then
                pcall(function()
                    plrs.Character.HeadHitbox.Material = "Plastic"
                    plrs.Character.HeadHitbox.Transparency = 0.5
                    plrs.Character.HeadHitbox.Size = Vector3.new(4,4,4)
                end)
            end
        end
    end)
end)
Section:NewButton("Wallhack", "", function()
    rs.RenderStepped:Connect(function()
        for _,hw in pairs(plr:GetPlayers()) do
            if hw.Name ~= plr.LocalPlayer.Name and hw.Team ~= plr.LocalPlayer.Team and hw.Character.Humanoid.Health == 0 then
                pcall(function()
                    if hw.Character.Head:FindFirstChildWhichIsA("BoxHandleAdornment") and hw.Character.Torso:FindFirstChildWhichIsA("BoxHandleAdornment") then
                        wallhack(hw.Character:FindFirstChild("Head"))
                        wallhack(hw.Character:FindFirstChild("Torso"))
                    end
                end)
            end
        end
    end)
end)
