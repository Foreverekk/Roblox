local Window = Library:CreateWindow("FRV Hub V2")

local Global = Window:AddFolder("Global")
Global:AddLabel({ text = "      [Player]" })
Global:AddSlider({ text = "WalkSpeed", flag = "sliderWalkSpeed", value = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, min = 0, max = 500, float = 0.5, callback = function(a) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a end })
Global:AddSlider({ text = "JumpPower", flag = "sliderJumpPower", value = game.Players.LocalPlayer.Character.Humanoid.JumpPower, min = 0, max = 1000, float = 0.5, callback = function(a) game.Players.LocalPlayer.Character.Humanoid.JumpPower = a end })
Global:AddList({ text = "Camera Mode", flag = "listCameraMode", value = "Classic", values = {"Classic", "LockFirstPerson"}, callback = function(a)
    if a == "Classic" then
        game:GetService("Players")["LocalPlayer"].CameraMode = Enum.CameraMode.Classic
    elseif a == "LockFirstPerson" then
        game:GetService("Players")["LocalPlayer"].CameraMode = Enum.CameraMode.LockFirstPerson
    end
end })
Global:AddBox({ text = "Display Name", flag = "boxDisplayName", value = game.Players.LocalPlayer.DisplayName, callback = function(a)
    game.Players.LocalPlayer.DisplayName = a
end })

Global:AddLabel({ text = " " })

