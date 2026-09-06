local entities = workspace.LiveEntities
local room = workspace.CurrentRooms
local lplr = game.Players.LocalPlayer
local notifysound = Instance.new("Sound")
local loot = {"GoldPile", "PaperPlane", "LaserPointer", "StardustPickup", "Pizza", "Bandage", "Lockpick", "Candle", "KeyObtain", "Smoothie", "Leftovers"}
local event = {"DronesStampede", "BashMoving", "AmbushMoving", "RushMoving", "Scribbles", "LeverForGate", "Alma", "Ransom"}
local entity = {"TellerEntity", "TellerRig"}

notifysound.SoundId = "rbxassetid://18432812022"
notifysound.Parent = workspace

local function announce(title, message)
	notifysound:Play()
    game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = message,
        Icon = "rbxassetid://2541869220",
        Duration = 3
    })
end

local function addESP(object)
    local newHighlight = Instance.new("Highlight")
	newHighlight.Parent = object
    newHighlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    newHighlight.FillColor = Color3.fromRGB(255, 255, 0) 
	newHighlight.OutlineColor = Color3.fromRGB(255, 0, 0)
    newHighlight.FillTransparency = 0.6
	newHighlight.OutlineTransparency = 0
    warn("created highlight")
end

local function scanRoom(targetRoom)
    for _, object in pairs(targetRoom:GetDescendants()) do
        if table.find(loot, object.Name) then
            addESP(object)
        end
    end
end

local roomAdded = room.ChildAdded:Connect(function(newRoom)
    scanRoom(newRoom)
    warn("room added")
end)


local entityAdded = workspace.ChildAdded:Connect(function(object)
    warn("detected " .. object.Name)
    if not object:IsA("Model") then return end
    if object.Name == "Drones" then
    	object:Destroy()
        return
    end
    if table.find(event, object.Name) then
        announce(object.Name, object.Name .. " has spawned.")
    end
end)

warn("script ran")
