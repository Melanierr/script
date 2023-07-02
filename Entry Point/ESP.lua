for _, npc in pairs(game:GetService("Workspace").Level.Actors:GetChildren()) do
    local chams = Instance.new('Highlight')
    chams.Parent = npc
end
for _, item in pairs(game:GetService("Workspace").Level.GroundItems:GetChildren()) do
    local chasm = Instance.new('Highlight')
    chasm.Parent = item
end
game.Workspace.Level.Actors.ChildAdded:Connect(function(npc)
    local chams = Instance.new('Highlight')
    chams.Parent = npc
end)
game:GetService("Workspace").Level.GroundItems.ChildAdded:Connect(function(item)
    local chasm = Instance.new('Highlight')
    chasm.Parent = item
end)
