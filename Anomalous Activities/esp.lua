game:GetService('RunService').RenderStepped:Connect(function()
    for _,obj in pairs(game.Workspace.mainGame["active_anomaly"]:GetChildren()) do
        pcall(function()
            chams = Instance.new("Highlight", obj)
        end)
    end
end)
