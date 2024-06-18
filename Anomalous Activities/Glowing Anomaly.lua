game:GetService('RunService').RenderStepped:Connect(function()
    for _,invis in ipairs(game.Workspace.mainGame["active_anomaly"]:GetDescendants()) do
        pcall(function()
            v.Material = "Neon"
        end)
    end
end)
