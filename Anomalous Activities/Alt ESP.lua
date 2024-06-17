game:GetService('RunService').RenderStepped:Connect(function()
    for _,invis in ipairs(game.Workspace.mainGame["active_anomaly"]:GetDescendants()) do
        pcall(function()
            if invis.Transparency == 1 then
                invis.Transparency = 0
            end
        end)
    end
    wait()
    for _,obj in pairs(game.Workspace.mainGame["active_anomaly"]:GetChildren()) do
        if obj:FindFirstChildWhichIsA("Highlight") == true then
            obj:FindFirstChildWhichIsA("Highlight"):Destroy()
        else
            chams = Instance.new("Highlight", obj)
    end
    wait(10)
end)
