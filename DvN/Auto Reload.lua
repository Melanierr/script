while true do
  spawn(function()
    for _,remote in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
      if remote.Name =='VerifyReload' then
        local wp = remote.Parent
      end
    end
  end)
wait(2)
end
while true do
  spawn(function()
      wp.VerifyReload:FireServer()
      wait(.7)
  end)
end
