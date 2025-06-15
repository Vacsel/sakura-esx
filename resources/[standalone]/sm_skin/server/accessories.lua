local script_name = GetCurrentResourceName()
RegisterNetEvent(script_name..':SaveAccessories', function(accessoryData, label, accessory_name)
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source) 

    pcall(function()

        MySQL.Async.execute('INSERT INTO meeta_accessory_inventory(owner, label, skin, type) VALUES (@owner, @label, @skin, @type)', {
            ['@owner'] = xPlayer.identifier,
            ['@label'] = label,
            ['@skin'] = json.encode(accessoryData),
            ['@type'] = 'player_' ..accessory_name
        }, function(rows)
            if rows then
    
                TriggerClientEvent("pNotify:SendNotification", _source, {
                    text = 'Save your Accessory Success!',
                    type = "success",
                    timeout = 3000,
                    layout = "bottomCenter",
                    queue = "global"
                })
    
            end
    
            pcall(function()
                exports.nc_inventory:AddItem(_source, {
                    name = label,
                    type = 'accessory',
                    accessoryData = accessoryData,
                    optionType = 'player_' ..accessory_name
                })
            end)
    
        end)

    end)

end)