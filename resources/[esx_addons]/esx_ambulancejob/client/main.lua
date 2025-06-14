Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local FirstSpawn, PlayerLoaded = true, false
local hasAlreadyJoined = false
local talk = false
local drug = false
local drugnum = 0
local ClearBody = false
local blipscops = {}
local PlayerData = {}
local maxTimeSpawn =  0
local maxTimeBleedout = 0
local earlySpawnTimer = 0
local bleedoutTimer = 0
local spawnna = false
local noAmbulanceTimer = 0
local Myphone = 0
local Cement_Zone = false

local timewanting = 0
IsDead = false
ESX = exports["es_extended"]:getSharedObject()
zonewanting = false
airdrop = false

local eventzone = nil

Citizen.CreateThread(function()
	while ESX == nil do
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end
	
	PlayerLoaded = true
	ESX.PlayerData = ESX.GetPlayerData()
	Wait(1000)
--	CloseUi()
--	sendsignalUi(false)
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	PlayerLoaded = true
end)

RegisterNetEvent('esx_ambulancejob:SetPhoneNumber')
AddEventHandler('esx_ambulancejob:SetPhoneNumber', function(phone)
	Myphone = phone
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

AddEventHandler('playerSpawned', function()
	IsDead = false
	airdrop = false
	CloseUi()
	sendsignalUi(false)
	DisplayRadar(false)
	SetRadarBigmapEnabled(false, false)
	TriggerEvent('pma-voice:toggleMutedead', false)
	if FirstSpawn then
		FirstSpawn = false
		NetworkSetFriendlyFireOption(true)

		-- ESX.TriggerServerCallback('esx_ambulancejob:getDeathStatus', function(isDead)
		-- 	if isDead and Config.AntiCombatLog then
		-- 		while not PlayerLoaded do
		-- 			Citizen.Wait(1000)
		-- 		end

		-- 		Citizen.Wait(5000)
		-- 		SetEntityHealth(PlayerPedId(), 0)
		-- 		FreezeEntityPosition(PlayerPedId(), false)
		-- 	end
		-- end)
	end

end)


RegisterNetEvent('esx_ambulancejob:Checkairdrop')
AddEventHandler('esx_ambulancejob:Checkairdrop', function(check)
	airdrop = check
end)


-- Create blips
-- Citizen.CreateThread(function()
	
-- 	for k,v in pairs(Config.Hospitals) do
-- 		local blip = AddBlipForCoord(v.Blip.coords)

-- 		SetBlipSprite(blip, v.Blip.sprite)
-- 		SetBlipScale(blip, v.Blip.scale)
-- 		SetBlipColour(blip, v.Blip.color)
-- 		SetBlipAsShortRange(blip, true)

-- 		BeginTextCommandSetBlipName('STRING')
-- 		-- AddTextComponentSubstringPlayerName(_U('hospital'))
-- 		AddTextComponentString('<font face="font4thai">โรงพยาบาล</font>')
-- 		EndTextCommandSetBlipName(blip)
-- 	end
-- end)

-- Citizen.CreateThread(function()
-- 	while true do
-- 		local playerPed =PlayerPedId()
-- 		local coords    = GetEntityCoords(playerPed)
-- 		local Marker = false
-- 		if PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' then
-- 			if IsPedSittingInVehicle(PlayerPed, GetVehiclePedIsIn(PlayerPedId())) then
-- 				for k,v in pairs(Config.Hospitals) do
-- 					if v.VehicleStored ~= nil then
-- 						local distance = #(coords - v.VehicleStored)
-- 						if distance <= 20.0 then
-- 							Marker = true
-- 							DrawMarker(23, v.VehicleStored, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 5.0*2.0, 5.0*2.0, 1.0, 255, 103, 203, 150, false, true, 2, false, false, false, false)
-- 						end
-- 						if distance <= 5.0 then
-- 							if IsControlJustReleased(0, 38) then
-- 								StoreNearbyVehicle_Zone(coords)
-- 							end
-- 						end
-- 					end
-- 				end
-- 			end
-- 		end
-- 		if not Marker then
-- 			Wait(500)
-- 		else
-- 			Wait(0)
-- 		end
-- 	end
-- end)

-- function StoreNearbyVehicle_Zone(playerCoords)
-- 	local vehiclePlates = ESX.Math.Trim(GetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId(), false)))
-- 	local vehiclePorperties = exports.nc_garage:GetVehicleProperties(GetVehiclePedIsIn(PlayerPedId(), false))
-- 	ESX.Game.DeleteVehicle(GetVehiclePedIsIn(PlayerPedId(), false))
-- 	TriggerServerEvent('esx_policejob:SaveVehicle', vehiclePlates, vehiclePorperties)
-- 	TriggerEvent("pNotify:SendNotification", {
-- 		text = '<strong class="green-text">เก็บรถเรียบร้อยแล้ว</strong>',
-- 		type = "success",
-- 		timeout = 3000,
-- 		layout = "bottomCenter",
-- 		queue = "global"
-- 	})
-- end

