SkinData = {}

MySQL.ready(function(data)
	MySQL.Async.fetchAll('SELECT identifier, skin FROM users', {
	}, function(result)
		for i = 1, #result do
			SkinData[result[i].identifier] = result[i].skin
		end
	end)
end)

RegisterServerEvent('esx_skin:save')
AddEventHandler('esx_skin:save', function(skin)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)

	SkinData[xPlayer.identifier] = json.encode(skin)	
end)


AddEventHandler('esx:playerDropped', function(playerId, reason)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	local _skin = SkinData[xPlayer.identifier]

	MySQL.Async.execute('UPDATE users SET skin = @skin WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier,
		['@skin'] = _skin
	})
end)

ESX.RegisterServerCallback('esx_skin:getPlayerSkin', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local jobSkin = {
		skin_male   = xPlayer.job.skin_male,
		skin_female = xPlayer.job.skin_female
	}
	local skin = json.decode(SkinData[xPlayer.identifier])

	cb(skin, jobSkin)
end)


ESX.RegisterCommand('skin', 'admin', function(xPlayer, args, showError)
	TriggerClientEvent('sm_skin:OpenMenuSkin', xPlayer.source)
end, true)

ESX.RegisterCommand('skinfor', 'admin', function(xPlayer, args, showError)
	TriggerClientEvent('sm_skin:OpenMenuSkin', tonumber(args[1]))
end, true)

if Config['Reskin_Items'].enable then 
	ESX.RegisterUsableItem(Config['Reskin_Items'].name, function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		TriggerClientEvent('sm_skin:OpenMenuSkin', xPlayer.source)
	
		if Config['Reskin_Items'].remove then 
			xPlayer.removeInventoryItem(Config['Reskin_Items'].name, 1)
		end
	end)
end
