function slimeS()
    for i,v in ipairs(workspace:GetDescendants()) do
        if string.find(v.Name, "Slime") and v.Slime and v.Parent and v.Slime.Border.MiddlePartBorder.HatAttach_Slime then
            wait(0.3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Slime.Border.MiddlePartBorder.HatAttach_Slime.CFrame
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
