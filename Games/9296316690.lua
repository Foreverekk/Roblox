function coinsS()
    wait(1)
    for i,v in ipairs(workspace.Coins:GetChildren()) do
        firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 0)
        firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 1)
    end
end

function milksS()
    for i,v in ipairs(workspace.Map.InteractingParts.Milks:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Collected!";
        Text = "Made by Foreverekk.#0007";
        Duration = 60;
    })
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local coins = nil
local S2 = T1:NewSection("Milks")

S1:NewToggle("Coins", "Autofarm coins", function(t)
    coins = t
    
    while coins do
        coinsS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not coins then return end
        coinsS()
    end)
end
end)

S2:NewButton("Collect", "Collect all available milks", function()
    milksS()
end)

