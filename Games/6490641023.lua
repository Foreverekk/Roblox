function stagesS()
    num = game.Players.LocalPlayer.leaderstats.Stage.Value + 1
    if workspace.Stages:FindFirstChild(tostring(num)) then
        firetouchinterest(workspace.Stages:FindFirstChild(tostring(num)).Spawn, game.Players.LocalPlayer.Character.PrimaryPart, 0)
        firetouchinterest(workspace.Stages:FindFirstChild(tostring(num)).Spawn, game.Players.LocalPlayer.Character.PrimaryPart, 1)
    end
end

function prestigeS()
    num = game.Players.LocalPlayer.leaderstats.Stage.Value + 1
    if workspace.Stages:FindFirstChild(tostring(num)) then
        return
    else
        for i,v in ipairs(workspace:FindFirstChild("Play Now!"):GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
            end
        end
    end
end


local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local stages = nil
local prestige = nil

S1:NewToggle("Stages", "Autofarm stages", function(c)
    stages = c
    
    while stages and wait() do
        stagesS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not stages then return end
        stagesS()
    end)
end
end)

S1:NewToggle("Prestige", "Autofarm prestige", function(c)
    prestige = c
    
    while prestige and wait(1) do
        prestigeS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not prestige then return end
        prestigeS()
    end)
end
end)
