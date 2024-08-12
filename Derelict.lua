-- // Variables
local map = game:GetService("Workspace").MapGeometry
local instance = game:GetService("Workspace").InstancedGeometry
local plr = game:GetService("Players").LocalPlayer
local hitbox = instance.Hitboxes
local stats = plr.PlayerGui.MainGui.Stats
local interactable = instance.Interactables
local veggies = {"BrownMushroom", "Onion", "Rosemary", "Grain", "Potato", "Basil", "Lettuce", "Garlic", "Powerwort", "Soul Shroom", "Translucent Petal", "Fennel", "Nightshade"}
local enemies = {}
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Dark Soul ah game", "Synapse")
local main = Window:NewTab("Main")
local visual = Window:NewTab("Visual")
local msection = main:NewSection("")
local vsection = visual:NewSection("")
for _,id in pairs(hitbox:GetChildren()) do
    if tostring(id.P.Value) == plr.Name then
        pid = id
        print("found player's id : ", pid)
    end
end

-- // Function
function createHBox(part, name)
	local a = Instance.new("BoxHandleAdornment")
	a.Name = name
	a.Parent = part
	a.Adornee = part
	a.AlwaysOnTop = true
	a.ZIndex = 0
	a.Size = part.Size
	a.Transparency = 0
	a.Color = BrickColor.new("Lime green")
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
    c.Text = name:lower()
    c.TextColor3 = Color3.fromRGB(255, 255, 255)
    c.BackgroundTransparency = 1
    c.TextScaled = false
    c.Size = UDim2.new(1.5, 0, 1.5, 0)  
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
msection:NewButton("Anti Ragdoll", "", function()
	game:GetService('RunService').RenderStepped:connect(function()
    	pid.HumanoidAttributes:SetAttribute("IsRagdoll", false)
	end)
end)
msection:NewSlider("Attack Speed", "", 9, 1, function(atkspeed)
    stats:SetAttribute("AttackSpeed", atkspeed)
end)
msection:NewSlider("Agility [ In Combat ]", "", 500, 200, function(speed)
    stats:SetAttribute("Agility", speed)
end)
vsection:NewButton("Find chest", "", function()
    for _,chest in pairs(map.Objects:GetChildren()) do
		pcall(function()
			if chest.Name == "Chest" then
				createHBox(chest, chest.Name)
				createBG(chest, chest.Name)
			end
		end)
	end
end)
vsection:NewButton("Forage ESP", "ButtonInfo", function()
    for _,int in ipairs(interactable:GetDescendants()) do 
		pcall(function()
			if table.find(veggies, int.Name) and not int:IsA("Model") then
				createHBox(int, int.Name)
				createBG(int, int.Name)
			end
		end)
	end
end)
vsection:NewButton("Clear all esp", "", function()
	for _,esp in pairs(instance:GetDescendants()) do
		if esp:IsA("BillboardGui") or esp:IsA("BoxHandleAdornment") then
			esp:Destroy()
		end
	end
	for _,espp in pairs(map.Objects:GetDescendants()) do
		if espp:IsA("BillboardGui") or espp:IsA("BoxHandleAdornment") then
			espp:Destroy()
		end
	end
 end)
vsection:NewButton("Remove loading screen", "", function()
   plr.PlayerGui.MainGui.Loading.Visible = false
end)
