local enemy = {"infantry", "cloaker", "saboteur", "shielder", "gunner", "medic", "jetpacker", "grenadier", "engineer", "escortshielder", "escortgunner", "sniper", "a-10", "tranquilizer", "operator", "sapper", "instigant", "daedalus", "agreement", "achilles", "lelantos", "dreadnought", "icarus", "robberant", "jetnuker", "sparchilles", "ares", "administrator", "zeus", "london", "prometheus", "sparta", "trident", "gaia"}
local spawnFolder = game:GetService("Workspace")

local function esp(obj)
	if obj.Name ~= "Head" then return end
    obj.Size = Vector3.new(5, 6, 5)
    obj.Transparency = 0.5
    warn("esp'd")
end

spawnFolder.ChildAdded:Connect(function(instance)
    if table.find(enemy, string.lower(instance.Name)) and instance:IsA("Model") and instance:WaitForChild("Head", 1) then 
        esp(instance.Head)
    end
end)

for _, instance in pairs(spawnFolder:GetChildren()) do
    if table.find(enemy, string.lower(instance.Name)) and instance:IsA("Model") and instance:WaitForChild("Head", 1) then 
        esp(instance.Head)
    end
end
warn("executed")
