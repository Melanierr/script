local hidden = game:GetService("ReplicatedStorage")["HIDDEN_UNITS"]
local wp = game:GetService("Workspace")
game.Lighting.TimeOfDay = 12
function clone()
	for _,v in pairs(hidden:GetChildren()) do
		
		local clone = v:Clone()
		clone.Parent = wp
		wait(.1)
	end
end
clone()

hidden.ChildAdded:Connect(function(obj)
	clone:Destroy()
	wait(1)
	clone()
end)
print("is running")
