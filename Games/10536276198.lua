function tokensS()
    for i,v in ipairs(workspace.Scriptable.Tokens:GetDescendants()) do
        if v.Parent and v.Parent.Name == "Token" then
            wait(0.1)
            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
        end
    end
    for i,v in ipairs(game.ReplicatedStorage:GetDescendants()) do
        if v.Parent and v.Parent.Name == "Token" then
            wait(0.1)
            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
        end
    end
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.SpawnLocation.Position)
    wait(5)
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local tokens = nil

S1:NewToggle("Tokens", "Autofarm tokens", function(t)
    tokens = t
    
    while tokens do
        tokensS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not tokens then return end
        tokensS()
    end)
end
end)
