local uis = game:GetService("UserInputService")
local plr = game:GetService("Players")
local lplr = plr.LocalPlayer

local function esp(obj)
    local esp = Instance.new("BoxHandleAdornment", obj)
    esp.Adornee = obj
    esp.Name = "##ss"
    esp.AlwaysOnTop = true
    esp.Color3 = Color3.fromRGB(255, 0, 0)
    esp.Transparency = 0.5
    esp.ZIndex = 0
    esp.Size = Vector3.new(1, 1, 1)
    warn("created")
end

local function delete()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v:IsA("BoxHandleAdornment") and v.Parent.Parent.Humanoid.Health == 0 then
            v:Destroy()
            warn("deleted")
        end
    end
end

uis.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.J then
        delete()
        local plrteam = lplr.Character.Parent
        for _,hitbox in pairs(game.Workspace:GetDescendants()) do
            if hitbox.Name == "HeadHitbox" and hitbox.Parent.Parent.Name ~=  plrteam.Name then
                local humanoid = hitbox.Parent.Humanoid
                if humanoid.Health > 0 and not hitbox:FindFirstChild("##ss") then
                    hitbox.Size = _G.headSize
                    hitbox.Transparency = 0.5
                    esp(hitbox)    
                end
            end
        end
    end
end)
