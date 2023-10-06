local InfiniteJumpEnabled = true;
local char = game.Players.LocalPlayer.Character;
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))();
local Window = Library.CreateLib("KFC", "Sentinel");
local Tab = Window:NewTab("Main");
local Section = Tab:NewSection("Hi! Please read notice before using");
Section:NewButton("Inf Ammo [ bad ]", "", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/ia.lua", true))();
end);
Section:NewButton("Damage Multiplier [ x6 ]", "", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/dm.lua", true))();
end);
Section:NewButton("Hitbox Expander", "ButtonInfo", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/he.lua", true))();
end);
local Tabv = Window:NewTab("Players");
local char = game.Players.LocalPlayer.Character;
local Sectionv = Tabv:NewSection("Visual");
Sectionv:NewButton("Enemy ESP", "fixed!!", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/esp.lua", true))();
end);
Sectionv:NewButton("Auto remove shields", "ButtonInfo", function()
	workspace.ChildAdded:Connect(function(a)
		if (a.Name == "Shielder") then
			wait(2)
			a:FindFirstChild("Shield"):Destroy();
			print("shield removed");
		end
	end);
end);
Sectionv:NewButton("Landmine / Sabotuer mark", "", function()
	workspace.ChildAdded:Connect(function(b)
		if ((b.Name == "Sabotuer") or (b.Name == "Landmine")) then
			local mark = Instance.new("Highlight", b);
		end
	end);
end);
local Sectionc = Tabv:NewSection("Client modding");
Sectionc:NewButton("Gun Modding", "yes finally", function()
	game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):SetAttribute("Firerate", 750);
	game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):SetAttribute("BulletSpeed", 9000);
	game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):SetAttribute("Spread", 0);
	game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):SetAttribute("BurstCount", 100);
end);
Sectionc:NewButton("For Aerorig wannabes", "", function()
	game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):SetAttribute("FuelRegenInSeconds", 1);
	game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):SetAttribute("GrappleProjectileSpeed", 6000);
	game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):SetAttribute("FuelInSecond", math.huge);
	game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):SetAttribute("PlayerControlAcceleration", 5);
end);
Sectionc:NewButton("Jetpack", "", function()
	game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):SetAttribute("RefillRate", 999);
	game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):SetAttribute("JetCooldown", 0);
end);
Sectionc:NewButton("Fly Jump", "", function()
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfiniteJumpEnabled then
			game("Players").LocalPlayer.Character("Humanoid"):ChangeState("Jumping");
		end
	end);
end);
local Tabm = Window:NewTab("Misc [ notice ]");
local Section = Tabm:NewSection("World");
Section:NewToggle("Day/Night", "", function(state)
	if state then
		game:GetService("Lighting").TimeOfDay = 12;
	else
		game:GetService("Lighting").TimeOfDay = 24;
	end
end);
local Section = Tabm:NewSection("Extras");
Section:NewButton("IY Admin CMD", "", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/we-will-be-back-soon/main/IY.lua", true))();
end);
wait(5);
if notice == true then
loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/notice.lua", true))();
end
