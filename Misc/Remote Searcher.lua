for _,v in pairs(game:GetDescendants()) do
  if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
    print(v," ----- ", v.Parent)
  end
end
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "[SYSTEM] Check your console.", Color = Color3.fromRGB( 255,0,0 ), Font = Enum.Font.Arial, FontSize = Enum.FontSize.Size24 } )
