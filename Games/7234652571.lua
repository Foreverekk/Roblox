function cratesS()
    for i,v in ipairs(workspace.CrateParent:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.Name == "CashCrate" then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Autofarm")
local crates = nil

S1:NewToggle("Crates", "Autofarm crates", function(c)
    crates = c
    
    while crates and wait(5) do
        cratesS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not crates then return end
        cratesS()
    end)
end
end)
