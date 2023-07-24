local char = game.Players.LocalPlayer.Character
game:GetService("RunService").Stepped:Connect(function()
   local tool = char:FindFirstChildWhichIsA("Tool")
   tool:GetAttributeChangedSignal("Ammo"):Connect(function()
      tool:SetAttribute("Ammo", math.huge)
   end)
end)
