function bucksS()
    game:GetService("ReplicatedStorage").Remotes.Money:FireServer()
end

function parentS()
    game:GetService("ReplicatedStorage").Remotes.ChangeTeams:InvokeServer("Parent")
end

function teenS()
    game:GetService("ReplicatedStorage").Remotes.ChangeTeams:InvokeServer("Teen")
end

function kidS()
    game:GetService("ReplicatedStorage").Remotes.ChangeTeams:InvokeServer("Kid")
end

function babyS()
    game:GetService("ReplicatedStorage").Remotes.ChangeTeams:InvokeServer("Baby")
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local bucks = nil
local S2 = T1:NewSection("Add")
local S3 = T1:NewSection("Change Team")

S1:NewToggle("Bucks", "Autofarm bucks", function(c)
    bucks = c
    
    while bucks and wait(0.1) do
        bucksS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not bucks then return end
        bucksS()
    end)
end
end)

S2:NewButton("Bucks (10)", "Add bucks", function()
    bucksS()
end)

S3:NewButton("Parent", "Change team", function()
    parentS()
end)

S3:NewButton("Teen", "Change team", function()
    teenS()
end)

S3:NewButton("Kid", "Change team", function()
    kidS()
end)

S3:NewButton("Baby", "Change team", function()
    babyS()
end)
