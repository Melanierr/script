local plr = game:GetService("Players").LocalPlayer
local userid = plr.UserId
for _, slot in ipairs(game:GetService("Workspace").plots:GetChildren()) do 
    if slot:GetAttribute("Occupied") == userid then
        currentSlot = slot 
        print("This slot is owned by local player")
    end
end
local char = plr.Character
local hrp = char.HumanoidRootPart
local oldpos = hrp.CFrame
local cubelist = {"Luck Cube", "Fortune Cube", "Speed Cube", "Haste Cube", "Wealth Cube", "Golden Cube", "Pastel Cube", "Inferno Cube", "Glitch Cube", "Technosphere", "Spore Blossom" }
for _, ob in ipairs(game:GetService("Workspace"):GetChildren()) do
    if table.find(cubelist, ob.Name) then 
        hrp.CFrame = ob.Hitbox.CFrame
        wait(.3)
        hrp.CFrame = oldpos
    end
end
game:GetService("Workspace").ChildAdded:Connect(function(obj)
    if table.find(cubelist, obj.Name) then
        hrp.CFrame = ob.Hitbox.CFrame
        wait(.3)
        hrp.CFrame = oldpos
    end
end)
