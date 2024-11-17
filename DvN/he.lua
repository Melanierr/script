-- Hitbox Expander DVN
_G.X = 5
_G.Y = 5
_G.Z = 5
local exclusion = {"apu", "platform", "ranger", "tank"}
local spawnFolder = game:GetService("Workspace")
local function applyH(obj)
    obj:FindFirstChild("Head").Size = Vector3.new(_G.X, _G.Y, _G.Z)
    obj:FindFirstChild("Head").Transparency = 0.5
end
spawnFolder.ChildAdded:Connect(function(instance)
    if table.find(exclusion, string.lower(instance.Name)) then 
        applyH(instance)
    end
end
for _, cr in pairs(spawnFolder:GetChildren()) do
    if table.find(exclusion, string.lower(instance.Name)) then 
        applyH(instance)
    end
end
