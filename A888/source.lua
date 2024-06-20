-- // Variables
_G.HeadSize = 5
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
-- // UI Create
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("A888 - Musc#8707", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("")

Section:NewButton("Hitbox Extender", "ButtonInfo", function()
    game:GetService('RunService').RenderStepped:connect(function()
        for _,v in next, game.Workspace.mainGame.active_anomaly:GetChildren() do
            pcall(function()
            v.Head.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
            v.Head.Transparency = 0.8
            v.Head.Color = Color3.new(144,238,144)
            v.Head.Material = "Neon"
            v.Head.CanCollide = false
            end)
        end
    end)
end)
local Tab = Window:NewTab("Visual")
local Section = Tab:NewSection("")
Section:NewButton("Anomaly ESP", "holy shit this is not lagging", function()
    spawn(function()
        game:GetService("Workspace").mainGame.active_anomaly.ChildAdded:Connect(function(sub)
            createMarker(sub)
        end)
    end)
end)

Section:NewButton("Daytime", "", function()
    game.Lighting.TimeOfDay = 12
    game.Lighting.FogEnd = 9e9
end)

Section:NewButton("Crosshair", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Melanierr/old-scripts/main/A-888/ch.lua"))()
end)
