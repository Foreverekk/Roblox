local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera
_G.Walking = false
local UserInputService = game:GetService("UserInputService")

while _G.Scripts do
    wait(0.01)
    if UserInputService:IsKeyDown(Enum.KeyCode.W) and _G.Walking == true then
        camera.CFrame = camera.CFrame + camera.CFrame.lookVector * 10
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0, 0, 1)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.S) and _G.Walking == true then
        camera.CFrame = camera.CFrame - camera.CFrame.lookVector * 10
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0, 0, -1)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.A) and _G.Walking == true then
        camera.CFrame = camera.CFrame * CFrame.new(0, 0, 10)
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(-1, 0, 0)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.D) and _G.Walking == true then
        camera.CFrame = camera.CFrame * CFrame.new(0, 0, -10)
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(1, 0, 0)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.Space) and _G.Walking == true then
        camera.CFrame = camera.CFrame * CFrame.new(0, 10, 0)
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0, 1, 0)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) and _G.Walking == true then
        camera.CFrame = camera.CFrame * CFrame.new(0, -10, 0)
        character:WaitForChild("HumanoidRootPart").CFrame = character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0, -1, 0)
    end
end
