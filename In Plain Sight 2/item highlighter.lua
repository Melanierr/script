for _,item in pairs(game.Workspace.CurrentMap.Items:GetChildren()) do
    if item.Name ~= "ItemStack" then
        local e = Instance.new("Highlight", item)
    end
    if item.Name == "ItemStack" then
        for _,stack in pairs(item:GetChildren()) do
            local f = Instance.new("Highlight", stack)
        end
    end
    print(item)
    wait(.1)
end
