function piggyS()
    for i,v in ipairs(workspace.Piggies:GetDescendants()) do
        if v.Name == "ProximityPrompt" and v.Parent and v.Parent.difficulty then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
            fireproximityprompt(v)
        end
        wait(1.5)
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Collected!";
        Text = "Made by Foreverekk.#0007";
        Duration = 60;
    })
end


function easterS()
    for i,v in ipairs(workspace.EasterEggs:GetDescendants()) do
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
local S1 = T1:NewSection("Piggy Morphs")

S1:NewButton("Collect", "Collect all available piggy morphs", function()
    piggyS()
end)

S1:NewButton("Collect EasterEggs", "Collect all available easter eggs", function()
    easterS()
end)
