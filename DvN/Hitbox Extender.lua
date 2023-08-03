if not game:IsLoaded() then
   game.Loaded:Wait();
end

local enemyNames = game:GetService("ReplicatedStorage").Units.Noobs:GetChildren()
local mapFolder = game:GetService("Workspace").Map

local function PutOnExtend(i)
    for _, x in ipairs(enemyNames) do
        if tostring(x) == instance.Name then
            i:WaitForChild("Head").Transparency = 0.6
            i:WaitForChild("Head").Size = Vector3.new(4.5, 4.5, 4.5)
        end
    end
end

for _, v in ipairs(workspace:GetChildren()) do
   if v.Name ~= "Ranger" or v.Name ~= "APU" and v.Name ~= "Platform" and v.Name ~= "Tank" then
    task.wait()
    PutOnExtend(v)
   end
end

workspace.ChildAdded:Connect(function(v)
      if v.Name ~= "Ranger" or v.Name ~= "APU" and v.Name ~= "Platform" and v.Name ~= "Tank" then
    task.wait()
    PutOnExtend(v)
      end
end)
