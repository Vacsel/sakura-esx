ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'police', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'police', _U('alert_police'), true, true)
TriggerEvent('esx_society:registerSociety', 'police', 'Police', 'society_police', 'society_police', 'society_police', {type = 'public'})

ESX.RegisterServerCallback('esx_policejob:getVehicleFromPolice', function (source, cb)
	MySQL.Async.fetchAll('SELECT *, date_format(time, "%Y-%m-%d") AS time FROM owned_vehicles WHERE police = @police', {
		['@police'] =1
	}, function (result)

		local vehicles = {}

		for i=1, #result, 1 do
			
			table.insert(vehicles, {
				owner         = result[i].owner,
				plate = result[i].plate,
				vehicle     = result[i].vehicle,
				type = result[i].type,
				job     = result[i].job,
				stored      = result[i].stored,
				fourrieremecano     = result[i].fourrieremecano,
				vehiclename		  = result[i].vehiclename,
				buyer		  = result[i].buyer,
				properties		  = result[i].properties,
				police		  = result[i].police,
				police_by		  = result[i].police_by,
				time		  = result[i].time
			})
		end

		cb(vehicles)
	end)
end)

RegisterServerEvent('esx_policejob:deletecar')
AddEventHandler('esx_policejob:deletecar', function(vehicle)
	local car = NetworkGetEntityFromNetworkId(vehicle)
    DeleteEntity(car)
end)
RegisterServerEvent('esx_policejob:sv:vehicleunlock')
AddEventHandler('esx_policejob:sv:vehicleunlock', function(vehicle)
	TriggerClientEvent('esx_policejob:cl:vehicleunlock', -1, vehicle)
end)


RegisterServerEvent('esx_policejob:updateVehicleFromPolice')
AddEventHandler('esx_policejob:updateVehicleFromPolice', function(plate)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.execute('UPDATE owned_vehicles SET `police` = @police, `police_by` = @police_by, `time` = NOW() WHERE plate = @plate', {
		['@police'] = 1,
		['@plate'] = plate,
		['@police_by'] = xPlayer.name
	}, function(rowsChanged)
		if rowsChanged == 0 then
			print("ERROR Update setVehicleFromPolice")
		end
	end)
end)

RegisterServerEvent('esx_policejob:setVehicleFromPolice')
AddEventHandler('esx_policejob:setVehicleFromPolice', function(plate)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = @stored, `police` = @police, `police_by` = @police_by WHERE plate = @plate', {
		['@stored'] = false,
		['@police'] = 0,
		['@plate'] = plate,
		['@police_by'] = nil
	}, function(rowsChanged)
		if rowsChanged == 0 then
			print("ERROR Update setVehicleFromPolice")
		end
	end)
end)

RegisterServerEvent('on_non:RecivePound')
AddEventHandler('on_non:RecivePound', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('pound')

	if xItem.limit ~= -1 and xItem.count +1 > xItem.limit then
		TriggerClientEvent("pNotify:SendNotification",source,
		{text = " <center><b style ='color:yellow'>คุณมีใบพาวน์อยู่แล้ว",
		type = "alert", timeout = 5000, 
		layout = "topCenter"})	
	else
		xPlayer.addInventoryItem('pound', 1)
	end



	
end)

