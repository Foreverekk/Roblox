function pandasS()
    for i,v in ipairs(workspace.Collectibles:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.Name == "Hitbox" then
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

function hiddenS()
    for i,v in ipairs(game.ReplicatedStorage.Hidden:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.Name == "Hitbox" then
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
local S1 = T1:NewSection("Pandas")

S1:NewButton("Collect", "Collect all available pandas", function()
    pandasS()
end)

S1:NewButton("Collect Hidden", "Collect all available hidden pandas", function()
    hiddenS()
end)
--