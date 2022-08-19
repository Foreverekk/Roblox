for i,v in ipairs(workspace.Pou:GetDescendants()) do
    if v.Name == "BadgeID" and v.Parent then
        wait(0.1)
        game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position)
    end
end

wait(0.2)
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.parts.SpawnLocation.Position)

-- Codes:
--  Rainbow Pou: 2536124
--  Robux: 425891
--  Secret: 85644126
--  OOF Pou: 21
--  Robot: 181521520
--  Sun Pou: 125677
