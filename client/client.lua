RegisterCommand("checktint", function()
    -- Trigger the NUI message to show the UI
    SendNUIMessage({
        type = "show"
    })

    -- Simulate checking process
    Citizen.Wait(3000)  -- Wait for 3 seconds (simulate checking process)

    -- Get the player's ped and position
    local playerPed = GetPlayerPed(-1)
    local playerPos = GetEntityCoords(playerPed, true)

    -- Find the closest vehicle
    local vehicle = GetClosestVehicle(playerPos.x, playerPos.y, playerPos.z, 5.0, 0, 71)

    if vehicle ~= 0 then
        -- Get the tint level
        local tintLevel = GetVehicleWindowTint(vehicle)
        local tintPercentage = ConvertTintLevelToPercentage(tintLevel)

        -- Update the UI with the tint percentage
        SendNUIMessage({
            type = "update",
            tint = tintPercentage
        })
    else
        -- Update the UI to show no vehicle found
        SendNUIMessage({
            type = "error",
            message = "No vehicle found"
        })
    end
end, false)

function ConvertTintLevelToPercentage(tintLevel)
    local tintPercentage = 0
    if tintLevel == 1 then
        tintPercentage = 75
    elseif tintLevel == 2 then
        tintPercentage = 50
    elseif tintLevel == 3 then
        tintPercentage = 35
    elseif tintLevel == 4 then
        tintPercentage = 20
    elseif tintLevel == 5 then
        tintPercentage = 5
    else
        tintPercentage = 0
    end
    return tintPercentage
end

function GetClosestVehicle(x, y, z, radius, modelHash, flags)
    local vehicle = nil
    local ped = GetPlayerPed(-1)
    local pos = vector3(x, y, z)
    local handle, veh = FindFirstVehicle()
    local success
    local r = radius or 10.0
    local closestDistance = r + 0.001
    repeat
        local vehPos = GetEntityCoords(veh)
        local distance = #(pos - vehPos)
        if distance < closestDistance then
            closestDistance = distance
            vehicle = veh
        end
        success, veh = FindNextVehicle(handle)
    until not success
    EndFindVehicle(handle)
    return vehicle
end
