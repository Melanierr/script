getgenv().CrosshairSettings = {Color = Color3.fromRGB(0, 128, 0), Opacity = 1, Length = 25, Thickness = 1, Offset = 0.8, FollowCursor = true, HideMouseIcon = true}


local player = game:GetService("Players").LocalPlayer
local camera = workspace.CurrentCamera
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local ss = getgenv().CrosshairSettings
local middle = Vector2.new(camera.ViewportSize.X/2,camera.ViewportSize.Y/2)

if typeof(getgenv().crosshairobj) == "table" then
    for i,v in pairs(getgenv().crosshairobj) do
        if typeof(v) == "table" or typeof(v) == "userdata" then
            v:Remove()
        end
    end
end

if typeof(getgenv().crosshairrs) == "RBXScriptConnection" then
    getgenv().crosshairrs:Disconnect()
end

local line1 = Drawing.new("Line") -- Top Line
local line2 = Drawing.new("Line") -- Right Line 
local line3 = Drawing.new("Line") -- Bottom Line 
local line4 = Drawing.new("Line") -- Left Line
getgenv().crosshairobj = {line1 = line1, line2 = line2, line3 = line3, line4 = line4}
line1.Visible = true
line2.Visible = true
line3.Visible = true
line4.Visible = true

getgenv().crosshairrs = RunService.RenderStepped:Connect(function()
    ss = getgenv().CrosshairSettings
    if ss.HideMouseIcon ~= 0 then
        if ss.HideMouseIcon then
            UIS.MouseIconEnabled = false
        else
            UIS.MouseIconEnabled = true
        end
    end
    if ss.FollowCursor then
        middle = UIS:GetMouseLocation()
    else
        middle = Vector2.new(camera.ViewportSize.X/2,camera.ViewportSize.Y/2)
    end
    line1.Transparency = ss.Opacity
    line2.Transparency = ss.Opacity
    line3.Transparency = ss.Opacity
    line4.Transparency = ss.Opacity
    line1.Thickness = ss.Thickness
    line2.Thickness = ss.Thickness
    line3.Thickness = ss.Thickness
    line4.Thickness = ss.Thickness
    line1.Color = ss.Color
    line2.Color = ss.Color
    line3.Color = ss.Color
    line4.Color = ss.Color
    line1.From = Vector2.new(middle.X,middle.Y-ss.Offset)
    line2.From = Vector2.new(middle.X+ss.Offset,middle.Y)
    line3.From = Vector2.new(middle.X,middle.Y+ss.Offset)
    line4.From = Vector2.new(middle.X-ss.Offset,middle.Y)
    line1.To = Vector2.new(middle.X,middle.Y-ss.Offset-ss.Length)
    line2.To = Vector2.new(middle.X+ss.Offset+ss.Length,middle.Y)
    line3.To = Vector2.new(middle.X,middle.Y+ss.Offset+ss.Length)
    line4.To = Vector2.new(middle.X-ss.Offset-ss.Length,middle.Y)
end)
