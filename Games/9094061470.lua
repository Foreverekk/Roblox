function piggyS()
    local function fireproximityprompt(Obj, Amount, Skip)
        if Obj.ClassName == "ProximityPrompt" then 
            Amount = Amount or 1
            local PromptTime = Obj.HoldDuration
            if Skip then 
                Obj.HoldDuration = 0
            end
            for i = 1, Amount do 
                Obj:InputHoldBegin()
                if not Skip then 
                    wait(Obj.HoldDuration)
                end
                Obj:InputHoldEnd()
            end
            Obj.HoldDuration = PromptTime
        else 
            error("userdata<ProximityPrompt> expected")
        end
    end
    for i,v in ipairs(workspace.Piggies:GetDescendants()) do
        if v.Name == "ProximityPrompt" and v.Parent and v.Parent.difficulty then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            wait(0.5)
            fireproximityprompt(v, 1, true)
        end
        wait(1)
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
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    piggyS()
end)

S1:NewButton("Collect EasterEggs", "Collect all available easter eggs", function()
    easterS()
end)
