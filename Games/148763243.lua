function badgesS()
    for i,v in ipairs(workspace:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Badges")

S1:NewButton("Collect", "Collect all available badges", function()
    badgesS()
end)
