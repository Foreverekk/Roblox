function memesS()
    for i,v in ipairs(workspace.Pals:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.collectionScript then
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
local S1 = T1:NewSection("Memes")

S1:NewButton("Collect", "Collect all available memes", function()
    memesS()
end)
--