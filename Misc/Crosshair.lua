getgenv().CrosshairSettings = {
    Color = Color3.fromRGB(255,0,0),
    Opacity = 1,
    Length = 20,
    Thickness = 1,
    Offset = 0, 
    Dot = false, 
    FollowCursor = true, 
    HideMouseIcon = true, 
    HideGameCrosshair = true, 
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/CustomCrosshair.lua", true))()
