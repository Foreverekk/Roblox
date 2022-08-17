for i,v in ipairs(workspace.Badges:GetChildren()) do
    wait(0.2)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
 end
 