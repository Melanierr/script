spawn(function()
    pcall(function()
        for i,v in pairs(game.Workspace.mainGame["active_anomaly"]:GetChildren()) do
            chams = Instance.new("Highlight", v)
        end
        game.Workspace.mainGame["active_anomaly"].ChildAdded:Connect(function(ins)
            print("An instance has been added")
            esp = Instance.new("Highlight", ins)
            wait()
        end)
        print("succesfully")
    end)
end)