-- Disable most inputs when dead
Citizen.CreateThread(function()
	while true do
		local sleep = 500
		if IsDead then
			sleep = 0
			DisableAllControlActions(0)
			if not exports['nextra_training']:GetInTraining() and not exports['Black_Antiblock']:checkgameblock() then
				EnableControlAction(0, Keys['G'], true)
			end
			EnableControlAction(0, Keys['T'], true)
			if talk then
				EnableControlAction(0, Keys['N'], true)
			end
			EnableControlAction(0, Keys['R'], true)
			EnableControlAction(0, Keys['K'], true)
			EnableControlAction(0, Keys['X'], true)
			EnableControlAction(0, Keys['H'], true)
			EnableControlAction(0, Keys['DELETE'], true)
			EnableControlAction(0, Keys['SPACE'], true)
			EnableControlAction(0, Keys['L'], true)

		end
		Citizen.Wait(sleep)
	end
end)

RegisterNetEvent("BN_HoldDead:HoldDead")
AddEventHandler("BN_HoldDead:HoldDead", function(Time)

	earlySpawnTimer = Time

end)

RegisterNetEvent('esx_ambulancejob:requestvoice')
AddEventHandler('esx_ambulancejob:requestvoice', function(returnid, returnname)
	if not IsEntityDead(PlayerPedId()) then
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'pharmacy', {
			title    = "ขอพูดจากคุณ "..returnname.." ",
			align    = 'top-right-center',
			elements = {
				{label = "ปฏิเสธทั้งหมด", value = 'no'},
				{label = "อนุญาติตลอด", value = 'yes'},
			}
		}, function(data, menu)
			if data.current.value == "yes" then
				TriggerServerEvent('esx_ambulancejob:returnrequestvoice', returnid , true)
			elseif data.current.value == "no" then
				TriggerServerEvent('esx_ambulancejob:returnrequestvoice', returnid , false)
			end
			menu.close()
		end, function(data, menu)
			TriggerServerEvent('esx_ambulancejob:returnrequestvoice', returnid , false)
			menu.close()
		end)
	end
end)

RegisterNetEvent('esx_ambulancejob:resultrequestvoice')
AddEventHandler('esx_ambulancejob:resultrequestvoice', function(result)
	if result then
		talk = true
		TriggerEvent('pma-voice:toggleMutedead', false)
		exports['mythic_notify']:SendAlert('success', 'คุณได้รับการยินยอมให้พูด',5000) 
	else
		exports['mythic_notify']:SendAlert('error', 'คุณถูกปฏิเสธให้พูด',5000) 
	end
end)

local IsCallPolice = false
function ClearBodyVoicepolicerequest()
	IsCallPolice = false
	Citizen.CreateThread(function()		
		while IsDead do
			Citizen.Wait(2)
			if IsControlPressed(0, Keys['X']) and ClearBody then
				ClearBody = false
				ClearPedTasksImmediately(PlayerPedId())
				ClearBodyUi(true)
				Citizen.CreateThread(function()
					Citizen.Wait(10*1000)
					if IsDead then						
						ClearBodyUi(false)
						ClearBody = true
					end
				end)				
			end
		end
	end)

	Citizen.CreateThread(function()		
		while IsDead do
			Citizen.Wait(0)
			if IsControlPressed(0, Keys['H']) and not IsCallPolice and exports['BN_HoldDead']:HoldonDead() == true then
				IsCallPolice = true
				exports.Giant_Policereport:PoliceReport('bodybag')
				policeRequest(true)
				Citizen.CreateThread(function()
					Citizen.Wait(5*60*1000)
					if IsDead then						
						policeRequest(false)
						IsCallPolice = false
					end
				end)
			end
		end
	end)

	Citizen.CreateThread(function() 
		-- EnableShowPlayerId
		
		while IsDead do
			Citizen.Wait(0)	

		
			if IsControlPressed(0, Keys['R']) then 
				local player, distance = ESX.Game.GetClosestPlayer()
				if distance < 3.0 and talk == false and player ~= -1 then
					
					-- ESX.ShowNotification('Wait person accept requestvoice...')
					requestTalk(true)
					TriggerServerEvent('esx_ambulancejob:requestvoice',GetPlayerServerId(PlayerId()),GetPlayerServerId(player))
					Citizen.Wait(5*60*1000)
					requestTalk(false)
				end
			end
		end
	end)
