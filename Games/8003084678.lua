function completeS()
    wait(0.1)
    num = game.Players.LocalPlayer.leaderstats.Stage.Value + 1
    if workspace.Stages:FindFirstChild(tostring(num)) then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Stages:FindFirstChild(tostring(num)).Spawn.CFrame
    end
end

function prestigeS()
    wait(0.1)
    num = game.Players.LocalPlayer.leaderstats.Stage.Value + 1
    if workspace.Stages:FindFirstChild(tostring(num)) then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Stages:FindFirstChild(tostring(num)).Spawn.CFrame
    else
        for i,v in ipairs(workspace:FindFirstChild("Restart Obby"):GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            end
        end
    end
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local complete = nil
local prestige = nil

S1:NewToggle("Complete", "Autofarm stages", function(t)
    complete = t
    
    while complete do
        completeS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not complete then return end
        completeS()
    end)
end
end)

S1:NewToggle("Complete & Prestige", "Autofarm stages & prestige", function(t)
    prestige = t
    
    while prestige do
        prestigeS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not prestige then return end
        prestigeS()
    end)
end
end)
--