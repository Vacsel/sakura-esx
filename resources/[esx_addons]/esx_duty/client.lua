ESX = nil
local PlayerLoad = false
local PlayerDuty_Time = 0
local data = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
    while ESX.GetPlayerData().job == nil do Citizen.Wait(100) end

    ESX.PlayerData = ESX.GetPlayerData()
    for _, v in pairs(Config.Duty) do 
        data[v.Onduty] = true
    end 
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
    TriggerEvent('esx_duty:load')
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    Citizen.Wait(200)
    TriggerServerEvent('esx_duty:load')
end)

-- Citizen.CreateThread(function()
--     while true do
--         Citizen.Wait(60000)
--         if data[ESX.PlayerData.job.name] then
--             TriggerServerEvent('esx_duty:save')
--         end
--     end
-- end)

Citizen.CreateThread(function()
    while true do 
        local Ped = PlayerPedId()
        local Coords = GetEntityCoords(Ped)
        local InMark = false

        for _, v in pairs(Config.Duty) do
            local distance = #(Coords - v.Position)
            if distance < 20.0 then 
                InMark = true 
                DrawMarker(v.Marker.Id, v.Position, 0, 0, 0, 0, 0, 0, 1.7, 1.7, 1.7, 255, 179, 204, 165, 0, 0, 0, 0)
                if distance < 1.5 then 
                    ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to ~g~enter~s~/~r~exit~s~ duty')
                    if IsControlJustReleased(0, 38) then
                        local meta = ESX.PlayerData.metadata or {}
                        local backup = meta.duty_backup
                        local allow = ESX.PlayerData.job.name == v.Onduty
                        if not allow and ESX.PlayerData.job.name == v.Offduty and type(backup) == 'table' and backup.job == v.Onduty then
                            allow = true
                        end
                        if allow then
                            TriggerServerEvent('esx_duty:toggleduty', v)
                        end
                    end
                end
            end 
        end

        if not InMark then 
            Citizen.Wait(500)
        else
            Citizen.Wait(0)
        end
    end     
end)
