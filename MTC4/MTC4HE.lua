game:GetService('RunService').RenderStepped:connect(function()
  for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name and v.Team ~= game:GetService('Players').LocalPlayer.Team then
      pcall(function()
        v.Character.Head.Size = Vector3.new(5, 4.5, 5)
        v.Character.Head.Transparency = 0.8
        v.Character.Head.Color = v.TeamColor
        v.Character.Head.Material = "Neon"
        v.Character.Head.CanCollide = false
      end)
    end
  end
end)
