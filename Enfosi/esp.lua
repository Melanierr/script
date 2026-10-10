local npcFolder = game.Workspace.NPCs
local function makeESP(obj)
	if not obj:IsA("Model") then return end
    if obj:FindFirstChildOfClass("Highlight") then return end
    local humanoid = obj:FindFirstChild("Humanoid")
    local a = Instance.new("Highlight", obj)
    a.FillColor = Color3.fromRGB(255, 0, 0)
    a.OutlineColor = Color3.fromRGB(255, 255, 255)
    a.FillTransparency = 0.6

    humanoid.Died:Connect(function()
    	warn("removing esp")
        a:Destroy()
    end)
end
npcFolder.ChildAdded:Connect(function(obj)
	wait(0.2)
	if obj:GetAttribute("Points") then
		warn("fake enfosi")
		makeESP(obj)
	end
end)
warn("executed")