end

-- RegisterNetEvent('esx_ambulancejob:removeblips')
-- AddEventHandler('esx_ambulancejob:removeblips', function(target)
-- 	if blipsDead then
-- 		RemoveBlip(blipsDead)
-- 	end
-- end)


RegisterNetEvent('esx_ambulancejob:inzoneEvent')
AddEventHandler('esx_ambulancejob:inzoneEvent', function(time, a)
	noAmbulanceTimer = ESX.Math.Round(time / 1000)
	maxTimeSpawn =  ESX.Math.Round(time / 1000)
	maxTimeBleedout = ESX.Math.Round(time / 1000)
	earlySpawnTimer = ESX.Math.Round(time / 1000)
	bleedoutTimer = ESX.Math.Round(time  / 1000)
	errestime = earlySpawnTimer
	bldtim = bleedoutTimer
	Cement_Zone = a or false
end)

function RespawnPedCement()
	if Cement_Zone then
		Cement_Zone = false
		TriggerEvent('nextra_cement_war:inzoneEvent')
	end
end

RegisterFontFile('sarabun') 
local LastArmour = 0

CreateThread(function()
	while true do
		local playerPed = PlayerPedId()
		local coordss    = GetEntityCoords(playerPed)
		if IsDead then
			if #(coordss -  vector3(-262.23, -4080.54, 14.79)) <= 2000.0 then
				if IsEntityInWater(playerPed) then
					SetEntityCoords(PlayerPedId(), 75.1589, -2198.0181, 1.60)
				end
				
			end 
			if #(coordss -  vector3(-5436.68, -4910.34, 12.8)) <= 500.0 then
				SetEntityCoords(PlayerPedId(), -1825.92, -1244.92, 14.02)
			end 
		end
		Wait(5000)
	end
end)

function OnPlayerDeath()
	local playerPed = PlayerPedId()
	local coordss    = GetEntityCoords(playerPed)
	--print('PlayerDeath :  '..coordss) 
	IsDead = true
	ClearBody = true
	talk = false
	ClearPedTasksImmediately(playerPed)
	ClearPedTasks(playerPed)
	pcall(function() exports.nc_inventory:BlockKey({ 'F1', 'F2','F3','F4','F5','F6','F7','F8','F9','F10','F11', 'X', '1', '2', '3', '4', '5', '6', '7', '8', '9' }, true) end)
	ESX.UI.Menu.CloseAll()
	-- TriggerServerEvent('esx_ambulancejob:setDeathStatus', true)
	SendNUIMessage({
		type = 'ui',
		status = true
	})
	TriggerEvent('pma-voice:toggleMutedead', true)
	requestTalk(false)
	local ems = exports['nxt_core']:GetJobCount('ambulance')
	--if not airdrop then
	ClearBodyUi(false)
	eventzone = LocalPlayer.state.respawn
	print(eventzone)
	if not eventzone then
		if ems >= 3 then
			maxTimeSpawn =  ESX.Math.Round(Config.EarlyRespawnTimer / 1000)
			maxTimeBleedout = ESX.Math.Round(Config.BleedoutTimer / 1000)
			earlySpawnTimer = ESX.Math.Round(Config.EarlyRespawnTimer / 1000)
			bleedoutTimer = ESX.Math.Round(Config.BleedoutTimer  / 1000)
			errestime = earlySpawnTimer
			bldtim = bleedoutTimer
			StartDeathTimer()	
			StartDistressSignal()
			startgang()
			ClearBodyVoicepolicerequest()	
			requestTalk(false)
			policeRequest(false)
		else
			noAmbulanceTimer = ESX.Math.Round(Config.AutoRespawnTimer / 1000)
			StartNoAmbulanceTimer(eventzone)
			ClearBodyVoicepolicerequest()	
			requestTalk(false)
			policeRequest(false)
			sendsignalUi(true)
			EventRevive(false, true)
		end
	else
		noAmbulanceTimer = ESX.Math.Round((eventzone.spawnTimer or Config.AutoRespawnTimer) / 1000)
		StartNoAmbulanceTimer(eventzone)
		ClearBodyVoicepolicerequest()	
		requestTalk(false)
		policeRequest(false)
		sendsignalUi(true)
		EventRevive(true, true)
	end
