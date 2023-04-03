printInfoPlayer = function(Player)
    print("                  [ CORPA INDUSTRIES ]                  ")
    if Player["Name"] then print("Player "..tostring(Player.Name)) end
    if Player["UserId"] then print("ID "..tostring(Player.UserId)) end
    print(" ")
    if Player["AccountAge"] then print("AccountAge: "..tostring(Player.AccountAge).. " days") end
    if Player["Archivable"] then print("Archivable: "..tostring(Player.Archivable)) end
    if Player["AutoJumpEnabled"] then print("AutoJumpEnabled: "..tostring(Player.AutoJumpEnabled)) end
    if Player["CameraMaxZoomDistance"] then print("CameraMaxZoomDistance: "..tostring(Player.CameraMaxZoomDistance)) end
    if Player["CameraMinZoomDistance"] then print("CameraMinZoomDistance: "..tostring(Player.CameraMinZoomDistance)) end
    if Player["CameraMode"] then print("CameraMode: "..tostring(Player.CameraMode)) end
    if Player["CanLoadCharacterAppearance"] then print("CanLoadCharacterAppearance"..tostring(Player.CanLoadCharacterAppearance)) end
    if Player["Character"] then print("Character: "..tostring(Player.Character)) end
    if Player["CharacterAppearance"] then print("CharacterAppearance: "..tostring(Player.CharacterAppearance)) end
    if Player["ChatMode"] then print("ChatMode: "..tostring(Player.ChatMode)) end
    if Player["ClassName"] then print("ClassName: "..tostring(Player.ClassName)) end
    if Player["DataCost"] then print("DataCost: "..tostring(Player.DataCost)) end
    if Player["DevCameraOcclusionMode"] then print("DevCameraOcclusionMode: "..tostring(Player.DevCameraOcclusionMode)) end
    -- if Player["DevComputerCameraMovementMode"] then print("DevComputerCameraMovementMode: "..tostring(Player.DevComputerCameraMovementMode)) end
    -- if Player["DevComputerMovement"] then print("DevComputerMovement: "..tostring(Player.DevComputerMovement)) end
    if Player["DevEnableMouseLock"] then print("DevEnableMouseLock: "..tostring(Player.DevEnableMouseLock)) end
    if Player["DevTouchCameraMode"] then print("DevTouchCameraMode: "..tostring(Player.DevTouchCameraMode)) end
    if Player["DevTouchMovementMode"] then print("DevTouchMovementMode: "..tostring(Player.DevTouchMovementMode)) end
    if Player["DisplayName"] then print("DisplayName: "..tostring(Player.DisplayName)) end
    if Player["FollowUserId"] then print("FollowUserId: "..tostring(Player.FollowUserId)) end
    if Player["Guest"] then print("Guest: "..tostring(Player.Guest)) end
    if Player["HealthDisplayDistance"] then print("HealthDisplayDistance: "..tostring(Player.HealthDisplayDistance)) end
    -- if Player["MaximumSimulationRange"] then print("MaximumSimulationRange: "..tostring(Player.MaximumSimulationRange)) end
    if Player["MembershipType"] then print("MembershipType: "..tostring(Player.MembershipType)) end
    if Player["Name"] then print("Name: "..tostring(Player.Name)) end
    if Player["NameDisplayDistance"] then print("NameDisplayDistance: "..tostring(Player.NameDisplayDistance)) end
    if Player["Neutral"] then print("Neutral: "..tostring(Player.Neutral)) end
    if Player["OsPlatform"] then print("OsPlatform: "..tostring(Player.OsPlatform)) end
    if Player["Parent"] then print("Parent: "..tostring(Player.Parent)) end
    if Player["ReplicationFocus"] then print("ReplicationFocus: "..tostring(Player.ReplicationFocus)) end
    if Player["RespawnLocation"] then print("RespawnLocation: "..tostring(Player.RespawnLocation)) end
    if Player["RobloxLocked"] then print("RobloxLocked: "..tostring(Player.RobloxLocked)) end
    if Player["Team"] then print("Team: "..tostring(Player.Team)) end
    if Player["TeamColor"] then print("TeamColor: "..tostring(Player.TeamColor)) end
    if Player["TeleportedIn"] then print("TeleportedIn: "..tostring(Player.TeleportedIn)) end
    if Player["UserId"] then print("UserId: "..tostring(Player.UserId)) end
    if Player["VRDevice"] then print("VRDevice: "..tostring(Player.VRDevice)) end
end

getDay = function()
    local daysoftheweek = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" }
    local day = daysoftheweek[os.date("*t").wday]

    return tostring(day)
end

headlessScript = function()
    if game:GetService("Players")["LocalPlayer"].Character:FindFirstChild("Head") and game:GetService("Players")["LocalPlayer"].Character:FindFirstChild("Humanoid") then
        game:GetService("Players")["LocalPlayer"].Character:FindFirstChild("Head").MeshId = "rbxassetid://6686307858" or nil
    end
end

NMespScript = function()
    loadstring(game:HttpGet(mainRaw.."Scripts/ESP.lua"))()
end

rejoinScript = function()
    local TeleportService = game:GetService("TeleportService")
    local LocalPlayer = game:GetService("Players")["LocalPlayer"]
    
    TeleportService:Teleport(game.PlaceId, LocalPlayer)    
end

amogusScript = function()
    loadstring(game:HttpGet(mainRaw.."Scripts/Amogus.lua"))()
end

ak47Script = function()
    loadstring(game:HttpGet(mainRaw.."Scripts/AK47.lua"))()
end

shotgunScript = function()
    loadstring(game:HttpGet(mainRaw.."Scripts/Shotgun.lua"))()
end

fpsScript = function()
    loadstring(game:HttpGet(mainRaw.."Scripts/FPS.lua"))()
end

rtxScript = function()
    loadstring(game:HttpGet(mainRaw.."Scripts/RTX.lua"))()
end

synapseScript = function()
    loadstring(game:HttpGet(mainRaw.."Scripts/Synapse.lua"))()
end

_G.GlobalLoaded = true
