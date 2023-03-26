local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera
local walking = false
local UserInputService = game:GetService("UserInputService")

toggleNoclip = function()
	if walking == false then
		walking = true
        character:WaitForChild("HumanoidRootPart").Anchored = true
        character:WaitForChild("HumanoidRootPart").CanCollide = false
		camera.CFrame = character:WaitForChild("HumanoidRootPart").CFrame
		camera.CameraType = "Custom"
	else
		walking = false
        character:WaitForChild("HumanoidRootPart").Anchored = false
        character:WaitForChild("HumanoidRootPart").CanCollide = true
		camera.CFrame = character:WaitForChild("HumanoidRootPart").CFrame
		camera.CameraType = "Follow"
	end
end

local function Fly()
    if UserInputService:IsKeyDown(Enum.KeyCode.W) and walking == true then
        camera.CFrame = camera.CFrame + camera.CFrame.lookVector * 10
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0, 0, 1)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.S) and walking == true then
        camera.CFrame = camera.CFrame - camera.CFrame.lookVector * 10
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0, 0, -1)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.A) and walking == true then
        camera.CFrame = camera.CFrame * CFrame.new(0, 0, 10)
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(-1, 0, 0)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.D) and walking == true then
        camera.CFrame = camera.CFrame * CFrame.new(0, 0, -10)
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(1, 0, 0)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.Space) and walking == true then
        camera.CFrame = camera.CFrame * CFrame.new(0, 10, 0)
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0, 1, 0)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) and walking == true then
        camera.CFrame = camera.CFrame * CFrame.new(0, -10, 0)
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0, -1, 0)
    end
end

while walking == true do
	Fly()
	wait(0.01)
end