end

RegisterNetEvent('esx_ambulancejob:useItem')
AddEventHandler('esx_ambulancejob:useItem', function(itemName)
	ESX.UI.Menu.CloseAll()

	if itemName == 'medikit' then
		local lib, anim = 'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01' -- TODO better animations
		local playerPed = PlayerPedId()

		ESX.Streaming.RequestAnimDict(lib, function()
			TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

			Citizen.Wait(500)
			while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
				Citizen.Wait(0)
				DisableAllControlActions(0)
			end
	
			TriggerEvent('esx_ambulancejob:heal', 'big', true)
			ESX.ShowNotification(_U('used_medikit'))
		end)

	elseif itemName == 'bandage' then
		local lib, anim = 'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01' -- TODO better animations
		local playerPed = PlayerPedId()

		ESX.Streaming.RequestAnimDict(lib, function()
			TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

			Citizen.Wait(500)
			while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
				Citizen.Wait(0)
				DisableAllControlActions(0)
			end

			TriggerEvent('esx_ambulancejob:heal', 'small', true)
			ESX.ShowNotification(_U('used_bandage'))
		end)
	end
end)


function StartDistressSignal()
	Citizen.CreateThread(function()		
		local timer = Config.BleedoutTimer

		while timer > 0 and IsDead do
			Citizen.Wait(0)

			if IsControlPressed(0, Keys['G']) then
				SendDistressSignal()
				sendsignalUi(true)
				Citizen.CreateThread(function()
					Citizen.Wait(3*60*1000)
					if IsDead then						
						StartDistressSignal()
						sendsignalUi(false)
					end
				end)
				break
			end
		end
	end)
end

function startgang()
	
	Citizen.CreateThread(function()		
		local timer = Config.BleedoutTimer
		local timegang = 0
		local holdead = false
		while timer > 0 and IsDead do
			Citizen.Wait(0)
			if holdead == false and exports['BN_HoldDead']:CheckTimeDead() > 0 then
				holdead = true
				timegang = 0
			end
			if timegang <= GetGameTimer() then
				gangRequest(false)
				if IsControlPressed(0, Keys['K']) then
					timegang =  GetGameTimer() + ((3*60) * 1000)
					if exports['BN_HoldDead']:CheckTimeDead() > 0 then
						exports['BN_AlertGang']:SendHoldDead()
					else
						exports['BN_AlertGang']:SendGang()
					end
					--SendDistressSignal()
					gangRequest(true)
				end
			end
		end
	end)
end

function StartNoAmbulanceTimer(ev)
	-- local noAmbulanceTimer = ESX.Math.Round(Config["เวลาตายตอนไม่มีหมอ"] / 1000)

	Citizen.CreateThread(function()
		-- noAmbulance timer
		while noAmbulanceTimer > 0 and IsDead do
			Citizen.Wait(1000)

			if noAmbulanceTimer > 0 then
				noAmbulanceTimer = noAmbulanceTimer - 1
			end
		end
	end)

	Citizen.CreateThread(function()
		local nText, ntimeHeld
		while noAmbulanceTimer > 0 and IsDead do
			Citizen.Wait(0)
			nText = noAmbulanceTimer
			RespawnTime(secondsToClockam(nText))
		end

		if noAmbulanceTimer < 1 and IsDead then
			-- TriggerEvent('esx_ambulancejob:revive')
			if not ev then
				print('Revive Force')
				Revive(false, GetPlayerServerId(PlayerId()))
			else
				print('Revive Zone')
				startevent_revive()
			end
		end
	end)
end

function startevent_revive()
	EventRevive(true, false)
	Citizen.CreateThread(function()		
		while IsDead do
			Citizen.Wait(0)
			if IsControlPressed(0, Keys['L']) then
				Revive(true)
				EventRevive(true, true)
				break
			end
		end
	end)
end

function EventRevive(display, status)
	SendNuiMessage(json.encode({
		type='event',
		display = display,
		status = status,
	}))
end

