-- LOADING

_G.GlobalLoaded = false
loadstring(game:HttpGet(mainRaw.."Scripts/Global.lua"))()
while not _G.GlobalLoaded do
    wait(0.05)
end
_G.Scripts = true


-- MAIN

local Window = Library:CreateWindow("FRV Hub V2")

local VirtualInputManager = game:GetService("VirtualInputManager")
Window:AddLabel({ text = "Have a great "..getDay().."!", TextScaled = true })

local Global = Window:AddFolder("Global")
Global:AddLabel({ text = "[Player]" })
Global:AddSlider({ text = "WalkSpeed", flag = "sliderWalkSpeed", value = game:GetService("Players")["LocalPlayer"].Character.Humanoid.WalkSpeed, min = 0, max = 500, float = 0.5, callback = function(a) game:GetService("Players")["LocalPlayer"].Character.Humanoid.WalkSpeed = a end })
Global:AddSlider({ text = "JumpPower", flag = "sliderJumpPower", value = game:GetService("Players")["LocalPlayer"].Character.Humanoid.JumpPower, min = 0, max = 1000, float = 0.5, callback = function(a) game:GetService("Players")["LocalPlayer"].Character.Humanoid.JumpPower = a end })
Global:AddList({ text = "Camera Mode", flag = "listCameraMode", value = "Classic", values = {"Classic", "LockFirstPerson"}, callback = function(a)
    if a == "Classic" then
        game:GetService("Players")["LocalPlayer"].CameraMode = Enum.CameraMode.Classic
    elseif a == "LockFirstPerson" then
        game:GetService("Players")["LocalPlayer"].CameraMode = Enum.CameraMode.LockFirstPerson
    end
end })
Global:AddBox({ text = "Display Name", flag = "boxDisplayName", value = game:GetService("Players")["LocalPlayer"].DisplayName, callback = function(a)
    game:GetService("Players")["LocalPlayer"].DisplayName = a
end })

Global:AddLabel({ text = " " })

Global:AddLabel({ text = "[Toggles]" })
Global:AddButton({ text = "AutoScaling", flag = "buttonAutomaticScalingEnabled", callback = function() 
    if game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutomaticScalingEnabled == true then
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutomaticScalingEnabled = false
    else
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutomaticScalingEnabled = true
    end

end })
Global:AddButton({ text = "AutoRotate", flag = "buttonAutoRotate", callback = function() 
    if game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutoRotate == true then
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutoRotate = false
    else
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutoRotate = true
    end

end })
Global:AddButton({ text = "Ragdoll", flag = "buttonPlatformStand", callback = function() 
    if game:GetService("Players")["LocalPlayer"].Character.Humanoid.PlatformStand == true then
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.PlatformStand = false
    else
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.PlatformStand = true
    end

end })
Global:AddButton({ text = "Sit", flag = "buttonSit", callback = function() 
    if game:GetService("Players")["LocalPlayer"].Character.Humanoid.Sit == true then
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.Sit = false
    else
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.Sit = true
    end

end })
Global:AddToggle({ text = "AutoClicker", flag = "toggleAutoClicker", state = false, callback = function(a)
    autoclicker = a
    while autoclicker do
        VirtualInputManager:SendMouseButtonEvent(0, 10, 0, true, game, 1)
        VirtualInputManager:SendMouseButtonEvent(0, 10, 0, false, game, 1)
        wait(0.05)
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
            if not autoclicker then return end
        end)
    end
end })
Global:AddToggle({ text = "AutoJump", flag = "toggleAutoJumpEnabled", state = game:GetService("Players")["LocalPlayer"].AutoJumpEnabled, callback = function(a) 
    if a == true then
        game:GetService("Players")["LocalPlayer"].AutoJumpEnabled = true
    else
        game:GetService("Players")["LocalPlayer"].AutoJumpEnabled = false
    end

end })
Global:AddToggle({ text = "Headless", flag = "toggleHeadless", state = false, callback = function(a)
    headless = a
    while headless do
        headlessScript()
        wait(0.5)
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
            if not headless then return end
        end)
    end
end })
Global:AddToggle({ text = "Neutral Team", flag = "toggleNeutral", state = game:GetService("Players")["LocalPlayer"].Neutral, callback = function(a) 
    if a == true then
        game:GetService("Players")["LocalPlayer"].Neutral = true
    else
        game:GetService("Players")["LocalPlayer"].Neutral = false
    end
    
end })

Global:AddLabel({ text = " " })

local autoclicker
Global:AddLabel({ text = "[Misc]" })
Global:AddButton({ text = "ESP", flag = "buttonESP", callback = function() 
    NMespScript()
end })
Global:AddButton({ text = "Rejoin", flag = "buttonRejoin", callback = function() 
    rejoinScript()
end })

