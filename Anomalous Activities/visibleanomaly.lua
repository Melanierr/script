game:GetService('RunService').RenderStepped:Connect(function()
    for _,invis in ipairs(game.Workspace.mainGame["active_anomaly"]:GetDescendants()) do
        pcall(function()
            if invis.Transparency == 1 then
                invis.Transparency = 0
            end
        end)
    end
end)
