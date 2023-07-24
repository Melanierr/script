local alert = Instance.new("Sound",game:GetService("SoundService"))
local map = game:GetService("Workspace").Map
alert.SoundId = "rbxassetid://4809574295"
game:GetService("Workspace").Fingerprints.ChildAdded:Connect(function()
    alert:Play()
    game.StarterGui:SetCore("SendNotification", {
    Title = "Evidence";
    Text = "A new fingerprint has been detected.";
    Duration = "5";
    Icon = "rbxassetid://11151804229"
})
end)
game:GetService("Workspace").Orbs.ChildAdded:Connect(function()
    alert:Play()
    game.StarterGui:SetCore("SendNotification", {
    Title = "Evidence";
    Text = "An orb has been released.";
    Duration = "5";
    Icon = "rbxassetid://11151804229"
})
end)
game:GetService("Workspace").Map.Fusebox.On.Changed:Connect(function()
    alert:Play()
    game.StarterGui:SetCore("SendNotification", {
    Title = "Power";
    Text = "The power box has changed its state.";
    Duration = "5";
    Icon = "rbxassetid://11151804229"
})
end)
if map.Bone ~= nil then
    alert:Play()
    game.StarterGui:SetCore("SendNotification", {
    Title = "Evidence";
    Text = "A bone has been found.";
    Duration = "5";
    Icon = "rbxassetid://11151804229"})
    local esp = Instance.new("Highlight", map.Bone)
end
for i,v in pairs(game:GetService("Workspace").Map.PossessionSpawns:GetChildren()) do
    if i > 0 then
      alert:Play()
      game.StarterGui:SetCore("SendNotification", {
      Title = "Possesion";
      Text = "An interactive object has been found.";
      Duration = "5";
      Icon = "rbxassetid://11151804229"})
      local esp = Instance.new("Highlight", v)
    end
end
if game:GetService("Workspace").emfpart2 ~= nil then
  local ghostroom = Instance.new("Highlight", game:GetService("Workspace").emfpart2)
  game.StarterGui:SetCore("SendNotification", {
      Title = "Room";
      Text = "The ghost room has been makred. ";
      Duration = "5";
      Icon = "rbxassetid://11151804229"})
end
