printInfoPlayer = function(Player)
    print("                  [ CORPA INDUSTRIES ]                  ")
    print("Player "..tostring(Player.Name))
    print("ID "..tostring(Player.UserId))
    print(" ")
    print("AccountAge: "..tostring(Player.AccountAge).. " days")
    print("Archivable: "..tostring(Player.Archivable))
    print("AutoJumpEnabled: "..tostring(Player.AutoJumpEnabled))
    print("CameraMaxZoomDistance: "..tostring(Player.CameraMaxZoomDistance))
    print("CameraMinZoomDistance: "..tostring(Player.CameraMinZoomDistance))
    print("CameraMode: "..tostring(Player.CameraMode))
    print("CanLoadCharacterAppearance"..tostring(Player.CanLoadCharacterAppearance))
    print("Character: "..tostring(Player.Character))
    print("CharacterAppearance: "..tostring(Player.CharacterAppearance))
    print("ChatMode: "..tostring(Player.ChatMode))
    print("ClassName: "..tostring(Player.ClassName))
    print("DataCost: "..tostring(Player.DataCost))
    print("DevCameraOcclusionMode: "..tostring(selected.DevCameraOcclusionMode))
    --print("DevComputerCameraMovementMode: "..tostring(Player.DevComputerCameraMovementMode))
    --print("DevComputerMovement: "..tostring(Player.DevComputerMovement))
    print("DevEnableMouseLock: "..tostring(Player.DevEnableMouseLock))
    print("DevTouchCameraMode: "..tostring(Player.DevTouchCameraMode))
    print("DevTouchMovementMode: "..tostring(Player.DevTouchMovementMode))
    print("DisplayName: "..tostring(Player.DisplayName))
    print("FollowUserId: "..tostring(Player.FollowUserId))
    print("Guest: "..tostring(Player.Guest))
    print("HealthDisplayDistance: "..tostring(Player.HealthDisplayDistance))
    --print("MaximumSimulationRange: "..tostring(Player.MaximumSimulationRange))
    print("MembershipType: "..tostring(Player.MembershipType))
    print("Name: "..tostring(Player.Name))
    print("NameDisplayDistance: "..tostring(Player.NameDisplayDistance))
    print("Neutral: "..tostring(Player.Neutral))
    print("OsPlatform: "..tostring(Player.OsPlatform))
    print("Parent: "..tostring(Player.Parent))
    print("ReplicationFocus: "..tostring(Player.ReplicationFocus))
    print("RespawnLocation: "..tostring(Player.RespawnLocation))
    print("RobloxLocked: "..tostring(Player.RobloxLocked))
    print("Team: "..tostring(Player.Team))
    print("TeamColor: "..tostring(Player.TeamColor))
    print("TeleportedIn: "..tostring(Player.TeleportedIn))
    print("UserId: "..tostring(Player.UserId))
    print("VRDevice: "..tostring(Player.VRDevice))
end

getDay = function()
    local daysoftheweek = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thrusday", "Friday", "Saturday" }
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
