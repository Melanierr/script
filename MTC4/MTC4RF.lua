local Player = game.Players.LocalPlayer
local rf = Instance.new("ScreenGui")
local distances = Instance.new("TextLabel")
rf.Name = "RangefinderGUI"
rf.Parent = Player:WaitForChild("PlayerGui")
rf.DisplayOrder = 20
distances.Name = "distances"
distances.Size = UDim2.new(0, 200, 0, 50)
distances.Position = UDim2.new(0.5, -100, 0, 50)
distances.BackgroundTransparency = 1
distances.TextScaled = true
distances.TextColor3 = Color3.new(1, 1, 1) 
distances.Font = Enum.Font.SciFi
distances.Text = "Distance: -- meters"
distances.Parent = rf
local function updateDistance()
    local mouse = Player:GetMouse()
    if mouse.Target then
        local tpos = mouse.Hit.Position
        local ppos = Player.Character.HumanoidRootPart.Position
        local ds = math.ceil((ppos - tpos).Magnitude * 0.28 + 30)
        distances.Text = string.format("Distance: %d meters", ds)
    else
        distances.Text = "Out of Range"
    end
end
game:GetService("RunService").RenderStepped:Connect(function()
    updateDistance()
end)