--[[
RegisterServerEvent('esx_policejob:confiscatePlayerItem')
AddEventHandler('esx_policejob:confiscatePlayerItem', function(target, itemType, itemName, amount)
	local _source = source
	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)

	-- if sourceXPlayer.job.name ~= 'police' then
	-- 	print(('esx_policejob: %s attempted to confiscate!'):format(xPlayer.identifier))
	-- 	return
	-- end
	
	if amount == nil then
		TriggerClientEvent("pNotify:SendNotification", _source, {
			text = '<strong class="red-text">ปริมาณที่ไม่ถูกต้อง</strong>',
			type = "error",
			timeout = 3000,
			layout = "bottomCenter",
			queue = "global"
		})
		return
	end

	if itemType == 'item_standard' then
		local targetItem = targetXPlayer.getInventoryItem(itemName)
		local sourceItem = sourceXPlayer.getInventoryItem(itemName)

		if targetItem.count > 0 then

			if targetItem.count < amount then

				TriggerClientEvent("pNotify:SendNotification", _source, {
					text = '<strong class="red-text">จำนวนที่ไม่ถูกต้อง</strong>',
					type = "error",
					timeout = 3000,
					layout = "bottomCenter",
					queue = "global"
				})

			else
				
				if sourceItem.limit ~= -1 and (sourceItem.count + amount) > sourceItem.limit then
					TriggerClientEvent("pNotify:SendNotification", target, {
						text = '<strong class="red-text">ช่องเก็บของมีพื้นที่ไม่เพียงพอ</strong>',
						type = "error",
						timeout = 3000,
						layout = "bottomCenter",
						queue = "global"
					})
				else
					targetXPlayer.removeInventoryItem(itemName, amount)
					sourceXPlayer.addInventoryItem(itemName, amount)
					TriggerClientEvent("pNotify:SendNotification", _source, {
						text = 'คุณได้ริบ <strong class="amber-text">'..sourceItem.label..'</strong> จำนวน <strong class="amber-text">'..amount..'</strong> ของคุณ <strong class="blue-text">'..targetXPlayer.name..'</strong> เรียบร้อยแล้ว',
						type = "success",
						timeout = 3000,
						layout = "bottomCenter",
						queue = "global"
					})
					TriggerClientEvent("pNotify:SendNotification", target, {
						text = 'บางคน <strong class="amber-text">'..sourceItem.label..'</strong> จำนวน <strong class="amber-text">'..amount..'</strong> ออกจากกระเป๋าคุณ',
						type = "success",
						timeout = 3000,
						layout = "bottomCenter",
						queue = "global"
					})

					local sendToDiscord = '' .. sourceXPlayer.name .. ' ยึด ' .. sourceItem.label .. ' จาก ' .. targetXPlayer.name .. ' จำนวน ' .. ESX.Math.GroupDigits(amount) .. ''
					TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeItem', sendToDiscord, sourceXPlayer.source, '^5')

					Citizen.Wait(100)
										
					local sendToDiscord2 = '' .. targetXPlayer.name .. ' ถูกยึด ' .. sourceItem.label .. ' โดย ' .. sourceXPlayer.name .. ' จำนวน ' .. ESX.Math.GroupDigits(amount) .. ''
					TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeItem', sendToDiscord2, targetXPlayer.source, '^7')
				end
			end
		else
			TriggerClientEvent("pNotify:SendNotification", _source, {
				text = '<strong class="red-text">ผู้เล่นไม่มีไอเทม '..targetItem.label..'</strong>',
				type = "error",
				timeout = 3000,
				layout = "bottomCenter",
				queue = "global"
			})
		end
	elseif itemType == 'item_money' then
		if amount <= 0 then
			TriggerClientEvent("pNotify:SendNotification", _source, {
				text = '<strong class="red-text">จำนวนที่ไม่ถูกต้อง</strong>',
				type = "error",
				timeout = 3000,
				layout = "bottomCenter",
				queue = "global"
			})
		else

			local targetMoney = ESX.GetPlayerFromId(targetXPlayer.source).getMoney()
			
			if targetMoney < amount then
				TriggerClientEvent("pNotify:SendNotification", _source, {
					text = '<strong class="red-text">จำนวนที่ไม่ถูกต้อง</strong>',
					type = "error",
					timeout = 3000,
					layout = "bottomCenter",
					queue = "global"
				})
			else

				targetXPlayer.removeMoney(amount)
				sourceXPlayer.addMoney (amount)

				TriggerClientEvent("pNotify:SendNotification", _source, {
					text = 'คุณได้ริบ <strong class="amber-text">เงินสด</strong> จำนวน <strong class="amber-text">'..amount..'</strong> ของคุณ <strong class="blue-text">'..targetXPlayer.name..'</strong> เรียบร้อยแล้ว',
					type = "success",
					timeout = 3000,
					layout = "bottomCenter",
					queue = "global"
				})
				TriggerClientEvent("pNotify:SendNotification", target, {
					text = 'บางคน <strong class="amber-text">เงินสด</strong> จำนวน <strong class="amber-text">'..amount..'</strong> ออกจากกระเป๋าคุณ',
					type = "success",
					timeout = 3000,
					layout = "bottomCenter",
					queue = "global"
				})

				local sendToDiscord = '' .. sourceXPlayer.name .. ' ยึด เงินสด จาก ' .. targetXPlayer.name .. ' จำนวน $' .. ESX.Math.GroupDigits(amount) .. ''
				TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeMoney', sendToDiscord, sourceXPlayer.source, '^5')

				Citizen.Wait(100)
									
				local sendToDiscord2 = '' .. targetXPlayer.name .. ' ถูกยึด เงินสด โดย ' .. sourceXPlayer.name .. ' จำนวน $' .. ESX.Math.GroupDigits(amount) .. ''
				TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeMoney', sendToDiscord2, targetXPlayer.source, '^7')
			end

		end
	elseif itemType == 'item_account' then
		if amount <= 0 then
			TriggerClientEvent("pNotify:SendNotification", _source, {
				text = '<strong class="red-text">จำนวนที่ไม่ถูกต้อง</strong>'..amount,
				type = "error",
				timeout = 3000,
				layout = "bottomCenter",
				queue = "global"
			})
		else

			local targetMoney = targetXPlayer.getAccount(itemName).money

			if targetMoney < amount then
				TriggerClientEvent("pNotify:SendNotification", _source, {
					text = '<strong class="red-text">จำนวนที่ไม่ถูกต้อง</strong>',
					type = "error",
					timeout = 3000,
					layout = "bottomCenter",
					queue = "global"
				})
			else

				targetXPlayer.removeAccountMoney(itemName, amount)
				sourceXPlayer.addAccountMoney(itemName, amount)

				TriggerClientEvent("pNotify:SendNotification", _source, {
					text = 'คุณได้ริบ <strong class="amber-text">'..itemName..'</strong> จำนวน <strong class="amber-text">'..amount..'</strong> ของคุณ <strong class="blue-text">'..targetXPlayer.name..'</strong> เรียบร้อยแล้ว',
					type = "success",
					timeout = 3000,
					layout = "bottomCenter",
					queue = "global"
				})
				TriggerClientEvent("pNotify:SendNotification", target, {
					text = 'บางคน <strong class="amber-text">'..itemName..'</strong> จำนวน <strong class="amber-text">'..amount..'</strong> ออกจากกระเป๋าคุณ',
					type = "success",
					timeout = 3000,
					layout = "bottomCenter",
					queue = "global"
				})

				local sendToDiscord = '' .. sourceXPlayer.name .. ' ยึด ' .. itemName .. ' จาก ' .. targetXPlayer.name .. ' จำนวน $' .. ESX.Math.GroupDigits(amount) .. ''
				TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeDirtyMoney', sendToDiscord, sourceXPlayer.source, '^5')

				Citizen.Wait(100)
									
				local sendToDiscord2 = '' .. targetXPlayer.name .. ' ถูกยึด ' .. itemName .. ' โดย ' .. sourceXPlayer.name .. ' จำนวน $' .. ESX.Math.GroupDigits(amount) .. ''
				TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeDirtyMoney', sendToDiscord2, targetXPlayer.source, '^7')
			end

		end
	elseif itemType == 'item_weapon' then
		if amount == nil then amount = 0 end
		targetXPlayer.removeWeapon(itemName, amount)
		sourceXPlayer.addWeapon(itemName, amount)

		TriggerClientEvent("pNotify:SendNotification", _source, {
			text = 'คุณได้ริบ <strong class="amber-text">'..ESX.GetWeaponLabel(itemName)..'</strong> จำนวนกระสุน <strong class="amber-text">'..amount..'</strong> ของคุณ <strong class="blue-text">'..targetXPlayer.name..'</strong> เรียบร้อยแล้ว',
			type = "success",
			timeout = 3000,
			layout = "bottomCenter",
			queue = "global"
		})
		TriggerClientEvent("pNotify:SendNotification", target, {
			text = 'บางคน <strong class="amber-text">'..ESX.GetWeaponLabel(itemName)..'</strong> จำนวนกระสุน <strong class="amber-text">'..amount..'</strong> ออกจากกระเป๋าคุณ',
			type = "success",
			timeout = 3000,
			layout = "bottomCenter",
			queue = "global"
		})

		
		if amount > 0 then
			local sendToDiscord = '' .. sourceXPlayer.name .. ' ยึด ' .. ESX.GetWeaponLabel(itemName) .. ' จาก ' .. targetXPlayer.name .. ' และ กระสุน จำนวน ' .. ESX.Math.GroupDigits(amount) .. ''
			TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeWeapon', sendToDiscord, sourceXPlayer.source, '^5')

			Citizen.Wait(100)
						
			local sendToDiscord2 = '' .. targetXPlayer.name .. ' ถูกยึด ' .. ESX.GetWeaponLabel(itemName) .. ' โดย ' .. sourceXPlayer.name .. ' และ กระสุน จำนวน ' .. ESX.Math.GroupDigits(amount) .. ''
			TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeWeapon', sendToDiscord2, targetXPlayer.source, '^7')
		else
			local sendToDiscord = '' .. sourceXPlayer.name .. ' ยึด ' .. ESX.GetWeaponLabel(itemName) .. ' จาก ' .. targetXPlayer.name .. '  จำนวน 1'
			TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeWeapon', sendToDiscord, sourceXPlayer.source, '^5')

			Citizen.Wait(100)
						
			local sendToDiscord2 = '' .. targetXPlayer.name .. ' ถูกยึด ' .. ESX.GetWeaponLabel(itemName) .. ' โดย ' .. sourceXPlayer.name .. ' จำนวน 1'
			TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeWeapon', sendToDiscord2, targetXPlayer.source, '^7')
		end
	elseif itemType == "item_key" then -- MEETA GiveKey

		MySQL.Async.execute("UPDATE owned_vehicles SET owner = @newplayer WHERE owner = @identifier AND plate = @plate",
		{
			['@newplayer']		= sourceXPlayer.identifier,
			['@identifier']		= targetXPlayer.identifier,
			['@plate']		= itemName
		})
		
		TriggerClientEvent("pNotify:SendNotification", _source, {
			text = 'คุณได้ริบ <strong class="amber-text">กุญแจรถ</strong> ทะเบียน <strong class="yellow-text">'..itemName..'</strong>',
			type = "success",
			timeout = 3000,
			layout = "bottomCenter",
			queue = "global"
		})
		TriggerClientEvent("pNotify:SendNotification", target, {
			text = 'บางคน <strong class="amber-text">กุญแจรถ</strong> ทะเบียน <strong class="yellow-text">'..itemName..'</strong> ออกจากกระเป๋าคุณ',
			type = "success",
			timeout = 3000,
			layout = "bottomCenter",
			queue = "global"
		})
		
		TriggerClientEvent("esx_inventoryhud:getOwnerVehicle", _source)
		TriggerClientEvent("esx_inventoryhud:getOwnerVehicle", target)

		local sendToDiscord = '' .. sourceXPlayer.name .. ' ยึด กุญแจรถ จาก ' .. targetXPlayer.name .. ' ทะเบียน ' .. itemName .. ''
		TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeKey', sendToDiscord, sourceXPlayer.source, '^5')

		Citizen.Wait(100)
							
		local sendToDiscord2 = '' .. targetXPlayer.name .. ' ถูกยึด กุญแจรถ โดย ' .. sourceXPlayer.name .. ' ทะเบียน ' .. itemName .. ''
		TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeKey', sendToDiscord2, targetXPlayer.source, '^7')
	elseif itemType == "item_keyhouse" then -- MEETA GiveKeyHouse

		MySQL.Async.execute("UPDATE owned_properties SET owner = @newplayer WHERE owner = @identifier AND id = @id",
		{
			['@newplayer']		= sourceXPlayer.identifier,
			['@identifier']		= targetXPlayer.identifier,
			['@id']		= itemName
		})

		TriggerClientEvent("pNotify:SendNotification", _source, {
			text = 'คุณได้ริบ <strong class="amber-text">กุญแจบ้าน</strong>',
			type = "success",
			timeout = 3000,
			layout = "bottomCenter",
			queue = "global"
		})
		TriggerClientEvent("pNotify:SendNotification", target, {
			text = 'บางคน <strong class="amber-text">กุญแจบ้าน</strong> ถูกยึดโดย <strong class="blue-text">'.. sourceXPlayer.name ..'</strong> ออกจากกระเป๋าคุณ',
			type = "success",
			timeout = 3000,
			layout = "bottomCenter",
			queue = "global"
		})
		
		TriggerClientEvent("esx_inventoryhud:getOwnerHouse", _source)
		TriggerClientEvent("esx_inventoryhud:getOwnerHouse", target)

		local sendToDiscord = '' .. sourceXPlayer.name .. ' ยึด กุญแจบ้าน จาก ' .. targetXPlayer.name .. ''
		TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeKey', sendToDiscord, sourceXPlayer.source, '^5')

		Citizen.Wait(100)
							
		local sendToDiscord2 = '' .. targetXPlayer.name .. ' ถูกยึด กุญแจบ้าน โดย ' .. sourceXPlayer.name .. ''
		TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceSeizeKey', sendToDiscord2, targetXPlayer.source, '^7')
	end
end) 
]]