local Experimental = Window:AddFolder("Experimental")
Experimental:AddButton({ text = "Amogus", flag = "buttonAmogus", callback = function() 
    amogusScript()
end })
Experimental:AddButton({ text = "AK-47 [FE]", flag = "buttonAK47", callback = function() 
    ak47Script()
end })
Experimental:AddButton({ text = "Shotgun [FE]", flag = "buttonShotgun", callback = function() 
    shotgunScript()
end })
Experimental:AddButton({ text = "FPS / Optimize", flag = "buttonFPS", callback = function() 
    fpsScript()
end })
Experimental:AddButton({ text = "RTX on", flag = "buttonRTX", callback = function() 
    rtxScript()
end })
Experimental:AddButton({ text = "Synapse X", flag = "buttonSynapse", callback = function() 
    synapseScript()
end })
Experimental:AddSlider({ text = "Hitbox Height", flag = "sliderHipHeight", value = game:GetService("Players")["LocalPlayer"].Character.Humanoid.HipHeight, min = 2.72, max = 100, float = 0.1, callback = function(a) game:GetService("Players")["LocalPlayer"].Character.Humanoid.HipHeight = a end })

local Settings = Window:AddFolder("Settings")
Settings:AddButton({ text = "Change Key", flag = "buttonChangeKey", callback = function()
    Library:Destroy()
    loadstring(game:HttpGet(mainRaw.."Key.lua"))()
    wait(0.5)
    loadstring(game:HttpGet(mainRaw.."UI-KeyChange.lua"))()
end })
Settings:AddButton({ text = "Reload", flag = "buttonReload", callback = function()
    _G.Scripts = false
    Library:Destroy()
    wait(0.5)
    loadstring(game:HttpGet(mainRaw.."Main.lua"))()
end })

Settings:AddLabel({ text = " " })

local validFolder, validFile
validFolder = isfolder("FRV")
if not validFolder then
    makefolder("FRV")
end
validFolder = isfolder("FRV/Settings")
if not validFolder then
    makefolder("FRV/Settings")
end
validFolder = isfolder("FRV/Settings/Bindings")
if not validFolder then
    makefolder("FRV/Settings/Bindings")
end
validFile = isfile("FRV/Settings/Bindings/Toggle UI.txt")
if not validFile then
    writefile("FRV/Settings/Bindings/Toggle UI.txt", "PageUp")
end
validFile = isfile("FRV/Settings/Bindings/ESP.txt")
if not validFile then
    writefile("FRV/Settings/Bindings/ESP.txt", "KeypadMultiply")
end
validFile = isfile("FRV/Settings/Bindings/AutoClicker.txt")
if not validFile then
    writefile("FRV/Settings/Bindings/AutoClicker.txt", "KeypadMinus")
end
validFile = isfile("FRV/Settings/Bindings/Noclip.txt")
if not validFile then
    writefile("FRV/Settings/Bindings/Noclip.txt", "KeypadPlus")
end
validFolder = isfolder("FRV/Settings/Animations")
if not validFolder then
    makefolder("FRV/Settings/Animations")
end
validFile = isfile("FRV/Settings/Animations/autoExec.txt")
if not validFile then
    writefile("FRV/Settings/Animations/autoExec.txt", "false")
end
validFile = isfile("FRV/Settings/Animations/run.txt")
if not validFile then
    writefile("FRV/Settings/Animations/run.txt", "None")
end

local Animate = game:GetService("Players")["LocalPlayer"].Character.Animate
local autoExecAnim = readfile("FRV/Settings/Animations/autoExec.txt")
if autoExecAnim == "true" then
    autoExecAnim = true
    local run = readfile("FRV/Settings/Animations/run.txt")
    Animate.run.RunAnim.AnimationId = run
else
    autoExecAnim = false
end

Settings:AddLabel({ text = "[Animations]" })
Settings:AddToggle({ text = "AutoExec", flag = "toggleAutoExec", state = autoExecAnim, callback = function(a)
    if a == true then
        writefile("FRV/Settings/Animations/autoExec.txt", "true")
        autoExecAnim = true
    else
        writefile("FRV/Settings/Animations/autoExec.txt", "false")
        autoExecAnim = false
    end
    
end })
Settings:AddList({ text = "Run", flag = "listAnimRun", value = run, values = {"Default", "616163682"}, callback = function(a)
    Animate = game:GetService("Players")["LocalPlayer"].Character.Animate
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id="..a
    writefile("FRV/Settings/Animations/run.txt", "http://www.roblox.com/asset/?id="..a)
end })

Settings:AddLabel({ text = " " })