function DrawGenericTextThisFrame()
	SetTextFont(4)
	SetTextProportional(0)
	SetTextScale(0.0, 0.5)
	SetTextColour(255, 255, 255, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(true)
end

function StartDeathTimer()
	local canPayFine = false
	
	if Config.Respawn then
		ESX.TriggerServerCallback('esx_ambulancejob:checkBalance', function(canPay)
			canPayFine = canPay
		end)
	end
	-- print(earlySpawnTimer)
	-- print(bleedoutTimer)
	Citizen.CreateThread(function()
		-- early respawn timer
		while earlySpawnTimer > 0 and IsDead do
			Citizen.Wait(1000)
			-- if IsControlPressed(0, Keys['H']) then ClearPedTasksImmediately(PlayerPedId()) end
			if earlySpawnTimer > 0 then
				earlySpawnTimer = earlySpawnTimer - 1
				errestime = earlySpawnTimer
				percentage = (earlySpawnTimer/maxTimeSpawn)*100
				SendNuiMessage(json.encode({
					type='progress',
					percent = percentage
				}))
			end
		end

		-- bleedout timer
		while bleedoutTimer > 0 and IsDead and earlySpawnTimer == 0 do
			Citizen.Wait(1000)
			-- if IsControlPressed(0, Keys['H']) then ClearPedTasksImmediately(PlayerPedId()) end
			if bleedoutTimer > 0 then
				bleedoutTimer = bleedoutTimer - 1
				bldtim = bleedoutTimer
				percentage = (bleedoutTimer/maxTimeBleedout)*100
				SendNuiMessage(json.encode({
					type='progress',
					percent = percentage
				}))
			end
		end
	end)

	getStreetName = function()
		local pos = GetEntityCoords(PlayerPedId())
		local streetName, _ = GetStreetNameAtCoord(pos.x, pos.y, pos.z)
		streetName = GetStreetNameFromHashKey(streetName)
		return streetName
	end

	function SendDistressSignal()
		if 	exports['BN_HoldDead']:CheckTimeDead() > 0 then
			exports['Giant_medicreport-2']:SendAlertUI('อุ้มศพ')
		else
			exports['Giant_medicreport-2']:SendAlertUI()
		end
	
		-- local playerPed = PlayerPedId()
		-- PedPosition		= GetEntityCoords(playerPed)
		-- local PlayerCoords = { x = PedPosition.x, y = PedPosition.y, z = PedPosition.z }
		-- TriggerEvent('Zc_SendAlert', 'ambulance', 'หมอ', 'มีคนกำลังสลบ')
		-- TriggerServerEvent('esx_addons_gcphone:startCall', 'ambulance', _U('distress_message'), PlayerCoords, {
		-- 	PlayerCoords = { x = PedPosition.x, y = PedPosition.y, z = PedPosition.z },
		-- })
		
		--[[ TriggerServerEvent('esx_addons_gcphone:startCall', 'police', PlayerCoords, {
	
			PlayerCoords = { x = PedPosition.x, y = PedPosition.y, z = PedPosition.z },
		}) -- ]]
		
	end

	Citizen.CreateThread(function()
		local text, timeHeld
		

		-- early respawn timer
		while earlySpawnTimer > 0 and IsDead do
			Citizen.Wait(1)

			local waittt = _U('respawn_available_in', secondsToClock(earlySpawnTimer))

            RespawnTime(waittt)

			--text = _U('respawn_available_in', secondsToClock(earlySpawnTimer))
		end
		if not Cement_Zone then
			-- bleedout timer
			while bleedoutTimer > 0 and IsDead and earlySpawnTimer == 0  do
				
				Citizen.Wait(1)
				local die = _U('respawn_bleedout_in', secondsToClock(bleedoutTimer))
			
				RespawnTime(die)
				if not Config.Respawn then
					--text = text .. _U('respawn_bleedout_prompt')
					local test = _U('respawn_bleedout_prompt')

					--DrawText2D(0.90, 1.32, 0.5, 1.0, 1.2,  test , 255, 255, 255, 255)

					if IsControlPressed(0, Keys['E']) and timeHeld > 60 then
						--RemoveItemsAfterRPDeath()
						break
					end --
				elseif Config.Respawn and canPayFine then
					-- text = text .. _U('respawn_bleedout_fine', ESX.Math.GroupDigits(Config["เงินในการเกิด"]))

					if IsControlPressed(0, Keys['E']) and timeHeld > 60 then
						TriggerServerEvent('esx_ambulancejob:payFine')
						--RemoveItemsAfterRPDeath()
						break
					end --
					-- RespawnTime(text)
				end

				-- if IsControlPressed(0, Keys['E']) then
				-- 	timeHeld = timeHeld + 1
				-- else
				-- 	timeHeld = 0
				-- end
			end
				
			if bleedoutTimer < 1 and IsDead then
				--if drug then
					RemoveItemsAfterRPDeath()
				--end
			end
		end
	end)
end

function DrawGenericTextThisFrame()
	SetTextFont(fontId)
	SetTextScale(0.0, 0.5)
	SetTextColour(255, 255, 255, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(true)
end

function secondsToClock(seconds)
	local seconds, hours, mins, secs = tonumber(seconds), 0, 0, 0

	if seconds <= 0 then
		return 0, 0
	else
		local hours = string.format("%02.f", math.floor(seconds / 3600))
		local mins = string.format("%02.f", math.floor(seconds / 60 - (hours * 60)))
		local secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60))

		return mins, secs
	end