RegisterServerEvent('esx_policejob:handcuff')
AddEventHandler('esx_policejob:handcuff', function(target, playerheading, playerCoords, playerlocation)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' or xPlayer.job.name == 'council' then
		--TriggerClientEvent('esx_policejob:handcuff', target)
		
		TriggerClientEvent('esx_policejob:getarrested', target, playerheading, playerCoords, playerlocation)
    	TriggerClientEvent('esx_policejob:doarrested', source)
	else
		print(('esx_policejob: %s attempted to handcuff a player (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_policejob:unhandcuff')
AddEventHandler('esx_policejob:unhandcuff', function(target, playerheading, playerCoords, playerlocation)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' or xPlayer.job.name == 'council' then
		--TriggerClientEvent('esx_policejob:handcuff', target)
		TriggerClientEvent('esx_policejob:getuncuffed', target, playerheading, playerCoords, playerlocation)
    	TriggerClientEvent('esx_policejob:douncuffing', source)
	else
		print(('esx_policejob: %s attempted to handcuff a player (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_policejob:unrestrainAnim')
AddEventHandler('esx_policejob:unrestrainAnim', function(ply)
	local xPlayer = ESX.GetPlayerFromId(ply)
	TriggerClientEvent('esx_policejob:douncuffing', xPlayer.source)
end)

RegisterServerEvent('esx_policejob:removeItems')
AddEventHandler('esx_policejob:removeItems', function(ply)
	local xPlayer = ESX.GetPlayerFromId(ply)
	xPlayer.removeInventoryItem('lockpick', 1)
end)

RegisterServerEvent('esx_policejob:unhandcuffitem')
AddEventHandler('esx_policejob:unhandcuffitem', function(target, playerheading, playerCoords, playerlocation)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_policejob:getuncuffedItem', target, playerheading, playerCoords, playerlocation, source)
end)

RegisterServerEvent('esx_policejob:drag')
AddEventHandler('esx_policejob:drag', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' or xPlayer.job.name == 'council' then
		TriggerClientEvent('esx_policejob:drag', target, source)
	else
		print(('esx_policejob: %s attempted to drag (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_policejob:putInVehicle')
AddEventHandler('esx_policejob:putInVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' or xPlayer.job.name == 'council' then
		TriggerClientEvent('esx_policejob:putInVehicle', target)
	else
		print(('esx_policejob: %s attempted to put in vehicle (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_policejob:OutVehicle')
AddEventHandler('esx_policejob:OutVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' or xPlayer.job.name == 'council' then
		TriggerClientEvent('esx_policejob:OutVehicle', target)
	else
		print(('esx_policejob: %s attempted to drag out from vehicle (not cop)!'):format(xPlayer.identifier))
	end
end)

-- RegisterServerEvent('esx_policejob:getStockItem')
-- AddEventHandler('esx_policejob:getStockItem', function(itemName, count)
-- 	local _source = source
-- 	local xPlayer = ESX.GetPlayerFromId(_source)
-- 	local sourceItem = xPlayer.getInventoryItem(itemName)

-- 	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_police', function(inventory)

-- 		local inventoryItem = inventory.getItem(itemName)

-- 		-- is there enough in the society?
-- 		if count > 0 and inventoryItem.count >= count then
		
-- 			-- can the player carry the said amount of x item?
-- 			if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
-- 				TriggerClientEvent("pNotify:SendNotification", _source, {
-- 					text = '<strong class="red-text">จำนวนที่ไม่ถูกต้อง</strong>',
-- 					type = "success",
-- 					timeout = 3000,
-- 					layout = "bottomCenter",
-- 					queue = "global"
-- 				})
-- 			else
-- 				inventory.removeItem(itemName, count)
-- 				xPlayer.addInventoryItem(itemName, count)
-- 				TriggerClientEvent("pNotify:SendNotification", _source, {
-- 					text = _U('have_withdrawn', count, inventoryItem.label),
-- 					type = "success",
-- 					timeout = 3000,
-- 					layout = "bottomCenter",
-- 					queue = "global"
-- 				})

-- 				local sendToDiscord = '' .. xPlayer.name .. ' นำ ' .. inventoryItem.label .. ' จำนวน ' .. ESX.Math.GroupDigits(count) .. ' ออกจากคลัง'
-- 				TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceGetStockItem', sendToDiscord, xPlayer.source, '^3')
-- 			end
-- 		else
-- 			TriggerClientEvent("pNotify:SendNotification", _source, {
-- 				text = '<strong class="red-text">จำนวนที่ไม่ถูกต้อง</strong>',
-- 				type = "success",
-- 				timeout = 3000,
-- 				layout = "bottomCenter",
-- 				queue = "global"
-- 			})
-- 		end
-- 	end)

-- end)

-- RegisterServerEvent('esx_policejob:putStockItems')
-- AddEventHandler('esx_policejob:putStockItems', function(itemName, count)
-- 	local xPlayer = ESX.GetPlayerFromId(source)
-- 	local sourceItem = xPlayer.getInventoryItem(itemName)

-- 	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_police', function(inventory)

-- 		local inventoryItem = inventory.getItem(itemName)

-- 		-- does the player have enough of the item?
-- 		if sourceItem.count >= count and count > 0 then
-- 			xPlayer.removeInventoryItem(itemName, count)
-- 			inventory.addItem(itemName, count)
-- 			TriggerClientEvent("pNotify:SendNotification", source, {
-- 				text = _U('have_withdrawn', count, inventoryItem.label),
-- 				type = "success",
-- 				timeout = 3000,
-- 				layout = "bottomCenter",
-- 				queue = "global"
-- 			})

-- 			local sendToDiscord = '' .. xPlayer.name .. ' เก็บ ' .. inventoryItem.label .. ' จำนวน ' .. ESX.Math.GroupDigits(count) .. ' เข้าคลัง'
-- 			TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PolicePutStockItem', sendToDiscord, xPlayer.source, '^2')
-- 		else
-- 			TriggerClientEvent("pNotify:SendNotification", source, {
-- 				text = '<strong class="red-text">จำนวนที่ไม่ถูกต้อง</strong>',
-- 				type = "success",
-- 				timeout = 3000,
-- 				layout = "bottomCenter",
-- 				queue = "global"
-- 			})
-- 		end

-- 	end)

-- end)

ESX.RegisterServerCallback('esx_policejob:getOtherPlayerData', function(source, cb, target)

	if Config.EnableESXIdentity then

		local xPlayer = ESX.GetPlayerFromId(target)

		local result = MySQL.Sync.fetchAll('SELECT firstname, lastname, sex, dateofbirth, height FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		})

		local firstname = result[1].firstname
		local lastname  = result[1].lastname
		local sex       = result[1].sex
		local dob       = result[1].dateofbirth
		local height    = result[1].height

		local data = {
			name      = GetPlayerName(target),
			job       = xPlayer.job,
			inventory = xPlayer.inventory,
			accounts  = xPlayer.accounts,
			weapons   = xPlayer.loadout,
			firstname = firstname,
			lastname  = lastname,
			sex       = sex,
			dob       = dob,
			height    = height
		}

		-- TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
		-- 	if status ~= nil then
		-- 		data.drunk = math.floor(status.percent)
		-- 	end
		-- end)

		if Config.EnableLicenses then
			TriggerEvent('esx_license:getLicenses', target, function(licenses)
				data.licenses = licenses
				cb(data)
			end)
		else
			cb(data)
		end

	else

		local xPlayer = ESX.GetPlayerFromId(target)

		local data = {
			name       = GetPlayerName(target),
			job        = xPlayer.job,
			inventory  = xPlayer.inventory,
			accounts   = xPlayer.accounts,
			weapons    = xPlayer.loadout
		}

		-- TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
		-- 	if status ~= nil then
		-- 		data.drunk = math.floor(status.percent)
		-- 	end
		-- end)

		TriggerEvent('esx_license:getLicenses', target, function(licenses)
			data.licenses = licenses
		end)

		cb(data)

	end

end)

ESX.RegisterServerCallback('esx_policejob:getFineList', function(source, cb, category)
	MySQL.Async.fetchAll('SELECT * FROM fine_types WHERE category = @category', {
		['@category'] = category
	}, function(fines)
		cb(fines)
	end)
end)

ESX.RegisterServerCallback('esx_policejob:getVehicleInfos', function(source, cb, plate)

	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)

		local retrivedInfo = {
			plate = plate
		}

		if result[1] then

			MySQL.Async.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier',  {
				['@identifier'] = result[1].owner
			}, function(result2)

				if Config.EnableESXIdentity then
					retrivedInfo.owner = result2[1].firstname .. ' ' .. result2[1].lastname
				-- else
					-- retrivedInfo.owner = result2[1].name
				end

				cb(retrivedInfo)
			end)
		else
			cb(retrivedInfo)
		end
	end)
end)

function string:split(delimiter)
	local result = { }
	local from  = 1
	local delim_from, delim_to = string.find( self, delimiter, from  )
	while delim_from do
	  table.insert( result, string.sub( self, from , delim_from-1 ) )
	  from  = delim_to + 1
	  delim_from, delim_to = string.find( self, delimiter, from  )
	end
	table.insert( result, string.sub( self, from  ) )
	return result
  end

ESX.RegisterServerCallback('esx_policejob:getVehicleByName', function(source, cb, name)
	local FullName = name.split(name," +")
	MySQL.Async.fetchAll('SELECT * FROM users WHERE firstname = @firstname AND lastname = @lastname', {
		['@firstname'] = FullName[1],
		['@lastname'] = FullName[2],
	}, function(result)
		if result[1] ~= nil then

			MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @identifier',  {
				['@identifier'] = result[1].identifier
			}, function(result2)
				cb(result2, true)
				

			end)
		else
			cb(_U('unknown'), false)
		end
	end)
