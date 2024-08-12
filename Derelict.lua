-- // Variables
local map = game:GetService("Workspace").MapGeometry
local instance = game:GetService("Workspace").InstancedGeometry
local plr = game:GetService("Players").LocalPlayer
local hitbox = instance.Hitboxes
local veggies = {"BrownMushroom", "Onion", "Rosemary", "Grain", "Potato", "Basil", "Lettuce"}
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
    b.StudsOffset = Vector3.new(0, 3, 0)
    b.Size = UDim2.new(0, 30, 0, 30)
    c.Text = name
    c.TextColor3 = Color3.fromRGB(85,255,255)
    c.BackgroundTransparency = 1
    c.TextScaled = true
    c.Size = UDim2.new(1, 0, 1, 0)  
end	
-- // 
msection:NewToggle("Bonsai", "", function(state)
    if state then
        pid.HumanoidAttributes:SetAttribute("AtBonsai", true)
    else
        pid.HumanoidAttributes:SetAttribute("AtBonsai", false)
    end
end)

vsection:NewButton("Chest ESP", "", function()
    for _,chest in pairs(map.Objects:GetChildren()) do
		if chest.Name == "Chest" then
			print("found chest")
			createHBox(chest, chest.Name)
			createBG(chest, chest.Name)
		end
	end
	map.Objects.ChildAdded:Connect(function(child)
		if child.Name == "Chest" then
			print("found chest")
			createHBox(child, child.Name)
			createBG(child, child.Name)
		end
	end)
end)
vsection:NewButton("Forage ESP", "ButtonInfo", function()
    print("Clicked")
end)
