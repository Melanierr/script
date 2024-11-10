local pbox = workspace.SpawnedPlayers
local plr = game:GetService("Players")
local lplr = plr.LocalPlayer
local plist = {}
function scanP()
    for _,plr in pairs(plr:GetPlayers()) do
        if plr.Name ~= lplr.Name and plr.Team ~= "Neutral" and plr.Team ~= lplr.Team then
            table.insert(plist, string.lower(plr.Name))
        end
    end
    return plist
end
function esp(obj)
    local hl = Instance.new("BoxHandleAdornment")
    hl.Parent = obj
    hl.Adornee = obj
    hl.Transparency = 0
    hl.AlwaysOnTop = true
    hl.ZIndex = 0
    hl.Size = obj.Size 
    hl.Color = BrickColor.new("Purple")
end
game:GetService("RunService").RenderStepped:Connect(function()
    scanP()
end)
for _,team in pairs(pbox:GetChildren()) do
    if table.find(plist, string.lower(team.Name)) and not team:FindFirstChildOfClass("BoxHandleAdorment") then 
        for _,es in pairs(team:GetDescendants()) do 
            if es:IsA("BasePart") then 
                esp(es)
            end
        end
    end
end
pbox.ChildAdded:Connect(function(child)
    if table.find(plist, string.lower(child.Name)) and not child:FindFirstChildOfClass("BoxHandleAdorment") then 
        for _,children in pairs(child:GetDescendants()) do 
            if children:IsA("BasePart") then 
                esp(children)
            end
        end
    end
end)