end)

ESX.RegisterServerCallback('esx_policejob:getHouseByName', function(source, cb, name)
	local FullName = name.split(name," +")
	MySQL.Async.fetchAll('SELECT * FROM users WHERE firstname = @firstname AND lastname = @lastname', {
		['@firstname'] = FullName[1],
		['@lastname'] = FullName[2],
	}, function(result)
		if result[1] ~= nil then

			MySQL.Async.fetchAll("SELECT * FROM owned_properties WHERE owner = @identifier", {
				['@identifier'] = result[1].identifier,
			}, function(result2)
	
				cb(result2, true)
	
			end)

		else
			cb(_U('unknown'), false)
		end
	end)
end)

ESX.RegisterServerCallback('esx_policejob:getVehicleFromPlate', function(source, cb, plate)
	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)
		if result[1] ~= nil then

			MySQL.Async.fetchAll('SELECT name, firstname, lastname FROM users WHERE identifier = @identifier',  {
				['@identifier'] = result[1].owner
			}, function(result2)

				if Config.EnableESXIdentity then
					cb(result2[1].firstname .. ' ' .. result2[1].lastname, true)
				else
					cb(result2[1].name, true)
				end

			end)
		else
			cb(_U('unknown'), false)
		end
	end)
end)

ESX.RegisterServerCallback('esx_policejob:getArmoryWeapons', function(source, cb)

	TriggerEvent('esx_datastore:getSharedDataStore', 'society_police', function(store)
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		cb(weapons)
	end)

end)

