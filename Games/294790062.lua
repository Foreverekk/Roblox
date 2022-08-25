function pointsS()
    game:GetService("ReplicatedStorage").RemoteEvents.Gui.AddPoint:FireServer("thi&!44", false, false, false)
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Autofarm")
local points = nil
local S2 = T1:NewSection("Add")

S1:NewToggle("Points", "Autofarm points", function(c)
    points = c
    
    while points and wait() do
        pointsS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not points then return end
        pointsS()
    end)
end
end)

S2:NewToggle("Points (10)", "Add points", function(c)
    pointsS()
end)
