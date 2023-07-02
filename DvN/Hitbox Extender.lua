while true do 
    spawn(function() wait()
        for _,a in pairs(game.Workspace:GetChildren()) do
            for _,b in pairs(game.ReplicatedStorage.Units.Noobs:GetChildren()) do
                if a.Name == b.Name then
                  local hb = a:FindFirstChild("Head")
                  hb.Size = Vector3.new(6,6,6)
                  hb.Transparency = 0.6
                end
            end
        end
    end)
wait()
end
game.Workspace.ChildAdded:Connect(function(mob)
  	local hbs = mob:FindFirstChild("Head")
    	hbs.Size = Vector3.new(6,6,6)
	hbs.Transparency = 0.6
end) 