ESX.RegisterServerCallback('esx_policejob:addArmoryWeapon', function(source, cb, weaponName, removeWeapon)

	local xPlayer = ESX.GetPlayerFromId(source)

	if removeWeapon then
		xPlayer.removeWeapon(weaponName)

		local sendToDiscord = '' .. xPlayer.name .. ' เก็บ ' .. ESX.GetWeaponLabel(weaponName) .. ' เข้าคลัง'
		TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PolicePutArmoryWeapon', sendToDiscord, xPlayer.source, '^2')
	end

	TriggerEvent('esx_datastore:getSharedDataStore', 'society_police', function(store)

		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i=1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = weapons[i].count + 1
				foundWeapon = true
				break
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name  = weaponName,
				count = 1
			})
		end

		store.set('weapons', weapons)
		cb()
	end)

end)

ESX.RegisterServerCallback('esx_policejob:removeArmoryWeapon', function(source, cb, weaponName)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.addWeapon(weaponName, 500)

	TriggerEvent('esx_datastore:getSharedDataStore', 'society_police', function(store)

		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i=1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
				foundWeapon = true
				break
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name  = weaponName,
				count = 0
			})
		end

		store.set('weapons', weapons)
		cb()
	end)

	local sendToDiscord = '' .. xPlayer.name .. ' เบิก ' .. ESX.GetWeaponLabel(weaponName) .. ' และ กระสุน จำนวน 500 จากคลัง'
	TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceGetArmoryWeapon', sendToDiscord, xPlayer.source, '^3')
