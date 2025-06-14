-- ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
-- ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

Config.DatabaseLoadAllVehicles = function()
	return MySQL.query.await('SELECT `plate`, `owner`, JSON_VALUE(`vehicle`, "$.model") AS `model` FROM `owned_vehicles`')
end

Config.DatabaseGetOwnedVehicles = function(owner)
	return MySQL.query.await('SELECT `plate`, `vehicle`, `type`, `name`, `target` FROM `owned_vehicles` WHERE `owner` = ?', { owner })
end

Config.DatabaseGetOwnedVehicle = function(plate)
	return MySQL.prepare.await('SELECT `owner`, `vehicle`, `type`, `name`, `target` FROM `owned_vehicles` WHERE `plate` = ?', { plate })
end

Config.DatabaseSaveVehicle = function(plate, target, properties)
	MySQL.prepare('UPDATE `owned_vehicles` SET `stored` = ?, `target` = ?, `vehicle` = ? WHERE `plate` = ?', { 1, target, json.encode(properties), plate })
end

Config.DatabaseStoreVehicle = function(plate, target)
	MySQL.prepare('UPDATE `owned_vehicles` SET `stored` = ?, `target` = ? WHERE `plate` = ?', { 1, target, plate })
end

Config.DatabaseWithdrawVehicle = function(plate)
	MySQL.prepare('UPDATE `owned_vehicles` SET `stored` = ?, `target` = NULL WHERE `plate` = ?', { 0, plate })
end

Config.DatabaseSetVehicleName = function(plate, name)
	MySQL.prepare('UPDATE `owned_vehicles` SET `name` = ? WHERE `plate` = ?', { name, plate })
end

Config.DatabaseUpdateVehicleProperties = function(plate, properties)
	MySQL.prepare('UPDATE `owned_vehicles` SET `vehicle` = ? WHERE `plate` = ?', { json.encode(properties), plate })
end