end

function secondsToClockam(seconds)
	local seconds, hours, mins, secs = tonumber(seconds), 0, 0, 0

	if seconds <= 0 then
		return 0, 0
	else
		local hours = string.format("%02.f", math.floor(seconds / 3600))
		local mins = string.format("%02.f", math.floor(seconds / 60 - (hours * 60)))
		local secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60))

		return mins..':'.. secs
	end
end

function RemoveItemsAfterRPDeath()
	-- TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)

	Citizen.CreateThread(function()
		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(10)
		end

		--ESX.TriggerServerCallback('esx_ambulancejob:removeItemsAfterRPDeath', function()
			local formattedCoords = {
				x = Config.RespawnPoint.coords.x,
				y = Config.RespawnPoint.coords.y,
				z = Config.RespawnPoint.coords.z
			}

			ESX.SetPlayerData('loadout', {})
			RespawnPedRemove2(PlayerPedId(), formattedCoords, Config.RespawnPoint.heading)
			StopScreenEffect('DeathFailOut')
			DoScreenFadeIn(800)
			--print(ESX.PlayerData.job)
			if ESX.PlayerData.job.name == 'ambulance' or ESX.PlayerData.job.name == 'police' or ESX.PlayerData.job.name == 'council' then
			else
				zonewanting = true
				timewanting = 240
			end
		--end)
	end)
end

RegisterNetEvent('esx_phone:loaded')
AddEventHandler('esx_phone:loaded', function(phoneNumber, contacts)
	local specialContact = {
		name       = 'Ambulance',
		number     = 'ambulance',
		base64Icon = 'data:image/png;base64,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'
	}

	TriggerEvent('esx_phone:addSpecialContact', specialContact.name, specialContact.number, specialContact.base64Icon)
end)

AddEventHandler('esx:onPlayerDeath', function(data)
	OnPlayerDeath()
	-- TriggerEvent('mythic_progbar:client:cancel')
end)

function RespawnPed(ped, coords)
	SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false, true)
	NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
	SetPlayerInvincible(ped, false)
	ClearPedBloodDamage(ped)

	TriggerServerEvent('esx:onPlayerSpawn')
	TriggerEvent('esx:onPlayerSpawn')
	TriggerEvent('playerSpawned')
end

function Revive(isLocal, helprevive)
	pcall(function() exports.nc_inventory:BlockKey({ 'F1', 'F2','F3','F4','F5','F6','F7','F8','F9','F10','F11', 'X', '1', '2', '3', '4', '5', '6', '7', '8', '9' }, false) end)


	local playerPed =PlayerPedId()
	local coords    = GetEntityCoords(playerPed)
	local heal = 100 + (helprevive or 10)
	if isLocal then
		if eventzone then
			coords = eventzone.spawnCoords?.xyz or coords
			heal = 100 + (eventzone.spawnHeal or 10)
		end
	end

	local formattedCoords = vector3(ESX.Math.Round(coords.x, 1), ESX.Math.Round(coords.y, 1), ESX.Math.Round(coords.z, 1))
	local heading = ESX.Math.Round(coords.w or 0.0, 1)
	--print('revive :  '..coords) 
	-- TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)

	Citizen.CreateThread(function()

		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(0)
		end
		if heal > 100 and isLocal == false then
			RespawnPed(playerPed, formattedCoords)
		elseif eventzone and exports['nxt_core']:GetJobCount('ambulance') > 0 then
			SetEntityCoords(PlayerPedId(), formattedCoords)
			eventzone = {}
		elseif eventzone and exports['nxt_core']:GetJobCount('ambulance') <= 0 then
			RespawnPedRemove2(PlayerPedId(), formattedCoords, Config.RespawnPoint.heading)
		
	
			-- FreezeEntityPosition(playerPed, true)
			-- SetEntityCoordsNoOffset(playerPed, formattedCoords.x, formattedCoords.y, formattedCoords.z, false, false, false)
			-- SetEntityHeading(playerPed, heading)
			-- local timer = GetGameTimer()
			-- RequestCollisionAtCoord(formattedCoords.x, formattedCoords.y, formattedCoords.z)
			-- while not HasCollisionLoadedAroundEntity(playerPed) and (GetGameTimer() - timer) < 5000 do
			-- 	Wait(0)
			-- end
			-- FreezeEntityPosition(playerPed, false)
		
		end

		if Cement_Zone then
			RespawnPedCement()
		end
		StopScreenEffect('')
		DoScreenFadeIn(800)
		Wait(800)
		-- SetPedArmour(playerPed, LastArmour)
		--if exports.Dv_Hunter_Check:CheckAmbulanceToScoreboard() <= 0 then
		if not IsEntityDead(PlayerPedId()) then
			SetEntityHealth(playerPed, 110)
		end
		--end
		FreezeEntityPosition(PlayerPedId(), false)
	end)
