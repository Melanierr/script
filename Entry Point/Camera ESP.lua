local CamFolder = game:GetService("Workspace").Level.Glass
for _,cam in pairs(CamFolder:GetDescendants()) do
	if cam.Name =="Source" and cam:IsA("Part") then
		local hl = Instance.new("Highlight", cam.Parent)
	end
end
