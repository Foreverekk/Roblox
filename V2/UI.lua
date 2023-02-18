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
--[[
Global:AddToggle({ text = "Headless", flag = "toggleHeadless", state = false, callback = function(a)
    loadstring(game:HttpGet(mainRaw.."Scripts/Headless.lua"))()
    while a do
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
            loadstring(game:HttpGet(mainRaw.."Scripts/Headless.lua"))()
        if not a then return end
    end)

end })
--]]

Global:AddLabel({ text = " " })

Global:AddLabel({ text = "      [Experimental]" })
Global:AddButton({ text = "Amogus", flag = "buttonAmogus", callback = function() 
    loadstring(game:HttpGet(mainRaw.."Scripts/Amogus.lua"))()
end })
Global:AddButton({ text = "AK-47", flag = "buttonAK47", callback = function() 
    loadstring(game:HttpGet("https://pastebin.com/raw/0hn40Zbc"))()
end })
Global:AddButton({ text = "Shotgun", flag = "buttonShotgun", callback = function() 
    loadstring(game:HttpGet("https://pastebin.com/raw/pLdGH4h7"))()
end })
Global:AddButton({ text = "Better FPS / Optimize", flag = "buttonFPS", callback = function() 
    loadstring(game:HttpGet(mainRaw.."Scripts/FPS.lua"))()
end })
Global:AddSlider({ text = "Hitbox Height", flag = "sliderHipHeight", value = game.Players.LocalPlayer.Character.Humanoid.HipHeight, min = 2.72, max = 100, float = 0.1, callback = function(a) game.Players.LocalPlayer.Character.Humanoid.HipHeight = a end })

local Settings = Window:AddFolder("Settings")
Settings:AddLabel({ text = "      [Bindings]" })
Settings:AddBind({ text = "Bind", flag = "bind", key = "MouseButton1", callback = function() print("pressed") end }) -- key can also be Enum.UserInputType.MouseButton1, instead of the name/string
Settings:AddBind({ text = "Bind", flag = "bind", hold = true, key = "E" , callback = function(a) if a then print("let go") else print("holding") end end })
Settings:AddBind({ text = "Toggle UI", key = "PageUp", callback = function() Library:Close() end })

local Info = Window:AddFolder("Info")
Info:AddLabel({ text = "        [Player]" })
Info:AddButton({ text = "Name: "..game.Players.LocalPlayer.Name, flag = "buttonCopy0", callback = function() setclipboard(game.Players.LocalPlayer.Name) end })
Info:AddButton({ text = "ID: "..game.Players.LocalPlayer.UserId, flag = "buttonCopy1", callback = function() setclipboard(game.Players.LocalPlayer.UserId) end })
Info:AddButton({ text = "Age: "..game.Players.LocalPlayer.AccountAge.." days", flag = "buttonCopy2", callback = function() setclipboard(game.Players.LocalPlayer.AccountAge.." days") end })
Info:AddColor({ text = "Color", flag = "color", color = Color3.fromRGB(255, 65, 65), callback = function(a) print(a) end })
Info:AddColor({ text = "Color", flag = "color", color = {1, 0.2, 0.2}, callback = function(a) print(a) end })

local Premium = Window:AddFolder("Premium")

local Credits = Window:AddFolder("Credits")
Credits:AddLabel({ text = "[Scripts]    Foreverekk.#0007" })
Credits:AddLabel({ text = "[UI]     alixjaffar" })

Library:Init()
 
wait(5)
print("Toggle is currently:", Library.flags["toggle"])
print("Second toggle is currently:", Library.flags["toggle1"])
