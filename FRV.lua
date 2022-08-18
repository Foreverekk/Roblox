game.StarterGui:SetCore("SendNotification", {
    Title = game.Name;
    Text = "Made by Foreverekk.#0007";
    Duration = math.huge;
    Button1 = "Ok"
    })

if game.PlaceId == "5166670285" then-- Badge Walk (Reginald)

    for i,v in ipairs(workspace:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.Name == "Platform" then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end

end

if game.PlaceId == "148763243" then-- Player Badges (ivyrebar)
    
    for i,v in ipairs(workspace:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end

end

if game.PlaceId == "7896264844" then-- Find the Markers (markers epic memers)
    
    for i,v in ipairs(workspace:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.Parent.Face then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position)
        end
    end

end
