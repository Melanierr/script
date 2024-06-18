_G.HeadSize = 5
_G.Enabled = true
 
game:GetService('RunService').RenderStepped:connect(function()
    if _G.Enabled then
        for i,v in pairs(game.Workspace.mainGame["active_anomaly"]:GetDescendants()) do
            if v.Name == "Head" then
                pcall(function()
                    v.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                    v.Transparency = 0.8
                    v.Color = Color3.new(144,238,144)
                    v.Material = "Neon"
                    v.CanCollide = false
                end)
            end
        end
    end
end)
