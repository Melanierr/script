local plr = game.Players.LocalPlayer.Character
local npc = game:GetService("Workspace").NPCS
local mob = game:GetService("Workspace").Alive
local map = workspace.Map
local stuff = game:GetService("Workspace").Thrown
local function ESP(part)
    local humanoid = part:FindFirstChildOfClass("Humanoid")
    if not humanoid or part:FindFirstChildOfClass("BillboardGui") then return end

    local gui = Instance.new("BillboardGui", part)
    gui.Name, gui.StudsOffset, gui.MaxDistance, gui.Adornee, gui.LightInfluence, gui.AlwaysOnTop, gui.Size ="ESP", Vector3.new(0, 4, 0), 250, part, 1, true, UDim2.new(0, 100, 0, 50)

    local label = Instance.new("TextLabel", gui)
    label.Name, label.TextSize, label.BackgroundTransparency, label.TextColor3, label.Size,
    label.Position, label.AnchorPoint, label.TextStrokeTransparency = "HP", 12, 1, Color3.fromRGB(255, 255, 0), UDim2.new(1, 0, 0, 15), UDim2.new(0.5, 0, 0, 0), Vector2.new(0.5, 0), 0.7

    local function update() label.Text = part.Name .. " Health: " .. math.floor(humanoid.Health) end
    update()
    humanoid:GetPropertyChangedSignal("Health"):Connect(update)
end
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.K then
      for _, v in pairs(mob:GetChildren()) do
            if v:IsA("Model") and v.Name ~= plr.Name then
                if v then
                    ESP(v)
                end
            end
        end
    end
end)
