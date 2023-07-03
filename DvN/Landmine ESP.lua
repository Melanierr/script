function createESP(parent, name)
  if name == "Landmine" then
    local hl = Instance.new("Highlight")
    hl.Parent = parent
  end
end
while true do
game.Workspace.ChildAdded:Connect(function(obj)
      createESP(obj, obj.Name)
end)
wait()
end
