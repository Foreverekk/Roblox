function impostorsS()
    for i,v in ipairs(workspace.Impostor:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.difficulty then
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
local S1 = T1:NewSection("Impostors")

S1:NewButton("Collect", "Collect all available impostors", function()
    impostorsS()
end)
