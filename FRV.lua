game.StarterGui:SetCore("SendNotification", {
    Title = game.Name.." loading..";
    Text = "Made by Foreverekk.#0007";
    Duration = 5;
})

loaded = false

if game.GameId == 5166670285 then-- Badge Walk (Reginald)
    loaded = true

    for i,v in ipairs(workspace:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.Name == "Platform" then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end

end

if game.GameId == 148763243 then-- Player Badges (ivyrebar)
    loaded = true
    
    for i,v in ipairs(workspace:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end

end

if game.GameId == 7896264844 then-- Find the Markers (markers epic memers)
    loaded = true
    
    for i,v in ipairs(workspace:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.Parent.Face then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position)
        end
    end

end

game.StarterGui:SetCore("SendNotification", {
    Title = "Script: "..loaded;
    Text = "Made by Foreverekk.#0007";
    Duration = math.huge;
    Button1 = "Ok"
    })