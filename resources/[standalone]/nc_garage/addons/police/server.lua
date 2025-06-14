-- ตัวแปร nc_garage จะมีค่าเมื่อ Script Verify สำเร็จ โดยจะมี Function ให้ใช้เหมือน Export Function

CreateThread(function()
	while nc_garage == nil do Wait(100) end
	if not nc_garage then return end

	local PoliceImpoundVehicle = function(playerId, plate)
		local xPlayer = ESX.GetPlayerFromId(playerId)
		if not xPlayer then return end

		if xPlayer.job.name ~= 'police' then return end

		nc_garage.StoreVehicle(plate, 'police_block')
	end
	RegisterNetEvent('nc_garage:policeImpoundVehicle', function(plate)
		local playerId = tonumber(source)
		if not playerId then return end

		PoliceImpoundVehicle(playerId, plate)
	end)

	local PolicePoundVehicle = function(playerId, plate, coords, heading)
		local xPlayer = ESX.GetPlayerFromId(playerId)
		if not xPlayer then return end

		if xPlayer.job.name ~= 'police' then return end

		MySQL.prepare('SELECT `target` FROM `owned_vehicles` WHERE `plate` = ?', { plate }, function(target)
			if target == 'police_block' then
				nc_garage.SpawnVehicle(playerId, plate, coords, heading)
			end
		end)
	end
	RegisterNetEvent('nc_garage:policePoundVehicle', function(plate, coords, heading)
		local playerId = tonumber(source)
		if not playerId then return end

		PolicePoundVehicle(playerId, plate, coords, heading)
	end)

	exports('PoliceImpoundVehicle', PoliceImpoundVehicle)
	exports('PolicePoundVehicle', PolicePoundVehicle)
end)