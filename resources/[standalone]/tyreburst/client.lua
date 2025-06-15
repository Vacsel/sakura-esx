CreateThread(function()
    local handle, veh = FindFirstVehicle()
    if handle ~= -1 then
        local success
        repeat
            if DoesEntityExist(veh) then
                SetVehicleTyresCanBurst(veh, true)
            end
            success, veh = FindNextVehicle(handle)
        until not success
        EndFindVehicle(handle)
    end
end)

AddEventHandler('entityCreated', function(entity)
    if DoesEntityExist(entity) and IsEntityAVehicle(entity) then
        SetVehicleTyresCanBurst(entity, true)
    end
end)