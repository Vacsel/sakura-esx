ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('radio', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent('mail3ee-radio:startRadio', source)

end)

ESX.RegisterUsableItem('radio_job', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'offambulance' or xPlayer.job.name == 'offpolice' or xPlayer.job.name == 'offcouncil' then
		return
	end
	TriggerClientEvent('mail3ee-radio:startRadio', source)

end)