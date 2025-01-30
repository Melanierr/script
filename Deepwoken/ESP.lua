local mob = game:GetService("Workspace").Live
local plr = game:GetService("Players").LocalPlayer

local function ESP(part)
    if part:FindFirstChildOfClass("BillboardGui") then return end
    if not part:FindFirstChildOfClass("Humanoid") then return end

    local a = Instance.new("BillboardGui")
    local b = Instance.new("TextLabel")
    local c = Instance.new("TextLabel")
    local hp = part:FindFirstChildOfClass("Humanoid")
    local health = math.floor(hp.Health)
    local posture, mposture, armor = 0, 0, 0

    if part:FindFirstChild("Armor") then
        armor = part.Armor.Value
    end

    if part:FindFirstChild("BreakMeter") then
        posture = math.floor(part.BreakMeter.Value)
        mposture = part.BreakMeter.MaxValue
    end

    b.Parent = a
    c.Parent = a
    a.Parent = part

    a.Name = "SKIBIDI"
    a.StudsOffset = Vector3.new(0, 4, 0)
    a.MaxDistance = 500
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

    c.Name = "Stats"
    c.TextSize = 12
    c.BackgroundTransparency = 1
    c.TextColor3 = Color3.fromRGB(255, 255, 0)
    c.Size = UDim2.new(1, 0, 0, 15)
    c.Position = UDim2.new(0.5, 0, 0, 25)
    c.AnchorPoint = Vector2.new(0.5, 0)
    c.TextStrokeTransparency = 0.7
    c.Text = "Armor: " .. armor .. " Posture: " .. posture .. " MaxPosture: " .. mposture

    hp:GetPropertyChangedSignal("Health"):Connect(function()
        health = math.floor(hp.Health)
        b.Text = part.Name .. " Health: " .. health
    end)

    if part:FindFirstChild("Armor") then
        part.Armor:GetPropertyChangedSignal("Value"):Connect(function()
            armor = math.floor(part.Armor.Value)
            c.Text = "Armor: " .. math.floor(armor) .. " Posture: " .. math.floor(posture) .. " MaxPosture: " .. mposture
        end)
    end

    if part:FindFirstChild("BreakMeter") then
        part.BreakMeter:GetPropertyChangedSignal("Value"):Connect(function()
            posture = part.BreakMeter.Value
            mposture = part.BreakMeter.MaxValue
            c.Text = "Armor: " .. math.floor(armor) .. " Posture: " .. math.floor(posture) .. " MaxPosture: " .. mposture
        end)
    end
end


game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.J then
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
