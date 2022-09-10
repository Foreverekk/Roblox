function moneyS()
    for i,v in ipairs(workspace.Chips:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.Name == "Chip" then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Autofarm")
local money = nil

S1:NewToggle("Money", "Autofarm money", function(c)
    money = c
    
    while money and wait(5) do
        moneyS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not money then return end
        moneyS()
    end)
end
end)
