function stickmenS()
    for i,v in ipairs(workspace.Stickmen:GetDescendants()) do
        if string.find(v.Name, "Stickman") then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 1)
        end
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Collected!";
        Text = "Made by Foreverekk.#0007";
        Duration = 60;
    })
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Stickmen")

S1:NewButton("Collect", "Collect all available stickmen", function()
    stickmenS()
end)
