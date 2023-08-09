local eF = game:GetService("ReplicatedStorage").Units.Noobs:GetChildren()
local function boo(instance)
    for _, x in ipairs(eF) do -- checks if it matches the name
        if tostring(x) == instance.Name and instance ~= nil then
            instance.Head.Transparency = 0.8
            instance.Head.Size = Vector3.new(5, 4.5, 5)
        end
    end
end
for _, v in ipairs(workspace:GetChildren()) do
    task.wait()
    boo(v)
end
workspace.ChildAdded:Connect(function(v)
	if v.Name ~= "Ranger" and v.Name ~= "APU" and v.Name ~= "Platform" and v.Name ~= "Tank" then
	    wait(0.5)
	    boo(v)
    end
end)
