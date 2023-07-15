local plr = game:GetService("Players").LocalPlayer
local bp = plr.Backpack
local Humanoid = plr.Character.Humanoid
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("KFC Hub", "Sentinel")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("")
local tg = false

Section:NewToggle("AutoFarm Trophy", "wow!!111!!", function(state)
    if state then
        tg = true
        while tg == true do
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(0, 9e9, 0)
            wait(5)
        end
    else
        tg = false 
    end
end)
Section:NewButton("Quick Place", "Wow111!!!11!!!!!!", function()
local settings = {repeatamount = 10, exceptions = {"FallenOff", "Notify", "ShowIncome", "Storearning", "ShowWinGain", "RelayUpdate", "BuySkin", "BuyUpgrade", "UpdateStat", "ComepleteTutorial", "RelayUpgrades", "PopBaloon","ControlEvent" ,"SayMessageRequest", "BuyUpgrade"}}
local mt = getrawmetatable(game)
local old = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = function(uh, ...)
    local args = {...}
    local method = getnamecallmethod()
    for i,o in next, settings.exceptions do
        if uh.Name == o then
            return old(uh, ...)
        end
    end
    if method == "FireServer" or method == "InvokeServer" then
        for i = 1,settings.repeatamount do
            old(uh, ...)
        end
    end
    return old(uh, ...)
    end
    setreadonly(mt, true)
end)
Section:NewDropdown("Equip Item", "", {"Slap Hand", "Needle", "Jetpack"}, function(currentOption)
    if currentOption == "Slap Hand" then
        Humanoid:EquipTool(bp.SlapHand)
    end
    if currentOption == "Jetpack" then
        Humanoid:EquipTool(bp.Jetpack)
    end
    if currentOption == "Needle" then
        Humanoid:EquipTool(bp.Needle)
    end
end)
