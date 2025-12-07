local plr = game.Players.LocalPlayer
local currentTeam = nil
local espholder = Instance.new("Folder")
espholder.Parent = game:GetService("CoreGui")
local function scanteam()
    return plr.Character.Parent.Name
end

local function esp(obj)
    local a = Instance.new("BoxHandleAdornment")
    a.Name = "Torso"
    a.Parent = espholder
    a.Adornee = obj
    a.AlwaysOnTop = true
    a.Color3 = Color3.fromRGB(255, 0, 0)
    a.Transparency = 0.7
    a.ZIndex = 0
end

local function cleanesp()
    for _,d in pairs(espholder:GetChildren()) do
        if d:IsA("BoxHandleAdornment") then
            d:Destroy()
        end
    end
end
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.J then
        cleanesp()
        currentTeam = scanteam()
        for _, b in pairs(game.Players:GetPlayers()) do
            if b.Character and b.Character.Parent.Name ~= currentTeam then
                for _, c in pairs(b.Character:GetChildren()) do
                    if c:IsA("BasePart") and not c:FindFirstChild("Torso") then
                        esp(c)
                        local head = b.Character:FindFirstChild("HeadHitbox")
                        if head then
                            head.Size = Vector3.new(4,3,4)
                            head.Transparency = 0.9
                        end
                    end
                end
            end
        end
    end
end)
