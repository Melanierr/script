local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ByteNetReliable = ReplicatedStorage:WaitForChild("ByteNetReliable")
local UserInputService = game:GetService("UserInputService")

local holding = false
local firingTask = nil

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType ~= Enum.UserInputType.MouseButton2 then return end
    if holding then return end

    holding = true

    firingTask = task.spawn(function()
        while holding do
            ByteNetReliable:FireServer(buffer.fromstring("\034"))
            print("holding")
            task.wait(0.03)
        end
    end)
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType ~= Enum.UserInputType.MouseButton2 then return end
    holding = false
end)
