function slimeS()
    for i,v in ipairs(workspace:GetDescendants()) do
        if v.Name == "Slime" and v.Parent and v.Border.MiddlePartBorder.HatAttach_Slime then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Border.MiddlePartBorder.HatAttach_Slime, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Border.MiddlePartBorder.HatAttach_Slime, 1)
        end
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Collected!";
        Text = "Made by Foreverekk.#0007";
        Duration = 60;
    })
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Slime Morphs")

S1:NewButton("Collect", "Collect all available slime morphs", function()
    slimeS()
end)
