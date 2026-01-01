local loot = {"EnkephalinBarrels", "Extracted Weapon Crate", "Locker", "Military Crate", "Rack", "Supply Depot"}
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

local Plugin = {
	["PluginName"] = "Archived",
	["PluginDescription"] = "Made by Musc",
	["Commands"] = {
		["market"] = {
			["ListName"] = "market",
			["Description"] = "Teleports you to the Travelling Pawner.",
			["Aliases"] = {},
			["Function"] = function()
				for _,a in pairs(game:GetService("Workspace").NPCS:GetChildren()) do
                    if string.find(tostring(a.Name), "Travel") then
                        game.Players.LocalPlayer.Character:PivotTo(a:GetPivot())
						warn("teleported")
                    end
                end
			end
		},
		["mobesp"] = {
			["ListName"] = "HP ESP [K]",
			["Description"] = "HP Esp",
			["Aliases"] = {},
			["Function"] = function()
				game:GetService("UserInputService").InputBegan:Connect(function(input)
					if input.KeyCode == Enum.KeyCode.K then
					for _, b in pairs(game:GetService("Workspace").Alive:GetChildren()) do
							if b:IsA("Model") and b.Name ~= game.Players.LocalPlayer.Character.Name then
								if b.Humanoid then
									ESP(b)
									warn("ran")
								end
							end
						end
					end
				end)
			end
		},
        ["trash"] = {
			["ListName"] = "trash",
			["Description"] = "Teleports trash quest to you.",
			["Aliases"] = {},
			["Function"] = function()
				for _,a in pairs(game:GetService("Workspace").Thrown:GetChildren()) do
                    if a.Name == "Papers" or a.Name == "TrashBags" then
                        a:PivotTo(game.Players.LocalPlayer.Character:GetPivot() + Vector3.new(6, 0, 6))
                    end
                end
			end
		},
	}
}
return Plugin
