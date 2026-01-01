local mob = game:GetService("Workspace").Alive
local plr = game:GetService("Players").LocalPlayer

local function ESP(part)
    if part:FindFirstChildOfClass("BillboardGui") then return end
    if not part:FindFirstChildOfClass("Humanoid") then return end
    local a = Instance.new("BillboardGui")
    local b = Instance.new("TextLabel")
    local hp = part:FindFirstChildOfClass("Humanoid")
    local health = math.floor(hp.Health)
    a.Parent = part
    b.Parent = a
    a.Name = "SKIBIDI"
    a.StudsOffset = Vector3.new(0, 4, 0)
    a.MaxDistance = 200
    a.Adornee = part
    a.LightInfluence = 1
    a.AlwaysOnTop = true
    a.Size = UDim2.new(0, 100, 0, 50)
    b.Name = "HP"
    b.TextSize = 12
    b.BackgroundTransparency = 1
    b.TextColor3 = Color3.fromRGB(255, 255, 0)
    b.Size = UDim2.new(1, 0, 0, 15)
    b.Position = UDim2.new(0.5, 0, 0, 0) 
    b.AnchorPoint = Vector2.new(0.5, 0)
    b.TextStrokeTransparency = 0.7
    b.Text = part.Name .. " Health: " .. health
    hp:GetPropertyChangedSignal("Health"):Connect(function()
        health = math.floor(hp.Health)
        b.Text = part.Name .. " Health: " .. health
    end)
end
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.K then
        for _, v in pairs(mob:GetChildren()) do
            if v:IsA("Model") and v ~= plr.Character then
                if v then
                    ESP(v)
                end
            end
        end
        print("ran")
    end
end)