end


RegisterNetEvent('esx_ambulancejob:revive')
AddEventHandler('esx_ambulancejob:revive', function(helprevive)
	Revive(false, helprevive)
end)

RegisterNetEvent('esx_ambulancejob:reviveclear')
AddEventHandler('esx_ambulancejob:reviveclear', function()
	pcall(function() exports.nc_inventory:BlockKey({ 'F1', 'F2','F3','F4','F5','F6','F7','F8','F9','F10','F11', 'X', '1', '2', '3', '4', '5', '6', '7', '8', '9' }, false) end)
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)
	--print('revive :  '..coords) 
	-- TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)

	Citizen.CreateThread(function()

		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(0)
		end

		RespawnPed(playerPed, coords)
		TriggerServerEvent('nextra_mdt:Finish_Case', ESX.PlayerData.phone)
		--TriggerEvent('esx_status:add', 'hunger', 100000)
		StopScreenEffect('')
		DoScreenFadeIn(800)
		-- SetPedArmour(playerPed, LastArmour)
		SetEntityHealth(playerPed, 110)
		FreezeEntityPosition(PlayerPedId(), false)
		-- exports['pma-voice']:resetProximityCheck()
	end)
end)

RegisterNetEvent('esx_ambulancejob:reviveclearheal')
AddEventHandler('esx_ambulancejob:reviveclearheal', function()
	pcall(function() exports.nc_inventory:BlockKey({ 'F1', 'F2','F3','F4','F5','F6','F7','F8','F9','F10','F11', 'X', '1', '2', '3', '4', '5', '6', '7', '8', '9' }, false) end)
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)
	--print('revive :  '..coords) 
	-- TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)

	Citizen.CreateThread(function()

		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(0)
		end

		RespawnPed(playerPed, coords)
		--TriggerServerEvent('nextra_mdt:Finish_Case', ESX.PlayerData.phone)
		--TriggerEvent('esx_status:add', 'hunger', 100000)
		StopScreenEffect('')
		DoScreenFadeIn(800)
		-- SetPedArmour(playerPed, LastArmour)
		SetEntityHealth(playerPed, 200)
		FreezeEntityPosition(PlayerPedId(), false)
		-- exports['pma-voice']:resetProximityCheck()
	end)
end)

RegisterNetEvent('esx_ambulancejob:revivepushcar')
AddEventHandler('esx_ambulancejob:revivepushcar', function(coords)
	pcall(function() exports.nc_inventory:BlockKey({ 'F1', 'F2','F3','F4','F5','F6','F7','F8','F9','F10','F11', 'X', '1', '2', '3', '4', '5', '6', '7', '8', '9' }, false) end)
	local playerPed = GetPlayerPed(-1)

	print('revive :  '..coords)
	-- TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)

	Citizen.CreateThread(function()

		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(0)
		end

		RespawnPed(playerPed, coords)
		StopScreenEffect('')
		DoScreenFadeIn(800)
		-- SetPedArmour(playerPed, LastArmour)
		SetEntityHealth(playerPed, 200)
		FreezeEntityPosition(PlayerPedId(), false)
		-- exports['pma-voice']:resetProximityCheck()
	end)
end)

RegisterNetEvent('esx_ambulancejob:revive_training')
AddEventHandler('esx_ambulancejob:revive_training', function()
	pcall(function() exports.nc_inventory:BlockKey({ 'F1', 'F2','F3','F4','F5','F6','F7','F8','F9','F10','F11', 'X', '1', '2', '3', '4', '5', '6', '7', '8', '9' }, false) end)
	local playerPed = PlayerPedId()
	local coords    = GetEntityCoords(playerPed)
	-- TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)

	Citizen.CreateThread(function()

		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(0)
		end

		RespawnPed(playerPed, coords)
		StopScreenEffect('')
		DoScreenFadeIn(800)
		-- SetPedArmour(playerPed, LastArmour)
		SetEntityHealth(playerPed, 200)
		FreezeEntityPosition(PlayerPedId(), false)
		-- exports['pma-voice']:resetProximityCheck()
	end)
