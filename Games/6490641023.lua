function stagesS()
    num = game.Players.LocalPlayer.leaderstats.Stage.Value + 1
    if workspace.Stages:FindFirstChild(tostring(num)) then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Stages:FindFirstChild(tostring(num)).Spawn.CFrame
    end
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local stages = nil

S1:NewToggle("Stages", "Autofarm stages", function(c)
    stages = c
    
    while stages and wait(0.1) do
        stagesS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not stages then return end
        stagesS()
    end)
end
end)
