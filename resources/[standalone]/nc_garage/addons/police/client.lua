local PlayerData = nil

local poundCallback = {}

-- ตัวแปร nc_garage จะมีค่าเมื่อ Script Verify สำเร็จ โดยจะมี Function ให้ใช้เหมือน Export Function

CreateThread(function()
	while nc_garage == nil do Wait(100) end
	if not nc_garage then return end

	RegisterNetEvent('esx:setJob', function(job) PlayerData.job = job end)

	PlayerData = ESX.GetPlayerData()

	local PoliceImpoundVehicle = function(plate)
		if not plate then return end

		local jobName = PlayerData.job.name
		if jobName ~= 'police' then return end

		plate = Utils.Trim(plate)
		if plate == '' then return end

		TriggerServerEvent('nc_garage:policeImpoundVehicle', plate)
	end

	local PolicePoundVehicle = function(plate, coords, heading, cb)
		if not plate then return end

		local jobName = PlayerData.job.name
		if jobName ~= 'police' then return end

		plate = Utils.Trim(plate)
		if plate == '' then return end

		TriggerServerEvent('nc_garage:policePoundVehicle', plate, coords, heading)
		if cb then poundCallback[plate] = cb end
	end

	exports('PoliceImpoundVehicle', PoliceImpoundVehicle)
	exports('PolicePoundVehicle', PolicePoundVehicle)
end)

AddEventHandler('nc_garage:spawnedVehicle', function(vehicle, plate, properties)
	local cb = poundCallback[plate]
	if cb then cb(vehicle, properties) end
	poundCallback[plate] = nil
end)


-- exports.nc_garage:PoliceImpoundVehicle(plate)

-- exports.nc_garage:PolicePoundVehicle(plate, coords, heading, function(vehicle, properties)

-- end)