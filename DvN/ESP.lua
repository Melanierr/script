local name = game:GetService("ReplicatedStorage").Units.Noobs:GetChildren()
local wp = game:GetService("Workspace").Map

local function create(instance)
    for _, x in ipairs(name) do
        if tostring(x) == instance.Name and instance ~= nil then
            local esp = Instance.new("Highlight", instance)
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
