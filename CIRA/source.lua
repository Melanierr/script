function createMarker(obj)
    bbg = Instance.new("BillboardGui", obj)
    bbg.AlwaysOnTop = true
    bbg.MaxDistance = math.huge
    bbg.LightInfluence = 1
    bbg.StudsOffset = Vector3.new(0, 3, 0)
    bbg.Size = UDim2.new(0, 30, 0, 30)
    tl = Instance.new("TextLabel", bbg)
    tl.Font = "SciFi"
    tl.Text = "[]"
    tl.TextColor3 = Color3.new(240,128,128)
    tl.BackgroundTransparency = 1
    tl.TextScaled = true
    tl.Size = UDim2.new(1, 0, 1, 0)  
end
function setData(obj)
    obj:SetAttribute("Swingrate", 0.001)
    obj:SetAttribute("LungeRate", 0.001)
    obj:SetAttribute("Firerate", 0.001)
    obj:SetAttribute("Throwrate", 0.001)
    obj:SetAttribute("OffhandSwingRate", 0.01)
    obj:SetAttribute("ChargeTime", 0.01)
    obj:SetAttribute("Cooldown", 0.01)
    obj:SetAttribute("ThrowCooldown", 0.01)
    obj:SetAttribute("KunaiCooldown", 0.1)
end
local char = game.Players.LocalPlayer.Character
local bp = game.Players.LocalPlayer.Backpack
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("CI:RA", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("")
Section:NewButton("Hitbox Extender", "ButtonInfo", function()
    game:GetService('RunService').RenderStepped:connect(function()
        for _,npc in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            pcall(function()
                npc.Head.Size = Vector3.new(5,5,5)
                npc.Head.Transparency = 0.8
                npc.Head.Color = Color3.new(144,238,144)
                npc.Head.Material = "Neon"
                npc.Head.CanCollide = false
            end)
        end
    end)
end)
Section:NewButton("Parry hitbox", "skill issue?", function()
    local a = game.Players.LocalPlayer.Character.Hitboxes:FindFirstChild("PHitbox")
    hl = Instance.new("Highlight", a)
    a.Size = Vector3.new(10, 3, 10)
    a.Transparency = 0
end)
Section:NewButton("Modify weapon", "", function()
    pcall(function()
        for _,a in pairs(bp:GetChildren()) do
            setData(a)
        end
        for _,b in pairs(char:GetChildren()) do
            if b:IsA("Tool") then 
                setData(b) 
            end
        end
    end)
end)
local Tab = Window:NewTab("Visual")
local Section = Tab:NewSection("Enemy")
Section:NewButton("ESP", "", function()
    spawn(function()
        game.Workspace.Enemies.ChildAdded:Connect(function(v)
            createMarker(v)
        end)
    end)
end)
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("")
Section:NewButton("Flyjump", "", function()
    game:GetService("UserInputService").JumpRequest:Connect(function()
		game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
    end)
end)
local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Secrets accessory")
Section:NewButton("#1 [ Sandbox ]", "", function()
    for _,v in pairs(game:GetService("Workspace").Maps.Map.Secrets:GetChildren()) do
        local hl = Instance.new("Highlight", v)
    end
end)
Section:NewButton("#2 [ Lobby, chimmey ]", "", function()
    local map = game.Workspace.Map or game.Workspace.Maps
    local h2 = Instance.new("Highlight", map.noob)
end)