end)

ESX.RegisterServerCallback('esx_policejob:buyWeapon', function(source, cb, weaponName, type, componentNum)
	local xPlayer = ESX.GetPlayerFromId(source)
	local authorizedWeapons, selectedWeapon = Config.AuthorizedWeapons[xPlayer.job.grade_name]

	for k,v in ipairs(authorizedWeapons) do
		if v.weapon == weaponName then
			selectedWeapon = v
			break
		end
	end

	if not selectedWeapon then
		print(('esx_policejob: %s attempted to buy an invalid weapon.'):format(xPlayer.identifier))
		cb(false)
	end

	-- Weapon
	if type == 1 then
		if xPlayer.getMoney() >= selectedWeapon.price then
			xPlayer.removeMoney(selectedWeapon.price)
			xPlayer.addWeapon(weaponName, 100)

			local sendToDiscord = '' .. xPlayer.name .. ' ซื้อ ' .. ESX.GetWeaponLabel(weaponName) .. ' และ กระสุน จำนวน 100 ราคา $' .. ESX.Math.GroupDigits(selectedWeapon.price) .. ''
			TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceBuyWeapon', sendToDiscord, xPlayer.source, '^4')

			cb(true)
		else
			cb(false)
		end

	-- Weapon Component
	elseif type == 2 then
		local price = selectedWeapon.components[componentNum]
		local weaponNum, weapon = ESX.GetWeapon(weaponName)

		local component = weapon.components[componentNum]

		if component then
			if xPlayer.getMoney() >= price then
				xPlayer.removeMoney(price)
				xPlayer.addWeaponComponent(weaponName, component.name)

				local sendToDiscord = '' .. xPlayer.name .. ' ซื้อ ' .. component.label .. ' ส่วนประกอบของอาวุธ ' .. ESX.GetWeaponLabel(weaponName) .. ' ราคา $' .. ESX.Math.GroupDigits(price)  .. ''
				TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceBuyWeapon', sendToDiscord, xPlayer.source, '^5')

				cb(true)
			else
				cb(false)
			end
		else
			print(('esx_policejob: %s attempted to buy an invalid weapon component.'):format(xPlayer.identifier))
			cb(false)
		end
	end
end)


