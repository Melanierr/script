local plr = game.Players.LocalPlayer.Character
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Dogtags Farm - Made by Musc", "Synapse")
local Tab = Window:NewTab("Farm")
local Section = Tab:NewSection("Dogtags")
Section:NewButton("Autocheck for Dogtags", "", function()
    game.Workspace.ChildAdded:Connect(function(a) 
        if a.Name == "DogTag" then
            print("dogtag spawned")
            game.StarterGui:SetCore("SendNotification", {Title = 'WARNING';Text = "A dogtag has spawned.";Icon = "rbxassetid://2541869220";Duration = 5;})
        end
        wait()
    end)
end)
Section:NewButton("Teleport all Dogtags", "", function()
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "DogTag" then
            print("Found dogtag")
            v:PivotTo(plr:GetPivot())
        end
    end
end)
Section:NewButton("Autokill mutants [ SOLO ]", "", function()
    game:GetService('RunService').RenderStepped:connect(function()
        for _,v in pairs(game.Workspace:GetChildren()) do
            if v.Name == "mutant" or v.Name == "CowboyMutant" then
                pcall(function()
                v:FindFirstChild("Humanoid").Health = 0
                end)
            end
        end
        wait(5)
    end)
end)
Section:NewButton("IY", "THE GOAT", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