Global:AddLabel({ text = "      [Toggles]" })
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
Global:AddButton({ text = "Ragdoll (PlatformStand)", flag = "buttonPlatformStand", callback = function() 
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
Global:AddToggle({ text = "Neutral (Team)", flag = "toggleNeutral", state = false, callback = function(a) 
    if a == true then
        game:GetService("Players")["LocalPlayer"].Neutral = true
    else
        game:GetService("Players")["LocalPlayer"].Neutral = false
    end
    
end })
Global:AddToggle({ text = "AutoJump", flag = "toggleAutoJumpEnabled", state = false, callback = function(a) 
    if a == true then
        game:GetService("Players")["LocalPlayer"].AutoJumpEnabled = true
    else
        game:GetService("Players")["LocalPlayer"].AutoJumpEnabled = false
    end

end })
local me = game:GetService("Players")["LocalPlayer"].Character
Global:AddToggle({ text = "Headless", flag = "toggleHeadless", state = false, callback = function(a)
    headless = a
    while headless do
        if me:FindFirstChild("Head") and me:FindFirstChild("Humanoid") then
            me.Head.MeshId = "rbxassetid://6686307858" or nil
        end
        wait(0.5)
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
            if not headless then return end
    end)
end
end })

Global:AddLabel({ text = " " })

Global:AddLabel({ text = "      [Experimental]" })
Global:AddButton({ text = "Amogus", flag = "buttonAmogus", callback = function() 
    loadstring(game:HttpGet(mainRaw.."Scripts/Amogus.lua"))()
end })
Global:AddButton({ text = "AK-47", flag = "buttonAK47", callback = function() 
    loadstring(game:HttpGet(mainRaw.."Scripts/AK47.lua"))()
end })
Global:AddButton({ text = "Shotgun", flag = "buttonShotgun", callback = function() 
    loadstring(game:HttpGet(mainRaw.."Scripts/Shotgun.lua"))()
end })
Global:AddButton({ text = "Better FPS / Optimize", flag = "buttonFPS", callback = function() 
    loadstring(game:HttpGet(mainRaw.."Scripts/FPS.lua"))()
end })
Global:AddSlider({ text = "Hitbox Height", flag = "sliderHipHeight", value = game.Players.LocalPlayer.Character.Humanoid.HipHeight, min = 2.72, max = 100, float = 0.1, callback = function(a) game.Players.LocalPlayer.Character.Humanoid.HipHeight = a end })

Global:AddLabel({ text = " " })

Global:AddLabel({ text = "      [Misc]" })
Global:AddButton({ text = "ESP", flag = "buttonESP", callback = function() 
    loadstring(game:HttpGet(mainRaw.."Scripts/ESP.lua"))()
end })

local Settings = Window:AddFolder("Settings")

Settings:AddButton({ text = "Change Key", flag = "buttonChangeKey", callback = function()
    Library:Destroy()
    loadstring(game:HttpGet(mainRaw.."Key.lua"))()
    wait(0.5)
    loadstring(game:HttpGet(mainRaw.."UI-KeyChange.lua"))()
end })
Settings:AddButton({ text = "Refresh", flag = "buttonRefresh", callback = function()
    Library:Destroy()
    wait(0.5)
    loadstring(game:HttpGet(mainRaw.."Main.lua"))()
end })

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

Settings:AddLabel({ text = "      [Animations]" })
Settings:AddToggle({ text = "AutoExec", flag = "toggleAutoExec", state = autoExecAnim, callback = function(a) 
    if a == true then
        writefile("FRV/Settings/Animations/autoExec.txt", "true")
    else
        writefile("FRV/Settings/Animations/autoExec.txt", "false")
    end
    
end })
Settings:AddList({ text = "Run", flag = "listAnimRun", value = run, values = {"Default", "616163682"}, callback = function(a)
    Animate = game:GetService("Players")["LocalPlayer"].Character.Animate
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id="..a
    writefile("FRV/Settings/Animations/run.txt", "http://www.roblox.com/asset/?id="..a)
end })

Settings:AddLabel({ text = " " })

local ToggleUI = readfile("FRV/Settings/Bindings/Toggle UI.txt")
Settings:AddLabel({ text = "      [Bindings]" })
Settings:AddBind({ text = "Toggle UI", key = ToggleUI, callback = function() Library:Close() end })
Settings:AddLabel({ text = "[Saving] Change .txt file in" })
Settings:AddLabel({ text = "'../Settings/Bindings' folder" })

local Info = Window:AddFolder("Info")
Info:AddLabel({ text = "        [FRV Hub]" })
Info:AddButton({ text = "Version: "..HubVersion, flag = "buttonVersion", callback = function() setclipboard(HubVersion) end })
Info:AddButton({ text = "Key: ".._G.KeyInput, flag = "buttonVersion", callback = function() setclipboard(_G.KeyInput) end })

Info:AddLabel({ text = " " })

Info:AddLabel({ text = "        [Player]" })
Info:AddButton({ text = "Name: "..game.Players.LocalPlayer.Name, flag = "buttonCopy0", callback = function() setclipboard(game.Players.LocalPlayer.Name) end })
Info:AddButton({ text = "ID: "..game.Players.LocalPlayer.UserId, flag = "buttonCopy1", callback = function() setclipboard(game.Players.LocalPlayer.UserId) end })
Info:AddButton({ text = "Age: "..game.Players.LocalPlayer.AccountAge.." days", flag = "buttonCopy2", callback = function() setclipboard(game.Players.LocalPlayer.AccountAge.." days") end })

Info:AddLabel({ text = " " })

Info:AddLabel({ text = "        [Game]" })
Info:AddButton({ text = "Place Version: "..game.PlaceVersion, flag = "buttonCopy3", callback = function() setclipboard(game.PlaceVersion) end })
Info:AddButton({ text = "Place ID: "..game.PlaceId, flag = "buttonCopy4", callback = function() setclipboard(game.PlaceId) end })
Info:AddButton({ text = "Game ID: "..game.GameId, flag = "buttonCopy5", callback = function() setclipboard(game.GameId) end })
Info:AddButton({ text = game.JobId, flag = "buttonCopy6", callback = function() setclipboard(game.JobId) end })

local Premium = Window:AddFolder("Premium")
Premium:AddLabel({ text = "        [Click to copy]" })
Premium:AddButton({ text = "Discord.gg/RetmyBsNAV", flag = "buttonDiscord", callback = function() setclipboard("https://discord.gg/RetmyBsNAV") end })

local Credits = Window:AddFolder("Credits")
Credits:AddLabel({ text = "[Scripts] Foreverekk.#0007" })
Credits:AddLabel({ text = "[UI]     alixjaffar" })

Credits:AddLabel({ text = " " })

Window:AddButton({ text = "Close", flag = "buttonClose", callback = function()
    Library:Destroy()
end })

Library:Init()
 
wait(5)
print("Toggle is currently:", Library.flags["toggle"])
print("Second toggle is currently:", Library.flags["toggle1"])