ESX.RegisterServerCallback('esx_policejob:buyJobVehicle', function(source, cb, vehicleProps, type)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = getPriceFromHash(vehicleProps.model, xPlayer.job.grade_name, type)

	-- vehicle model not found
	if price == 0 then
		print(('esx_policejob: %s attempted to exploit the shop! (invalid vehicle model)'):format(xPlayer.identifier))
		cb(false)
	end

	if xPlayer.getMoney() >= price and xPlayer.getJob().name == 'police' then
		xPlayer.removeMoney(price)
		TriggerClientEvent("esx_inventoryhud:getOwnerVehicle", source)
		MySQL.Async.execute('INSERT INTO owned_vehicles (owner, vehicle, plate, type, job, `stored`, target) VALUES (@owner, @vehicle, @plate, @type, @job, @stored, @target)', {
			['@owner'] = xPlayer.identifier,
			['@vehicle'] = json.encode(vehicleProps),
			['@plate'] = vehicleProps.plate,
			['@type'] = type,
			['@job'] = xPlayer.job.name,
			['@stored'] = true,
			['@target'] = 'police_main'
		}, function (rowsChanged)
			cb(true)
			exports.nc_garage:AddVehicle(vehicleProps.plate)
			exports.nc_garage:ReloadVehicleOwner(vehicleProps.plate)
		end)

		local sendToDiscord = '' .. xPlayer.name .. ' ซื้อรถ ' .. vehicleProps.model .. ' ทะเบียน ' .. vehicleProps.plate .. ' ราคา $' .. ESX.Math.GroupDigits(price) .. ''
		TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'PoliceBuyVehicle', sendToDiscord, xPlayer.source, '^2')
	else
		cb(false)
	end
