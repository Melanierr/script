local name = game:GetService("ReplicatedStorage").Units.Noobs:GetChildren()
local wp = game:GetService("Workspace").Map

local function create(instance)
    for _, x in ipairs(name) do
        if tostring(x) == instance.Name and instance ~= nil then
            local esp = Instance.new("Highlight", instance)
			local gui = Instance.new("BillboardGui", instance)
			local text = Instance.new("TextLabel", gui)
			gui.AlwaysOnTop = true
			gui.LightInfluence = 1
			gui.Size = UDim2.new(0, 30, 0, 30)
			gui.StudsOffset = Vector3.new(0, 5, 0)
			text.BackgroundTransparency = 1
			text.Size = UDim2.new(3, 0, 3, 0)
			text.Text = instance.Name
			text.TextSize = 10
			text.TextColor3 = Color3.new(255, 0, 0)
        end
    end
end

for _, v in ipairs(workspace:GetChildren()) do
    task.wait()
    create(v)
end

workspace.ChildAdded:Connect(function(v)
    task.wait()
    create(v)
end)
