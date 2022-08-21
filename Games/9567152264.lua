function scpS()
    for i,v in ipairs(workspace.SCPs:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.ClassName == "Part" then
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

function scptpS()
    for i,v in ipairs(workspace.SCPs:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.ClassName == "Part" then
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
        end
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Collected!";
        Text = "Made by Foreverekk.#0007";
        Duration = 60;
    })
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("SCP")

S1:NewButton("Collect", "Collect all available SCP's", function()
    scpS()
end)

S1:NewButton("Collect (TP)", "Collect all available SCP's", function()
    scptpS()
end)
