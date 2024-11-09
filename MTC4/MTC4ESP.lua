local plr = game.Players
local function box(obj)
    local a = Instance.new("Highlight")
    a.Adornee = obj
    a.Parent = obj
    a.FillTransparency = 1
    a.OutlineColor = Color3.new(255,0,255)
end
game:GetService("RunService").RenderStepped:Connect(function()
    for _,v in pairs(plr:GetPlayers()) do
        if v.Team ~= plr.LocalPlayer.Team and v.Team ~= "Neutral" and not v.Character:FindFirstChildOfClass("Highlight") then
            box(v.Character)
        end
    end
end)
