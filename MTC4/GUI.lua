local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("MTC4", "Synapse")
local Tab = Window:NewTab("Main")
local Section1 = Tab:NewSection("Visual")
Section1:NewButton("Player ESP", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Melanierr/script/main/MTC4/MTC4ESP.lua"))()
end)
Section1:NewButton("Reduce Lag", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Melanierr/script/main/MTC4/MTC4OPTI.lua"))()
end)
local Section2 = Tab:NewSection("Player")
Section2:NewButton("Hitbox Expander", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Melanierr/script/main/MTC4/MTC4HE.lua"))()
end)
local Section3 = Tab:NewSection("Misc")
Section3:NewButton("Rangefinder ( bit inaccurate )", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Melanierr/script/main/MTC4/MTC4RF.lua"))()
end)
Section3:NewButton("NoFog", "ButtonInfo", function()
    game.Lighting.FogEnd = 9e9
end)
Section3:NewToggle("Day / Night", "", function(state)
    if state then
        game.Lighting.TimeOfDay = 12
    else
        game.Lighting.TimeOfDay = 20
    end
end)
