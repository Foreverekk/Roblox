function pouS()
    for i,v in ipairs(workspace.Pou:GetDescendants()) do
        if v.Name == "BadgeID" and v.Parent then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
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
local S1 = T1:NewSection("Pou")

S1:NewButton("Collect", "Collect all available pou", function()
    pouS()
end)

-- Codes:
--  Rainbow Pou: 2536124
--  Robux: 425891
--  Secret: 85644126
--  OOF Pou: 21
--  Robot: 181521520
--  Sun Pou: 125677
--