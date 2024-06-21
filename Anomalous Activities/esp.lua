function createMarker(obj)
    bbg = Instance.new("BillboardGui", obj)
    bbg.AlwaysOnTop = true
    bbg.MaxDistance = math.huge
    bbg.LightInfluence = 1
    bbg.StudsOffset = Vector3.new(0, 3, 0)
    bbg.Size = UDim2.new(0, 30, 0, 30)
    tl = Instance.new("TextLabel", bbg)
    tl.Font = "SciFi"
    tl.Text = "▼"
    tl.TextColor3 = Color3.new(240,128,128)
    tl.BackgroundTransparency = 1
    tl.TextScaled = true
    tl.Size = UDim2.new(1, 0, 1, 0)  
end
spawn(function()
    game:GetService("Workspace").mainGame.active_anomaly.ChildAdded:Connect(function(sub)
        createMarker(sub)
    end)
end)
print("executed")