local espHighlight, espDisplayName, espDisplayNameText
local toggleESP = false
local toggleAutoClicker = false
local toggleNoclip = false
local ToggleUI = readfile("FRV/Settings/Bindings/Toggle UI.txt")
local ToggleESP = readfile("FRV/Settings/Bindings/ESP.txt")
local ToggleAutoClicker = readfile("FRV/Settings/Bindings/AutoClicker.txt")
local ToggleNoclip = readfile("FRV/Settings/Bindings/Noclip.txt")
Settings:AddLabel({ text = "[Bindings]" })
Settings:AddBind({ text = "Toggle UI", key = ToggleUI, callback = function()
    if _G.Scripts then
        Library:Close()
    end
end })
Settings:AddBind({ text = "Simple ESP", key = ToggleESP, callback = function()
    toggleESP = not toggleESP
    if toggleESP and _G.Scripts then
        for _, player in ipairs(game:GetService("Players"):GetChildren()) do
            if player.Character then
                espHighlight = Instance.new("Highlight")
                espHighlight.Name = player.Name
                espHighlight.Parent = player.Character
                espHighlight.FillColor = Color3.new(0, 0, 0)
                espHighlight.OutlineColor = Color3.new(255, 0, 0)
                espHighlight.OutlineTransparency = 0
                espHighlight.FillTransparency = 0.5

                espDisplayName = Instance.new("BillboardGui")
                espDisplayName.Adornee = player.Character.Head
                espDisplayName.Name = "DisplayName"
                espDisplayName.Size = UDim2.new(3,0,1.5,0)
                espDisplayName.StudsOffset = Vector3.new(0,2,0)
                
                espDisplayNameText = Instance.new("TextLabel")
                espDisplayNameText.Text = player.Name
                espDisplayNameText.Font = "GothamBold"
                espDisplayNameText.TextSize = 12
                espDisplayNameText.TextColor3 = Color3.new(1,1,1)
                espDisplayNameText.BackgroundTransparency = 1
                espDisplayNameText.Size = UDim2.new(1,0,1,0)
                espDisplayNameText.Parent = espDisplayName
                espDisplayName.Parent = player.Character
            end
        end
    else
        for _, player in ipairs(game:GetService("Players"):GetChildren()) do
            if player.Character then
                espHighlight = player.Character:FindFirstChild(player.Name)
                espDisplayName = player.Character:FindFirstChild("DisplayName")
                if espHighlight then
                    espHighlight:Destroy()
                end
                if espDisplayName then
                    espDisplayName:Destroy()
                end
            end
        end
    end
end })
Settings:AddBind({ text = "AutoClicker", key = ToggleAutoClicker, callback = function()
    toggleAutoClicker = not toggleAutoClicker
    while toggleAutoClicker and _G.Scripts do
        VirtualInputManager:SendMouseButtonEvent(0, 10, 0, true, game, 1)
        VirtualInputManager:SendMouseButtonEvent(0, 10, 0, false, game, 1)
        wait(0.05)
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
            if not toggleAutoClicker or _G.Scripts then return end
        end)
    end
end })
Settings:AddBind({ text = "Noclip", key = ToggleNoclip, callback = function()
    loadstring(game:HttpGet(mainRaw.."Scripts/Noclip.lua"))()
    toggleNoclip = not toggleNoclip
    if toggleNoclip and _G.Scripts then
        if _G.Walking == false then
            _G.Walking = true
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").Anchored = true
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").CanCollide = false
            game:GetService("Workspace").CurrentCamera.CFrame = game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").CFrame
            game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
        else
            _G.Walking = false
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").Anchored = false
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").CanCollide = true
            game:GetService("Workspace").CurrentCamera.CFrame = game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").CFrame
            game:GetService("Workspace").CurrentCamera.CameraType = "Follow"
        end
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
            if not toggleNoclip or _G.Scripts then return end
        end)
    end
end })

Settings:AddLabel({ text = " " })

Settings:AddLabel({ text = "[Saving] Change .txt file in" })
Settings:AddLabel({ text = "'../Settings/Bindings' folder" })

local Info = Window:AddFolder("Info")
Info:AddLabel({ text = "[FRV Hub]" })
Info:AddButton({ text = "Version: "..HubVersion, flag = "buttonVersion", callback = function() setclipboard(HubVersion) end })
Info:AddButton({ text = "Key: ".._G.KeyInput, flag = "buttonVersion", callback = function() setclipboard(_G.KeyInput) end })

Info:AddLabel({ text = " " })

Info:AddLabel({ text = "[Web]" })
Info:AddButton({ text = "Discord", flag = "buttonDiscord", callback = function() setclipboard("https://discord.gg/RetmyBsNAV/") end })
Info:AddButton({ text = "Roblox Group", flag = "buttonRobloxGroup", callback = function() setclipboard("https://www.roblox.com/groups/15460868/Corpa/") end })
Info:AddButton({ text = "Badgers of Robloxia", flag = "buttonBadgersofRobloxia", callback = function() setclipboard("https://www.roblox.com/groups/5587275/Badgers-of-Robloxia/") end })
Info:AddLabel({ text = "(Click to copy)" })

