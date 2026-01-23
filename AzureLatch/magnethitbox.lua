getgenv().ballHitboxActive = not getgenv().ballHitboxActive
	local RunService = game:GetService("RunService")
	local function removeHitbox()
		if getgenv().ballHitbox then
			getgenv().ballHitbox:Destroy()
			getgenv().ballHitbox = nil
		end
	end
	local function stopLoop()
		if getgenv().ballHitboxLoop then
			getgenv().ballHitboxLoop:Disconnect()
			getgenv().ballHitboxLoop = nil
		end
	end

	if not getgenv().ballHitboxActive then
		stopLoop()
		removeHitbox()
		return
	end

	stopLoop()

	getgenv().ballHitboxLoop = RunService.Heartbeat:Connect(function()

		if not getgenv().ballHitboxActive then
			stopLoop()
			removeHitbox()
			return
		end

		local terrain = workspace:FindFirstChild("Terrain")
		local ball = terrain and terrain:FindFirstChild("Ball")

		if not ball or not ball:IsA("BasePart") then
			removeHitbox()
			return
		end

		if not getgenv().ballHitbox then
			local hitbox = Instance.new("Part")
			hitbox.Name = "BallMagnetHitbox"
			hitbox.Shape = Enum.PartType.Ball
			hitbox.Size = Vector3.new(25, 25, 25)
			hitbox.Material = Enum.Material.Neon
			hitbox.Color = Color3.fromRGB(15, 155, 155)
			hitbox.Transparency = 0.9
			hitbox.CanCollide = false
			hitbox.CanTouch = false
			hitbox.CanQuery = false
			hitbox.Anchored = false
			hitbox.Massless = true
			hitbox.CFrame = ball.CFrame
			hitbox.Parent = ball

			local weld = Instance.new("WeldConstraint")
			weld.Part0 = ball
			weld.Part1 = hitbox
			weld.Parent = hitbox

			getgenv().ballHitbox = hitbox
		end
	end)
