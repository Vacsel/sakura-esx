local PlayerLoaded   = false
local FirstSpawn     = true

RegisterNetEvent(Config['router_base']['playerLoaded'])
AddEventHandler(Config['router_base']['playerLoaded'], function(xPlayer)
	PlayerLoaded = true
	
	Citizen.CreateThread(function()
		while not PlayerLoaded do
			Citizen.Wait(10)
		end
		Wait(5000)
		if FirstSpawn then
			ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
				if skin == nil then
					TriggerEvent('skinchanger:loadDefaultModel', true)
					Wait(5000)
					TriggerEvent('skinchanger:change', 'sex', 0)
				else
					TriggerEvent('skinchanger:loadSkin', skin)

				end
			end)

			FirstSpawn = false
		end
	end)

end)

RegisterNetEvent(script_name..':OpenMenuSkin', function()
	OpenMenuSkin()
end)