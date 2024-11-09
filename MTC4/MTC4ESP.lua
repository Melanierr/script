local plr = game.Players
local function box(obj)
    local a = Instance.new("Highlight")
    a.Adornee = obj
    a.Name = "sigma"
    a.FillTransparency = 1
    a.OutlineColor = Color3.new(255,0,255)
end
local esp = game:GetService("RunService").RenderStepped:Connect(function()
    for _,v in pairs(plr:GetPlayers()) do
        if v.Team ~= plr.LocalPlayer.Team and not v.Character:FindFirstChildOfClass("Highlight") then
            box(v.Character)
            v.Character.Humanoid.Died:Connect(function()
                esp:Disconnect()
            end)
        end
    end
end)
