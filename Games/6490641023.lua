function completeS()
    num = game.Players.LocalPlayer.leaderstats.Stage.Value + 1
    if workspace.Stages:FindFirstChild(tostring(num)) then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Stages:FindFirstChild(tostring(num)).Spawn.CFrame
    end
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local complete = nil

S1:NewToggle("Complete", "Autofarm stages", function(c)
    complete = c
    
    while complete and wait(0.1) do
        completeS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not complete then return end
        completeS()
    end)
end
end)
