-- // Variables
local map = game:GetService("Workspace").MapGeometry
local instance = game:GetService("Workspace").InstancedGeometry
local plr = game:GetService("Players").LocalPlayer
local hitbox = instance.Hitboxes
local stats = plr.PlayerGui.MainGui.Stats
local interactable = instance.Interactables
local veggies = {"BrownMushroom", "Onion", "Rosemary", "Grain", "Potato", "Basil", "Lettuce", "Garlic", "Powerwort", "SoulShroom", "FieldFlower", "Fennel", "Nightshade"}
local enemies = {}
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Dark Soul", "Synapse")
local main = Window:NewTab("Main")
local visual = Window:NewTab("Visual")
local player = Window:NewTab("Player")
local msection = main:NewSection("")
local vsection = visual:NewSection("")
local psection = player:NewSection("")
for _,id in pairs(hitbox:GetChildren()) do
    if tostring(id.P.Value) == plr.Name then
        pid = id
        print("found player's id : ", pid)
    end
end

-- // Function
function createHBox(part, name)
    pcall(function()
        local a = Instance.new("BoxHandleAdornment")
        a.Name = name
        a.Parent = part
        a.Adornee = part
        a.AlwaysOnTop = true
        a.ZIndex = 0
        a.Size = Vector3.new(1,1,1)
        a.Transparency = 0
        a.Color = BrickColor.new("Lime green")
    end)
end
function createBG(part, name)
    local b = Instance.new("BillboardGui", part)
    local c = Instance.new("TextLabel", b)
    b.Name = "bgui"
    c.Name = "text"
    b.AlwaysOnTop = true
    b.MaxDistance = math.huge
    b.LightInfluence = 1
    b.StudsOffset = Vector3.new(0, 5, 0)
    b.Size = UDim2.new(0, 30, 0, 30)
    c.Text = name
    c.TextColor3 = Color3.fromRGB(255, 255, 255)
    c.BackgroundTransparency = 1
    c.TextScaled = false
    c.Size = UDim2.new(1.5, 0, 1.5, 0)
end
function removeESP()
    for _,remove in pairs(interactable:GetDescendants()) do
        if remove:IsA("BillboardGui") or remove:IsA("BoxHandleAdornment") then
            remove:Destroy()
            wait(.04)
        end
    end
    for _,removee in pairs(map.Objects:GetDescendants()) do
        if removee:IsA("BillboardGui") or removee:IsA("BoxHandleAdornment") then
            removee:Destroy()
            wait(.04)
        end
    end
end
-- //
msection:NewToggle("Bonsai", "", function(state)
    if state then
        pid.HumanoidAttributes:SetAttribute("AtBonsai", true)
    else
        pid.HumanoidAttributes:SetAttribute("AtBonsai", false)
    end
end)
msection:NewButton("Anti Combat Log", "", function()
    game:GetService('RunService').RenderStepped:connect(function()
        pid.HumanoidAttributes:SetAttribute("InCombat", false)
    end)
end)
msection:NewSlider("Attack Speed", "", 9, 1, function(atkspeed)
    stats:SetAttribute("AttackSpeed", atkspeed)
end)
msection:NewSlider("Agility [ In Combat ]", "", 500, 200, function(agl)
    stats:SetAttribute("Agility", agl)
end)
vsection:NewButton("Find chest", "", function()
    removeESP()
    for _,chest in pairs(map.Objects:GetChildren()) do
        pcall(function()
            if chest.Name == "Chest" then
                createHBox(chest, chest.Name)
                createBG(chest, chest.Name)
            end
        end)
    end
end)
vsection:NewButton("Find forageables", "", function()
    removeESP()
    for _,int in ipairs(interactable:GetDescendants()) do
        if table.find(veggies, int.Name) then
            createHBox(int, int.Name)
            createBG(int, int.Name)
        end
    end
end)
vsection:NewButton("Clear all esp", "", function()
    removeESP()
end)
vsection:NewButton("Remove loading screen", "", function()
    plr.PlayerGui.MainGui.Loading.Visible = false
end)
psection:NewSlider("Walkspeed [ broken ]", "", 500, 30, function(walkspeed)
    plr.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(changeWalkspeed(walkspeed))
end)
