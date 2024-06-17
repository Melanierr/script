game:GetService('RunService').RenderStepped:Connect(function()
    for _,invis in ipairs(game.Workspace.mainGame["active_anomaly"]:GetDescendants()) do
        pcall(function()
            if invis.Transparency == 1 then
                invis.Transparency = 0
            end
        end)
    end
    for _,obj in pairs(game.Workspace.mainGame["active_anomaly"]:GetChildren()) do
        chams = Instance.new("Highlight", obj)
    end
    wait(10)
end)