Info:AddLabel({ text = " " })

Info:AddLabel({ text = "[Player]" })
Info:AddButton({ text = "Name: "..game.Players.LocalPlayer.Name, flag = "buttonCopy0", callback = function() setclipboard(game.Players.LocalPlayer.Name) end })
Info:AddButton({ text = "ID: "..game.Players.LocalPlayer.UserId, flag = "buttonCopy1", callback = function() setclipboard(game.Players.LocalPlayer.UserId) end })
Info:AddButton({ text = "Age: "..game.Players.LocalPlayer.AccountAge.." days", flag = "buttonCopy2", callback = function() setclipboard(game.Players.LocalPlayer.AccountAge.." days") end })

Info:AddLabel({ text = " " })

Info:AddLabel({ text = "[Game]" })
Info:AddButton({ text = "Place Version: "..game.PlaceVersion, flag = "buttonCopy3", callback = function() setclipboard(game.PlaceVersion) end })
Info:AddButton({ text = "Place ID: "..game.PlaceId, flag = "buttonCopy4", callback = function() setclipboard(game.PlaceId) end })
Info:AddButton({ text = "Game ID: "..game.GameId, flag = "buttonCopy5", callback = function() setclipboard(game.GameId) end })
Info:AddButton({ text = "Job ID: "..game.JobId, flag = "buttonCopy6", callback = function() setclipboard(game.JobId) end })

local Players = Window:AddFolder("Players")
local selected = game:GetService("Players")["LocalPlayer"]
local part = selected.Character:WaitForChild("HumanoidRootPart")
local where = part.Position
local players = {}
local watch, pos, spos, startPos
for i, v in ipairs(game:GetService("Players"):GetChildren()) do
    table.insert(players, v.Name)
end
local method = "Instant"

Players:AddLabel({ text = table.getn(players).." players" })
Players:AddLabel({ text = "Reloaded on "..os.date("%X") })

Players:AddLabel({ text = " " })

Players:AddList({ text = "Player", flag = "listTeleport", value = players[0], values = players, callback = function(a)
    if game:GetService("Players"):FindFirstChild(a) then
        selected = game:GetService("Players"):FindFirstChild(a)
        part = selected.Character:WaitForChild("HumanoidRootPart")
        where = part.Position
    end
end })
Players:AddToggle({ text = "Watch", flag = "toggleWatch", state = false, callback = function(a)
    watch = a
    if not watch then
        startPos = game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").CFrame
    end
    while watch and game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart") and selected.Character:FindFirstChild("HumanoidRootPart") do
        pos = game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").CFrame
        spos = selected.Character:FindFirstChild("HumanoidRootPart").Position
        if selected == game:GetService("Players")["LocalPlayer"] then return end
        if not watch then
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").CFrame = startPos
            return
        end
        game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"):PivotTo(CFrame.new(spos.X - 0.5, spos.Y - 1, spos.Z - 0.5))
        wait(0.08)
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
            if not watch then
                game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").CFrame = startPos
                return
            end
        end)
    end
    game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").CFrame = startPos
end })

Players:AddLabel({ text = " " })

Players:AddButton({ text = "Print Info", flag = "buttonPrintInfo", callback = function()
    printInfoPlayer(selected)
end })
Players:AddButton({ text = "Teleport", flag = "buttonTeleport", callback = function()
    part = selected.Character:WaitForChild("HumanoidRootPart")
    where = part.Position
    if method == "Instant" then
        game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(where.X, where.Y + 3, where.Z)
    elseif method == "FlyTo" then
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
        Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"), tweenInfo, { CFrame = CFrame.new(where.X, where.Y + 3, where.Z) })
        Tween1:Play()
        Tween1.Completed:Wait()
    end
end })
Players:AddList({ text = "Teleport (Method)", flag = "listMethod", value = "Instant", values = {"Instant", "FlyTo"}, callback = function(a)
    method = a
end })

local Premium = Window:AddFolder("Premium")
Premium:AddLabel({ text = "[Click to copy]" })
Premium:AddButton({ text = "Discord.gg/RetmyBsNAV", flag = "buttonDiscord", callback = function() setclipboard("https://discord.gg/RetmyBsNAV") end })

local Credits = Window:AddFolder("Credits")
Credits:AddLabel({ text = "[Scripts] Foreverekk.#0007" })
Credits:AddLabel({ text = "[UI]         alixjaffar" })

Credits:AddLabel({ text = " " })

Window:AddButton({ text = "Close", flag = "buttonClose", callback = function()
    _G.Scripts = false
    Library:Destroy()
end })

Library:Init()
 
wait(5)
print("Toggle is currently:", Library.flags["toggle"])
print("Second toggle is currently:", Library.flags["toggle1"])
