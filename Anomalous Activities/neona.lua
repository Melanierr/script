game:GetService('RunService').RenderStepped:Connect(function()
    for _,part in ipairs(game.Workspace.mainGame["active_anomaly"]:GetDescendants()) do
        pcall(function()
            part.Material = "Neon"
        end)
    end
end)
