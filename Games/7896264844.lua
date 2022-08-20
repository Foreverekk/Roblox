function markersS()
    for i,v in ipairs(workspace:GetDescendants()) do
        if string.find(v.Name, "Marker") then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Face, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Face, 1)
        end
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Collected!";
        Text = "Made by Foreverekk.#0007";
        Duration = 60;
    })
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Markers")

S1:NewButton("Collect", "Collect all available markers", function()
    markersS()
end)