end)

-- RegisterCommand('tesetad', function()
-- 	TriggerEvent('esx_ambulancejob:reviveaed', 200)
-- end)

RegisterNetEvent('esx_ambulancejob:reviveaed')
AddEventHandler('esx_ambulancejob:reviveaed', function(health)
	local playerPed = PlayerPedId()
	local coords    = GetEntityCoords(playerPed)
	-- TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)
	-- Citizen.CreateThread(function()
	-- 	DoScreenFadeOut(800)
	-- 	while not IsScreenFadedOut() do
	-- 		Citizen.Wait(0)
	-- 	end
	-- 	Cement_Zone = false
    --     local formattedCoords = GetEntityCoords(playerPed)
	-- 	ESX.SetPlayerData('lastPosition', formattedCoords)
	-- 	TriggerServerEvent('esx:updateLastPosition', formattedCoords)
	-- 	RespawnPed(playerPed, formattedCoords, 0.0)
	-- 	StopScreenEffect('')
	-- 	DoScreenFadeIn(800)
	-- 	-- exports['pma-voice']:resetProximityCheck()
	-- 	-- SetPedArmour(playerPed, LastArmour)
	-- 	SetEntityHealth(playerPed, health)
	-- end)
	Citizen.CreateThread(function()

		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(0)
		end

		RespawnPed(playerPed, (coords + vector3(0,0,0.5)))
		StopScreenEffect('')
		DoScreenFadeIn(800)
		-- SetPedArmour(playerPed, LastArmour)
		SetEntityHealth(playerPed, health)
		FreezeEntityPosition(PlayerPedId(), false)
		-- exports['pma-voice']:resetProximityCheck()
	end)
	pcall(function() exports.nc_inventory:BlockKey({ 'F1', 'F2','F3','F4','F5','F6','F7','F8','F9','F10','F11', 'X', '1', '2', '3', '4', '5', '6', '7', '8', '9' }, false) end)
end)

-- Create blip for colleagues
function createBlip(id)
	local ped = GetPlayerPed(id)
	local blip = GetBlipFromEntity(ped)

	if not DoesBlipExist(blip) then -- Add blip and create head display on player
		blip = AddBlipForEntity(ped)
		SetBlipSprite(blip, 1)
		ShowHeadingIndicatorOnBlip(blip, true) -- Player Blip indicator
		SetBlipRotation(blip, math.ceil(GetEntityHeading(ped))) -- update rotation
		SetBlipNameToPlayerName(blip, id) -- update blip name
		SetBlipScale(blip, 0.85) -- set scale
		SetBlipAsShortRange(blip, true)
		
		table.insert(blipsCops, blip) -- add blip to array so we can remove it later
	end
end

RegisterNetEvent('esx_ambulancejob:updateBlip')
AddEventHandler('esx_ambulancejob:updateBlip', function()

	
	-- Clean the blip table
	blipsCops = {}

	-- Enable blip?
	if Config.MaxInService ~= -1 and not playerInService then
		return
	end

	if not Config.EnableJobBlip then
		return
	end
	
	-- Is the player a cop? In that case show all the blips for other cops
	if PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' then

	end

end)

-- Load unloaded IPLs
if Config.LoadIpl then
	Citizen.CreateThread(function()
		RequestIpl('Coroner_Int_on') -- Morgue
	end)
end


CloseUi = function ()
	SendNUIMessage({
		type = 'ui',
		status = false
	})
end

sendsignalUi = function (A)
	SendNUIMessage({
		type = 'sendsignal',
		status = A,
	})
end

ClearBodyUi = function (A)
	SendNUIMessage({
		type = 'addclass',
		status = A,
	})
end

requestTalk = function (A)
	SendNUIMessage({
		type = 'requestTalk',
		status = A,
	})
end


gangRequest = function (A)
	SendNUIMessage({
		type = 'gang',
		status = A,
	})
end



policeRequest = function (A)
	SendNUIMessage({
		type = 'police',
		status = A,
	})
end






RespawnTime = function (text)
	-- print(text)
	SendNUIMessage({
		type = 'time',
		time = text
	})
end