end)

ESX.RegisterServerCallback('esx_policejob:storeNearbyVehicle', function(source, cb, nearbyVehicles)
	local xPlayer = ESX.GetPlayerFromId(source)
	local foundPlate, foundNum

	for k,v in ipairs(nearbyVehicles) do
		local result = MySQL.Sync.fetchAll('SELECT plate FROM owned_vehicles WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = v.plate,
			['@job'] = xPlayer.job.name
		})

		if result[1] then
			foundPlate, foundNum = result[1].plate, k
			break
		end
	end

	if not foundPlate then
		cb(false)
	else
		MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = true WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = foundPlate,
			['@job'] = xPlayer.job.name
		}, function (rowsChanged)
			if rowsChanged == 0 then
				print(('esx_policejob: %s has exploited the garage!'):format(xPlayer.identifier))
				cb(false)
			else
				cb(true, foundNum)
			end
		end)
	end

end)

RegisterServerEvent('esx_policejob:SaveVehicle')
AddEventHandler('esx_policejob:SaveVehicle', function(a, vehiclePorperties)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	pcall(function() exports.nc_garage:UpdateProperties(a, vehiclePorperties, true) end)
	MySQL.update('UPDATE `owned_vehicles` SET `stored` = true `target` = "main" `vehicle` = ? WHERE `plate` = ?  AND `job` = ?', {  json.encode(vehiclePorperties), plate, xPlayer.job.name }, function(affectedRows)
        if affectedRows then
            pcall(function() exports.nc_garage:UpdateProperties(plate, vehiclePorperties, false) end)
        end
    end)
end)

function getPriceFromHash(hashKey, jobGrade, type)
	if type == 'helicopter' then
		local vehicles = Config.AuthorizedHelicopters[jobGrade]

		for k,v in ipairs(vehicles) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end
	elseif type == 'car' then
		local vehicles = Config.AuthorizedVehicles[jobGrade]
		local shared = Config.AuthorizedVehicles['Shared']

		for k,v in ipairs(vehicles) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end

		for k,v in ipairs(shared) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end
	end

	return 0
end

ESX.RegisterServerCallback('esx_policejob:getStockItems', function(source, cb)
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_police', function(inventory)
		cb(inventory.items)
	end)
end)

ESX.RegisterServerCallback('esx_policejob:getPlayerInventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory

	cb( { items = items } )
end)

--[[ AddEventHandler('playerDropped', function()
	-- Save the source in case we lose it (which happens a lot)
	local _source = source
	
	-- Did the player ever join?
	if _source ~= nil then
		local xPlayer = ESX.GetPlayerFromId(_source)
		
		-- Is it worth telling all clients to refresh?
		if xPlayer ~= nil and xPlayer.job ~= nil and xPlayer.job.name == 'police' then
			Citizen.Wait(5000)
			TriggerClientEvent('esx_policejob:updateBlip', -1)
		end
	end	
end) ]]

--[[ RegisterServerEvent('esx_policejob:spawned')
AddEventHandler('esx_policejob:spawned', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if xPlayer ~= nil and xPlayer.job ~= nil and xPlayer.job.name == 'police' then
		Citizen.Wait(5000)
		TriggerClientEvent('esx_policejob:updateBlip', -1)
	end
end) ]]

--[[ RegisterServerEvent('esx_policejob:forceBlip')
AddEventHandler('esx_policejob:forceBlip', function()
	TriggerClientEvent('esx_policejob:updateBlip', -1)
end) ]]

--[[ AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(5000)
		TriggerClientEvent('esx_policejob:updateBlip', -1)
	end
end) ]]

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent('esx_phone:removeNumber', 'police')
	end
end)

RegisterServerEvent('esx_policejob:message')
AddEventHandler('esx_policejob:message', function(target, msg)
	TriggerClientEvent("pNotify:SendNotification", target, {
		text = msg,
		type = "success",
		timeout = 3000,
		layout = "bottomCenter",
		queue = "global"
	})
end)