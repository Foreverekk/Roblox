local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Teleport")
local S2 = T1:NewSection("Misc")
local tpPlaces = { "Plot", "Shop", "Mine", "Ore Sellary", "Utility Shop", "zimo_2 NPC", "Astro_NotFound NPC" }
local toolcooldown = nil

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("Teleport")
local tpMethod = "Teleport"
local tpMethods = { "Teleport", "Tween" }

function toolcooldownS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-toolcooldown.lua"))()
end

function unmuteS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-unmute.lua"))()
end

function blacklistbypassS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-blacklistbypass.lua"))()
end

S1:NewDropdown("Teleport to", "Choose place", tpPlaces, function(c)
    if c == "Plot" then
        for i, v in ipairs(game:GetService("Workspace").Plots:GetDescendants()) do
            if v.Name == "Owner" and v.Parent and v.ClassName == "ObjectValue" then
                if v.Value and tostring(v.Value) == game:GetService("Players")["LocalPlayer"].Name then
                    if v.Parent.Base then
                        if tpMethod == "Teleport" then
                            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Base.Position)
                        end
                        if tpMethod == "Tween" then
                            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
                            local Tween1 = nil
                            Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(v.Parent.Base.Position)})
                            Tween1:Play()
                            Tween1.Completed:Wait()
                        end
                    end
                end
            end
        end
    end
    if c == "Shop" then
        if tpMethod == "Teleport" then
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(-1034.79, 3.85, -612.201)
        end
        if tpMethod == "Tween" then
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            local Tween1 = nil
            Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1034.79, 3.85, -612.201)})
            Tween1:Play()
            Tween1.Completed:Wait()
        end
    end
    if c == "Mine" then
        if tpMethod == "Teleport" then
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(-1136.86, 3.75, -571.538)
        end
        if tpMethod == "Tween" then
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            local Tween1 = nil
            Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1136.86, 3.75, -571.538)})
            Tween1:Play()
            Tween1.Completed:Wait()
        end
    end
    if c == "Ore Sellary" then
        if tpMethod == "Teleport" then
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(-468.012, 5.75, -76.7486)
        end
        if tpMethod == "Tween" then
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            local Tween1 = nil
            Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-468.012, 5.75, -76.7486)})
            Tween1:Play()
            Tween1.Completed:Wait()
        end
    end
    if c == "Utility Shop" then
        if tpMethod == "Teleport" then
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(-501.079, 5.75, -0.231632)
        end
        if tpMethod == "Tween" then
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            local Tween1 = nil
            Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-501.079, 5.75, -0.231632)})
            Tween1:Play()
            Tween1.Completed:Wait()
        end
    end
    if c == "zimo_2 NPC" then
        if tpMethod == "Teleport" then
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(-1027.59, 3.75, -591.51)
        end
        if tpMethod == "Tween" then
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            local Tween1 = nil
            Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1027.59, 3.75, -591.51)})
            Tween1:Play()
            Tween1.Completed:Wait()
        end
    end
    if c == "Astro_NotFound NPC" then
        if tpMethod == "Teleport" then
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(-1024.21, 4.25, -609.308)
        end
        if tpMethod == "Tween" then
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            local Tween1 = nil
            Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1024.21, 4.25, -609.308)})
            Tween1:Play()
            Tween1.Completed:Wait()
        end
    end
end)

S2:NewSlider("Tools Damage", "Sets the custom damage", 1000, 5, function(c)
    for i, v in ipairs(game:GetService("Players")["LocalPlayer"]:GetDescendants()) do
        if v.Parent and v.Name == "Damage" and v.ClassName == "NumberValue" then
            v.Value = c
        end
    end
end)

S2:NewToggle("Disable Cooldown (Tool)", "Will try to disable cooldown", function(c)
    toolcooldown = c
    
    while toolcooldown and wait(0.1) do
        toolcooldownS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not toolcooldown then return end
    end)
end
end)

S2:NewButton("Unmute", "If you are muted", function()
    unmuteS()
end)

S2:NewButton("Blacklist Bypass", "If you need it", function()
    blacklistbypassS()
end)

if _G.KeyInput == _G.KeyP then
    S1_2:NewDropdown("Select method", "Choose the method we will use", tpMethods, function(c)
        tpMethod = c
    end)
else
    S1_2:NewDropdown("Premium", "You need a premium for this", tpMethods, function(c)
        tpMethod = tpMethod
    end)
end
