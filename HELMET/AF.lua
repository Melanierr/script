local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local Map = game:GetService("Workspace").Map
local CRoom = Map.Geometry.CameraRoom
local Objective = Map.Objectives
local KC = CRoom.KeycardSpawns:FindFirstChild("Keycard")
local Spawn = Map.SquadSpawns.Part
char:MoveTo(KC.Handle.Position)
wait(.2)
fireproximityprompt(KC.Base.GrabPrompt)
char:MoveTo(Spawn.Position)
wait(2)
for _,e in pairs(Objective.Explosives:GetChildren()) do
	char:MoveTo(e.Prompt.Position)
	wait(.2)
	fireproximityprompt(e.Prompt.TemplatePrompt)
	wait(.1)
end
char:MoveTo(Spawn.Position)
wait(2)
for _,d in pairs(Objective.GarageDoor:GetChildren()) do
	if d:IsA("Part") and d.Name ~= "ExplosionEffect" then
		char:MoveTo(d.Position)
		wait(.2)
		fireproximityprompt(d.Prompt)
		wait(.1)
	end
end
wait(1)
char:MoveTo(Spawn.Position)
wait(1)
char:MoveTo(Objective.Radio.Handle.Position)
wait(.1)
fireproximityprompt(game:GetService("Workspace").Map.Objectives.Radio.Handle.ProximityPrompt)
wait(.5)
char:MoveTo(Objective.Radar.Hint.Position)
wait(1)
for _,es in pairs(Objective.Radar:GetChildren()) do
	if es.Name == "Explosive1" or es.Name == "Explosive2" then
		char:MoveTo(es.Handle.Position)
		wait(.2)
		fireproximityprompt(es:FindFirstChild("Handle").ProximityPrompt)
	end
end
wait(1)
char:MoveTo(Objective.EscapeZone.Position)
