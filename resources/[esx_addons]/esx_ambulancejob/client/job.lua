local CurrentAction, CurrentActionMsg, CurrentActionData = nil, '', {}
local HasAlreadyEnteredMarker, LastHospital, LastPart, LastPartNum
local IsBusy = false
local spawnedVehicles, isInShopMenu = {}, false
local hasRope 				  = true
local isCarry = false
local targetPed = 0
local spawnboat = nil
local zonecheck = false
local playercooldown = {}
local zoneshow = false
AddEventHandler('playerSpawned', function()
	isCarry = false
 	targetPed = 0
end)

function OpenAmbulanceActionsMenu()
	local elements = {
		{label = _U('cloakroom'), value = 'cloakroom'}
	}
	local money = 0
	ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
		money = money
	end, 'society_ambulance')
	if Config.EnablePlayerManagement and ESX.PlayerData.job.grade_name == 'boss' then
		table.insert(elements, {label = 'Boss Actions | $'..money..'', value = 'boss_actions'})
	end
	

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'ambulance_actions', {
		title    = _U('ambulance'),
		align    = 'top-right-center',
		elements = elements
	}, function(data, menu)
		if data.current.value == 'cloakroom' then
			OpenCloakroomMenu()
		elseif data.current.value == 'boss_actions' then
			TriggerEvent('esx_society:openBossMenu', 'ambulance', function(data, menu)
				TriggerEvent('esx_ambulancejob:updateBlip')
				menu.close()
			end, {wash = false, grades = true})
		end
	end, function(data, menu)
		menu.close()
	end)
end

function OpenMobileAmbulanceActionsMenu()

	ESX.UI.Menu.CloseAll()
	local elements = {
		{label = _U('ems_menu'), value = 'citizen_interaction'},
		--{label = "เปิดเคส",               value = 'squad'},
		{label = 'เรียกเรือ/เก็บเรือ', value = 'boatspawn'},
		{label = 'ปั้มหัวใจ ไฟต์ตรง/กิจกรรม', value = 'reviveall'},
		{label = 'ส่งตัวผู้เล่น', value = 'gohospital'},
		{label = 'ติดตูลดาวน์', value = 'cooldown'},
		{label = 'พาตัวคนไข้', value = 'drag'},
		{label = 'ปล่อยตัวคนไข้', value = 'undrag'},
		
	}

	if ESX.GetPlayerData().job.grade_name == 'boss' then
		table.insert(elements, {label = 'ปรับยศผู้เล่น', value = 'setjob'})
		--table.insert(elements, {label = 'ค้นตัว', value = 'fineitem'})
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'mobile_ambulance_actions', {
		title    = _U('ambulance'),
		align    = 'top-right-center',
		elements = elements
	}, function(data, menu)

		if data.current.value == 'setjob' then
			ESX.UI.Menu.CloseAll()
			TriggerEvent('BN_Setjob:openMenu')
		elseif data.current.value == 'reviveall' then
			zoneshow = true
			local elementsx9 = {
				{label = 'กิจกรรม', 		value = 'no'},
				{label = 'ไฟต์ตรง',			value = 'yes'},
				
				 --billing
				-- {label = 'เปลี่ยนชุด + ให้คนไข้นอนเตียง', value = 'suit_bed'},
				-- {label = 'เปลี่ยนชุดกลับ + ให้ออกจากเตียง', value = 'take_off_suit'},
			}

			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'yesgohospital', {
				title    = 'ไฟต์ตรงไหม',
				align    = 'top-right-center',
				elements = elementsx9
			}, function(data, menu)
				--ESX.UI.Menu.CloseAll()
				if data.current.value == 'yes' then
					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'dialog_createbill_price',
					{
						title = "ใส่จำนวนเงิน",
					}, function(data2, menu2)
						--local length = string.len(data.value)
						if tonumber(data2.value) then
							ESX.UI.Menu.CloseAll()
							local money = tonumber(data2.value)
							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
							if closestPlayer == -1 or closestDistance > 3.0 then
								ESX.ShowNotification(_U('no_players'))
							else
								IsBusy = true

							--ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
								--if quantity > 0 then
								if checkHasItem('medikit') then
									local closestPlayerPed = GetPlayerPed(closestPlayer)

									if IsPedDeadOrDying(closestPlayerPed, 1) then
										local playerPed = PlayerPedId()
										
										ESX.ShowNotification(_U('revive_inprogress'))

										local lib, anim = 'mini@cpr@char_a@cpr_str', 'cpr_pumpchest'
										ESX.Streaming.RequestAnimDict(lib, function()
											TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
										end)
										TriggerEvent("mythic_progbar:client:progress", {
											name = "unique_action_name",
											duration = 4*1000,
											label = "Revive All",
											useWhileDead = false,
											canCancel = true,
											controlDisables = {
												disableMovement = true,
												disableCarMovement = true,
												disableMouse = false,
												disableCombat = true,
											},
											animation = {
												animDict = lib,
												anim = anim,
												flag = 49,
											},
											}, function(status)
												if not status then
													-- Do Something If Event Wasn't Cancelled
													local coords = GetEntityCoords(PlayerPedId()) -- ดึงตำแหน่งของผู้เล่นหลัก
													local getplayerarea = ESX.Game.GetPlayersInArea(coords, 5.0) -- ดึงผู้เล่นในรัศมี 15 หน่วย
													local playercheck = {}
													zoneshow = false
													for i = 1, #getplayerarea, 1 do
														local nerbyplayer = getplayerarea[i]
														local serverId = GetPlayerServerId(nerbyplayer)
														if IsPedDeadOrDying(GetPlayerPed(nerbyplayer), 1) then
															table.insert(playercheck, serverId) -- เก็บ Server ID ของผู้เล่นที่อยู่ใกล้ในตาราง
															
															Wait(10)
															-- if zonecheck == true then
															-- 	TriggerServerEvent('esx_billing:sendBill', serverId, 'ambulance',"ค่ารักษากิจกรรม", tonumber(500))
															-- else
															-- 	TriggerServerEvent('esx_billing:sendBill', serverId, 'ambulance',"ค่ารักษากิจกรรมนอกเมือง ", tonumber(2000))
															-- end
														end
													end

													if #playercheck > 0 then
														if checkHasItem('medikit', tonumber(#playercheck)) then
															TriggerServerEvent('esx_ambulancejob:reviveallcooldown', playercheck)
														end
														
														for key, id in ipairs(playercheck) do
															TriggerServerEvent('esx_billing:sendBill', id, 'ambulance',"ชุปไฟต์ตรง", money)
														end
														
														ClearPedTasks(playerPed)
													end
													
												end
										end)
										-- Show revive award?
										if Config.ReviveReward > 0 then
											ESX.ShowNotification(_U('revive_complete_award', GetPlayerName(closestPlayer), Config.ReviveReward))
										else
											ESX.ShowNotification(_U('revive_complete', GetPlayerName(closestPlayer)))
										end
									else
										ESX.ShowNotification(_U('player_not_unconscious'))
									end
								else
									ESX.ShowNotification(_U('not_enough_medikit'))
								end

								IsBusy = false
							end
						else
							TriggerEvent("pNotify:SendNotification", {
								text = "กรุณาใส่จำนวนเงิน",
								type = "success",
								timeout = 3000,
								layout = "bottomCenter",
								queue = "global"
							})
						end
					end, function(data2, menu2)
						menu2.close()
					end)
					
				elseif data.current.value == 'no' then
					
					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'dialog_createbill_price',
						{
							title = "ใส่จำนวนเงิน",
						}, function(data2, menu2)
						--local length = string.len(data.value)
						if tonumber(data2.value) then
							ESX.UI.Menu.CloseAll()
							local money = tonumber(data2.value)
							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
							if closestPlayer == -1 or closestDistance > 3.0 then
								ESX.ShowNotification(_U('no_players'))
							else
								IsBusy = true

							--ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
								--if quantity > 0 then
								if checkHasItem('medikit') then
									local closestPlayerPed = GetPlayerPed(closestPlayer)

									if IsPedDeadOrDying(closestPlayerPed, 1) then
										local playerPed = PlayerPedId()
										
										ESX.ShowNotification(_U('revive_inprogress'))

										local lib, anim = 'mini@cpr@char_a@cpr_str', 'cpr_pumpchest'
										ESX.Streaming.RequestAnimDict(lib, function()
											TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
										end)
										TriggerEvent("mythic_progbar:client:progress", {
											name = "unique_action_name",
											duration = 4*1000,
											label = "Revive All",
											useWhileDead = false,
											canCancel = true,
											controlDisables = {
												disableMovement = true,
												disableCarMovement = true,
												disableMouse = false,
												disableCombat = true,
											},
											animation = {
												animDict = lib,
												anim = anim,
												flag = 49,
											},
											}, function(status)
												if not status then
													-- Do Something If Event Wasn't Cancelled
													local coords = GetEntityCoords(PlayerPedId()) -- ดึงตำแหน่งของผู้เล่นหลัก
													local getplayerarea = ESX.Game.GetPlayersInArea(coords, 5.0) -- ดึงผู้เล่นในรัศมี 15 หน่วย
													local playercheck = {}
													zoneshow = false
													for i = 1, #getplayerarea, 1 do
														local nerbyplayer = getplayerarea[i]
														local serverId = GetPlayerServerId(nerbyplayer)
														if IsPedDeadOrDying(GetPlayerPed(nerbyplayer), 1) then
															table.insert(playercheck, serverId) -- เก็บ Server ID ของผู้เล่นที่อยู่ใกล้ในตาราง
															
															Wait(10)
															-- if zonecheck == true then
															-- 	TriggerServerEvent('esx_billing:sendBill', serverId, 'ambulance',"ค่ารักษากิจกรรม", tonumber(500))
															-- else
															-- 	TriggerServerEvent('esx_billing:sendBill', serverId, 'ambulance',"ค่ารักษากิจกรรมนอกเมือง ", tonumber(2000))
															-- end
														end
													end

													if #playercheck > 0 then
														if checkHasItem('medikit', tonumber(#playercheck)) then
															TriggerServerEvent('esx_ambulancejob:reviveall', playercheck)
														end
														
														for key, id in ipairs(playercheck) do
															TriggerServerEvent('esx_billing:sendBill', id, 'ambulance',"ชุบกิจกรรม", money)
														end
														
														ClearPedTasks(playerPed)

														-- if checkHasItem('medikit', tonumber(#playercheck)) then
														-- 	TriggerServerEvent('esx_ambulancejob:reviveallcooldown', playercheck)
														-- end
														
														-- for key, id in ipairs(playercheck) do
														-- 	TriggerServerEvent('esx_billing:sendBill', id, 'ambulance',"ชุปกิจกรรม", money)
														-- end
														
														-- ClearPedTasks(playerPed)
													end
													
												end
										end)
										-- Show revive award?
										if Config.ReviveReward > 0 then
											ESX.ShowNotification(_U('revive_complete_award', GetPlayerName(closestPlayer), Config.ReviveReward))
										else
											ESX.ShowNotification(_U('revive_complete', GetPlayerName(closestPlayer)))
										end
									else
										ESX.ShowNotification(_U('player_not_unconscious'))
									end
								else
									ESX.ShowNotification(_U('not_enough_medikit'))
								end

								IsBusy = false
							end
						else
							TriggerEvent("pNotify:SendNotification", {
								text = "กรุณาใส่จำนวนเงิน",
								type = "success",
								timeout = 3000,
								layout = "bottomCenter",
								queue = "global"
							})
						end
					end, function(data2, menu2)
						menu2.close()
					end)

			
				end
			end, function(data, menu)
				menu.close()
				zoneshow = false
			end)
			
			
		elseif data.current.value == 'cooldown' then
			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			if closestPlayer == -1 or closestDistance > 3.0 then
				ESX.ShowNotification(_U('no_players'))
			elseif IsBusy == false then
				local elementsx9 = {
					{label = 'ยืนยันการส่ง',			value = 'yes'},
					{label = 'ยกเลิก', 		value = 'no'},
					 --billing
					-- {label = 'เปลี่ยนชุด + ให้คนไข้นอนเตียง', value = 'suit_bed'},
					-- {label = 'เปลี่ยนชุดกลับ + ให้ออกจากเตียง', value = 'take_off_suit'},
				}

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'yesgohospital', {
					title    = 'ยืนยันการส่ง',
					align    = 'top-right-center',
					elements = elementsx9
				}, function(data, menu)
				
					if data.current.value == 'yes' then
						menu.close()
						IsBusy = true
						TriggerServerEvent('esx_ambulancejob:playercooldown', GetPlayerServerId(closestPlayer))
						Wait(500)
						IsBusy = false
					elseif data.current.value == 'no' then
						menu.close()
					end
				end)
				
			end
		elseif data.current.value == 'gohospital' then
			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			if closestPlayer == -1 or closestDistance > 3.0 then
				ESX.ShowNotification(_U('no_players'))
			elseif IsBusy == false then
				local elementsx9 = {
					{label = 'ยืนยันการส่ง',			value = 'yes'},
					{label = 'ยกเลิก', 		value = 'no'},
					 --billing
					-- {label = 'เปลี่ยนชุด + ให้คนไข้นอนเตียง', value = 'suit_bed'},
					-- {label = 'เปลี่ยนชุดกลับ + ให้ออกจากเตียง', value = 'take_off_suit'},
				}

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'yesgohospital', {
					title    = 'ยืนยันการส่ง',
					align    = 'top-right-center',
					elements = elementsx9
				}, function(data, menu)
				
					if data.current.value == 'yes' then
						menu.close()
						IsBusy = true
						local lib, anim = "glap@keep-up", "keep-up"
						ESX.Streaming.RequestAnimDict(lib, function()
							TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
						end)
						TriggerEvent("mythic_progbar:client:progress", {
							
							name = "unique_action_name",
							duration = 1000,
							label = "Healing",
							useWhileDead = false,
							canCancel = true,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
								},
								
							}, function(status)
								if not status then
									TriggerServerEvent('esx_ambulancejob:gohospital', GetPlayerServerId(closestPlayer))
									IsBusy = false
								else
									IsBusy = false
								end
						end)
					elseif data.current.value == 'no' then
						menu.close()
					end
				end)
				
			end
			

		elseif data.current.value == 'boatspawn' then
			if IsEntityInWater(PlayerPedId()) then
				if spawnboat == nil then
					--print('test123')
					local coords = GetEntityCoords(PlayerPedId())
					local heading = GetEntityHeading(PlayerPedId())
					ESX.Game.SpawnVehicle(`seashark2`, vector3(coords.x + 2.0, coords.y, coords.z), 0.0, function(vehicle) --get vehicle info
						if DoesEntityExist(vehicle) then
							TaskWarpPedIntoVehicle(PlayerPedId(),  vehicle, -1)
							spawnboat = vehicle
						end		
					end)
				else
					DeleteEntity(spawnboat)
					spawnboat = nil
				end
			elseif spawnboat then
				DeleteEntity(spawnboat)
				spawnboat = nil
			end
		
		elseif data.current.value == 'citizen_interaction' then
			local elementsx = {
				{label = 'ตรวจสอบข้อมูล',			value = 'identity_card'},
				{label = 'ปั้มหัวใจ', value = 'revive'},
			
				
				--{label = _U('ems_menu_small'), value = 'small'},
				{label = 'ฉีดยา', value = 'big'},
				{label = 'บิลลอย', value = 'billing'},
				 --billing
				-- {label = 'เปลี่ยนชุด + ให้คนไข้นอนเตียง', value = 'suit_bed'},
				-- {label = 'เปลี่ยนชุดกลับ + ให้ออกจากเตียง', value = 'take_off_suit'},
			}
			if ESX.GetPlayerData().job.grade_name == 'boss' then
		
				table.insert(elementsx, {label = 'ค้นตัว', value = 'fineitem'})
			end
			table.insert(elementsx, {label = _U('ems_menu_billing'), value = 'fine'})
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'citizen_interaction', {
				title    = _U('ems_menu_title'),
				align    = 'top-right-center',
				elements = elementsx
			}, function(data, menu)
				if IsBusy then return end

				local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

				local phoneNumber, amount, label = nil, nil, nil
				if data.current.value == 'billing' then
					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'billing', {
						title = 'เบอร์โทรศัพท์'
					}, function(data2, menu2)
						local phoneNumber = data2.value
						if phoneNumber == nil or phoneNumber == '' then
							TriggerEvent("pNotify:SendNotification", {
								text = "กรุณาใส่เบอร์โทรศัพท์",
								type = "error",
								timeout = 3000,
								layout = "bottomCenter",
								queue = "global"
							})
						else
							menu2.close()
							ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'billing_amount', {
								title = 'จำนวนเงิน'
							}, function(data3, menu3)
								local amount = tonumber(data3.value)
								if amount == nil then
									TriggerEvent("pNotify:SendNotification", {
										text = "กรุณาใส่จำนวนเงิน",
										type = "error",
										timeout = 3000,
										layout = "bottomCenter",
										queue = "global"
									})
								else
									menu3.close()
									ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'billing_label', {
										title = "รายละเอียด"
									}, function(data4, menu4)
										local detail = data4.value
										if detail ~= nil and detail ~= '' then
											TriggerServerEvent('esx_ambulance:sendBill', phoneNumber, detail, amount)
				
											TriggerEvent("pNotify:SendNotification", {
												text = "<strong class='green-text'>สร้างบิลเรียบร้อยแล้ว</strong>",
												type = "success",
												timeout = 3000,
												layout = "bottomCenter",
												queue = "global"
											})
											menu4.close()
										else
											TriggerEvent("pNotify:SendNotification", {
												text = "กรุณาใส่รายละเอียด",
												type = "error",
												timeout = 3000,
												layout = "bottomCenter",
												queue = "global"
											})
										end
									end, function(data4, menu4)
										menu4.close()
									end)
								end
							end, function(data3, menu3)
								menu3.close()
							end)
						end
					end, function(data2, menu2)
						menu2.close()
					end)
				else
				
					if closestPlayer == -1 or closestDistance > 3.0 then
						ESX.ShowNotification(_U('no_players'))
					else
						if data.current.value == 'fineitem' then
							ESX.UI.Menu.CloseAll()
							exports.nc_inventory:SearchInventory(GetPlayerServerId(closestPlayer), 'ambulance')
						elseif data.current.value == 'identity_card' then
							OpenIdentityCardMenu(closestPlayer)
							TriggerServerEvent('cdc5be83-c880-48c9-93a8-c57db0c8f87e', GetPlayerServerId(closestPlayer), GetPlayerServerId(PlayerId()))

						elseif data.current.value == 'revive' then

							IsBusy = true

							--ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
								--if quantity > 0 then
								if checkHasItem('medikit') then
									local closestPlayerPed = GetPlayerPed(closestPlayer)

									if IsPedDeadOrDying(closestPlayerPed, 1) then
										local playerPed = PlayerPedId()

										ESX.ShowNotification(_U('revive_inprogress'))

										local lib, anim = 'mini@cpr@char_a@cpr_str', 'cpr_pumpchest'
										ESX.Streaming.RequestAnimDict(lib, function()
											TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
										end)
										TriggerEvent("mythic_progbar:client:progress", {
											name = "unique_action_name",
											duration = 4*1000,
											label = "Revive",
											useWhileDead = false,
											canCancel = true,
											controlDisables = {
												disableMovement = true,
												disableCarMovement = true,
												disableMouse = false,
												disableCombat = true,
											},
											animation = {
												animDict = lib,
												anim = anim,
												flag = 49,
											},
											}, function(status)
												if not status then
													-- Do Something If Event Wasn't Cancelled
													ClearPedTasks(playerPed)
													TriggerServerEvent('esx_ambulancejob:removeItem', 'medikit')
													TriggerServerEvent('esx_ambulancejob:revive', GetPlayerServerId(closestPlayer))
												end
										end)
										-- Show revive award?
										if Config.ReviveReward > 0 then
											ESX.ShowNotification(_U('revive_complete_award', GetPlayerName(closestPlayer), Config.ReviveReward))
										else
											ESX.ShowNotification(_U('revive_complete', GetPlayerName(closestPlayer)))
										end
									else
										ESX.ShowNotification(_U('player_not_unconscious'))
									end
								else
									ESX.ShowNotification(_U('not_enough_medikit'))
								end

								IsBusy = false
						

					
						elseif data.current.value == 'emsbag' then
							TriggerEvent('meeta_ambulance:firstaidUse')
						
						elseif data.current.value == 'small' then
							
							--ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
								if checkHasItem('bandage') then
									local closestPlayerPed = GetPlayerPed(closestPlayer)
									local health = GetEntityHealth(closestPlayerPed)

									if health > 0 then
										local playerPed = PlayerPedId()

										IsBusy = true
										ESX.ShowNotification(_U('heal_inprogress'))
										TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
																
							--
							TriggerEvent("mythic_progbar:client:progress", {
							
								name = "unique_action_name",
								duration = 5000,
								label = "Healing",
								useWhileDead = false,
								canCancel = true,
								controlDisables = {
									disableMovement = true,
									disableCarMovement = true,
									disableMouse = false,
									disableCombat = true,
									},
									
								}, function(status)
									if not status then
										-- Do Something If Event Wasn't Cancelled
									end
							end)
							--
										Citizen.Wait(5000)
										ClearPedTasks(playerPed)

										TriggerServerEvent('esx_ambulancejob:removeItem', 'bandage')
										TriggerServerEvent('esx_ambulancejob:heal', GetPlayerServerId(closestPlayer), 'small')
										ESX.ShowNotification(_U('heal_complete', GetPlayerName(closestPlayer)))
										IsBusy = false
									else
										ESX.ShowNotification(_U('player_not_conscious'))
									end
								else
									ESX.ShowNotification(_U('not_enough_bandage'))
								end
							--end, 'bandage')

						elseif data.current.value == 'big' then

							--ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
								if checkHasItem('painkiller_medic') then
									local closestPlayerPed = GetPlayerPed(closestPlayer)
									local health = GetEntityHealth(closestPlayerPed)

									if health > 0 then
										local playerPed = PlayerPedId()

										IsBusy = true
										ESX.ShowNotification(_U('heal_inprogress'))
										TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
										TriggerEvent("mythic_progbar:client:progress", {
										
											name = "unique_action_name",
											duration = 3000,
											label = "Healing",
											useWhileDead = false,
											canCancel = true,
											controlDisables = {
												disableMovement = true,
												disableCarMovement = true,
												disableMouse = false,
												disableCombat = true,
												},
												
											}, function(status)
												if not status then
													-- Do Something If Event Wasn't Cancelled
												end
										end)
							--
										Citizen.Wait(3000)
										ClearPedTasks(playerPed)

										TriggerServerEvent('esx_ambulancejob:removeItem', 'painkiller_medic')
										TriggerServerEvent('esx_ambulancejob:heal', GetPlayerServerId(closestPlayer), 'big')
										ESX.ShowNotification(_U('heal_complete', GetPlayerName(closestPlayer)))
										IsBusy = false
									else
										ESX.ShowNotification(_U('player_not_conscious'))
									end
								else
									ESX.ShowNotification(_U('not_enough_medikit'))
								end
							--end, 'painkiller_medic')
						elseif data.current.value == 'put_in_vehicle' then
							TriggerServerEvent('esx_ambulancejob:putInVehicle', GetPlayerServerId(closestPlayer))
						--elseif data.current.value == 'billing' then
						elseif data.current.value == 'suit_bed' then
							local closestPlayerPed = GetPlayerPed(closestPlayer)
							local health = GetEntityHealth(closestPlayerPed)
							if (health == 200) then
								TriggerEvent("pNotify:SendNotification", {
									text = '<strong class="red-text"> เลือดเต็ม </strong> ',
									type = "error",
									timeout = 3000,
									layout = "bottomCenter",
									queue = "global"
								})
							else
								ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'timetosleep', {
									title = 'Time (Minute)'
								}, function(data, menu)
									local minute = tonumber(data.value)

									if minute == nil or minute < 0 then
									else
										menu.close()
										TriggerServerEvent('Porpy_beds:SendPlayerToBed', GetPlayerServerId(closestPlayer), minute)
									end
								end, function(data, menu)
									menu.close()
								end)
							end
						elseif data.current.value == 'take_off_suit' then
							TriggerServerEvent('Porpy_beds:PullPlayerLeaveBed', GetPlayerServerId(closestPlayer))
						elseif data.current.value == 'fine' then
						--	CreateBillingambulance(closestPlayer)
							ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'dialog_createbill_price',
							{
								title = "ใส่จำนวนเงิน",
							}, function(data2, menu2)
								--local length = string.len(data.value)
								if tonumber(data2.value) then
									if ESX.GetPlayerData().job.grade_name == 'study' then
										if tonumber(data2.value) > 0 and tonumber(data2.value) < 50000 then
											TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'ambulance',"ค่ารักษา ", tonumber(data2.value))  --society_ambulance
											menu2.close()
											--ESX.UI.Menu.CloseAll()
											--	OpenMobileAmbulanceActionsMenu()
											TriggerEvent("pNotify:SendNotification", {
												text = "<strong class='green-text'>สร้างบิลเรียบร้อยแล้ว</strong>",
												type = "success",
												timeout = 3000,
												layout = "bottomCenter",
												queue = "global"
											})
										else
											TriggerEvent("pNotify:SendNotification", {
												text = "ห้ามใส่เกิน 50,000",
												type = "success",
												timeout = 3000,
												layout = "bottomCenter",
												queue = "global"
											})
										end
									elseif ESX.GetPlayerData().job.grade_name == 'boss' then
										TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'ambulance',"ค่ารักษา ", tonumber(data2.value))  --society_ambulance
										menu2.close()
										--ESX.UI.Menu.CloseAll()
										--	OpenMobileAmbulanceActionsMenu()
										TriggerEvent("pNotify:SendNotification", {
											text = "<strong class='green-text'>สร้างบิลเรียบร้อยแล้ว</strong>",
											type = "success",
											timeout = 3000,
											layout = "bottomCenter",
											queue = "global"
										})
									elseif tonumber(data2.value) > 0 then
										if tonumber(data2.value) < 5000000 then
											TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'ambulance',"ค่ารักษา ", tonumber(data2.value))  --society_ambulance
											menu2.close()
											--ESX.UI.Menu.CloseAll()
											--	OpenMobileAmbulanceActionsMenu()
											TriggerEvent("pNotify:SendNotification", {
												text = "<strong class='green-text'>สร้างบิลเรียบร้อยแล้ว</strong>",
												type = "success",
												timeout = 3000,
												layout = "bottomCenter",
												queue = "global"
											})
										else
											TriggerEvent("pNotify:SendNotification", {
												text = "ห้ามใส่เกิน 5,000,000",
												type = "success",
												timeout = 3000,
												layout = "bottomCenter",
												queue = "global"
											})
										end
									end
								else
									TriggerEvent("pNotify:SendNotification", {
										text = "กรุณาใส่จำนวนเงิน",
										type = "success",
										timeout = 3000,
										layout = "bottomCenter",
										queue = "global"
									})
								end
							end, function(data2, menu2)
								menu2.close()
							end)
							--menu.close()
							--TriggerEvent('nextra_billing:OpenFindMenu')
						end
					end
				end
			end, function(data, menu)
				menu.close()
			end)
		end
		
		if data.current.value == 'drag' then
			local dict = "nm"
			RequestAnimDict(dict)
			while not HasAnimDictLoaded(dict) do
				Citizen.Wait(100)
			end
			--local closestPlayerPed = GetPlayerPed(closestPlayer)
			local player, distance = GetClosestPlayer(4)
			--local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
			--print(player)
			--if IsPedDeadOrDying(distance, 1) then
				if player ~= -1 then
					--local closestPlayer, distance = ESX.Game.GetClosestPlayer()
					--print('test1')
					TriggerServerEvent('esx_barbie_lyftupp:lyfterEMS', GetPlayerServerId(player))		
					
					-- TaskPlayAnim(GetPlayerPed(-1), dict, "firemans_carry", 5.0, -1, -1, 33, 0, false, false, false)
					--isCarry = true
				--else
					--ESX.ShowNotification("No one is nearby...")
				end
			--end
			--menu.close()
			
		elseif data.current.value == 'undrag' then
			local player, distance = ESX.Game.GetClosestPlayer()
			local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
			
			if distance ~= -1 and distance <= 3.0 then
				local closestPlayer, distance = ESX.Game.GetClosestPlayer()
				TriggerServerEvent('esx_barbie_lyftupp:unlyfterEMS', GetPlayerServerId(closestPlayer))		
				
				-- TaskPlayAnim(GetPlayerPed(-1), dict, "grab_idle", 5.0, -1, -1, 50, 0, false, false, false)
				isCarry = true
			else
				ESX.ShowNotification("No one is nearby...")
			end
			--menu.close()
        end

	end, function(data, menu)
		menu.close()
	end)
end


function OpenFineMenu(player)

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'fine',
	{
		title    = _U('fine'),
		align    = 'top-right-center',
		elements = {
			{label = "สร้างบิล",   value = 'create_bills'}
		}
	}, function(data, menu)
		CreateBilling(player)
		-- OpenFineCategoryMenu(player, data.current.value)
	end, function(data, menu)
		menu.close()
	end)

end

local hurt = false
Citizen.CreateThread(function()
    while true do
        Wait(500)
        if GetEntityHealth(GetPlayerPed(-1)) <= 120 then
            setHurt()
        elseif hurt and GetEntityHealth(GetPlayerPed(-1)) > 120 then
            setNotHurt()
        end
    end
end)

function setHurt()
    hurt = true
    RequestAnimSet("move_m@injured")
    SetPedMovementClipset(GetPlayerPed(-1), "move_m@injured", true)
end

function setNotHurt()
    hurt = false
    ResetPedMovementClipset(GetPlayerPed(-1))
    ResetPedWeaponMovementClipset(GetPlayerPed(-1))
    ResetPedStrafeClipset(GetPlayerPed(-1))
end

RegisterNetEvent('esx_barbie_lyftupp:upplyftEMS')
AddEventHandler('esx_barbie_lyftupp:upplyftEMS', function(target)
	local playerPed = PlayerPedId()
	targetPed = target
	local targets = GetPlayerPed(GetPlayerFromServerId(target)) 
	FreezeEntityPosition(playerPed, true)
	ClearPedTasksImmediately(playerPed)
	AttachEntityToEntity(playerPed, targets, 0, 0.27, 0.15, 0.63, 0.5, 0.5, 0.0, false, false, false, false, 2, false)
	local dict = "nm"
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
	local player, distance = GetClosestPlayer(4)
	TaskPlayAnim(GetPlayerPed(-1), dict, "firemans_carry", 8.0, -8.0, -1, 33, 0, false, false, false)
	isCarry = true
end)

RegisterNetEvent('esx_barbie_lyftupp:unupplyftEMS')
AddEventHandler('esx_barbie_lyftupp:unupplyftEMS', function(target)
	local playerPed = PlayerPedId()
	DetachEntity(playerPed, true, false)
	FreezeEntityPosition(playerPed, false)
	ClearPedTasksImmediately(playerPed)
	isCarry = false
	targetPed = 0
end)

AddEventHandler('Black_Multiverse:Zonearea', function()
	Wait(1000)
	local playerPed = PlayerPedId()
	local playertarget = GetPlayerPed(GetPlayerFromServerId(targetPed))
	if isCarry and playertarget > 0 then
		AttachEntityToEntity(playerPed, playertarget, 11816, 0.54, -0.10, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
	end
end)

function GetClosestPlayer(radius)
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)

    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) and IsPedDeadOrDying(target, 1) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], plyCoords['x'], plyCoords['y'], plyCoords['z'], true)
			if distance > 1.0 and distance <= radius then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
	if closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end

function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end

function CreateBilling(player)
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'dialog_createbill',
	{
		title = "ใส่ชื่อบิล",
	}, function(data, menu)
		--local length = string.len(data.value)
		if data.value == nil then
			TriggerEvent("pNotify:SendNotification", {
				text = "กรุณาใส่รายละเอียดด้วย",
				type = "success",
				timeout = 3000,
				layout = "bottomCenter",
				queue = "global"
			})
		else
			CreateBillingambulance(player, data.value)
			menu.close()
		end
	end, function(data, menu)
		menu.close()
	end)
end

function CreateBillingambulance(player, value)
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'dialog_createbill_price',
	{
		title = "ใส่จำนวนเงิน",
	}, function(data2, menu2)
		--local length = string.len(data.value)
		if tonumber(data2.value) then
			TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(player), 'ambulance',"ค่ารักษา ", tonumber(data2.value))  --society_ambulance
			--menu2.close()
			ESX.UI.Menu.CloseAll()
			OpenMobileAmbulanceActionsMenu()
			TriggerEvent("pNotify:SendNotification", {
				text = "<strong class='green-text'>สร้างบิลเรียบร้อยแล้ว</strong>",
				type = "success",
				timeout = 3000,
				layout = "bottomCenter",
				queue = "global"
			})
		else
			TriggerEvent("pNotify:SendNotification", {
				text = "กรุณาใส่จำนวนเงิน",
				type = "success",
				timeout = 3000,
				layout = "bottomCenter",
				queue = "global"
			})
		end
	end, function(data2, menu2)
		menu2.close()
	end)
end

function FastTravel(coords, heading)
	local playerPed = PlayerPedId()

	DoScreenFadeOut(800)

	while not IsScreenFadedOut() do
		Citizen.Wait(500)
	end

	ESX.Game.Teleport(playerPed, coords, function()
		DoScreenFadeIn(800)

		if heading then
			SetEntityHeading(playerPed, heading)
		end
	end)
end

-- Draw markers & Marker logic
Citizen.CreateThread(function()
	while true do
		local playerCoords = GetEntityCoords(PlayerPedId())
		local letSleep, isInMarker, hasExited = true, false, false
		local currentHospital, currentPart, currentPartNum
		if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ambulance' then
			for hospitalNum,hospital in pairs(Config.Hospitals) do

				-- Ambulance Actions
				for k,v in ipairs(hospital.AmbulanceActions) do
					local distance = GetDistanceBetweenCoords(playerCoords, v, true)

					if distance < 20 then
						DrawMarker(Config.Marker.type, v, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.Marker.x, Config.Marker.y, Config.Marker.z, Config.Marker.r, Config.Marker.g, Config.Marker.b, Config.Marker.a, false, true, 2, true, false, false, false)
						letSleep = false
					end

					if distance < Config.Marker.x then
						isInMarker, currentHospital, currentPart, currentPartNum = true, hospitalNum, 'AmbulanceActions', k
					end
				end

				--Pharmacies
				for k,v in ipairs(hospital.Pharmacies) do
					local distance = GetDistanceBetweenCoords(playerCoords, v, true)

					if distance < 20 then
						DrawMarker(Config.Marker.type, v, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.Marker.x, Config.Marker.y, Config.Marker.z, Config.Marker.r, Config.Marker.g, Config.Marker.b, Config.Marker.a, false, false, 2, true, false, false, false)
						letSleep = false
					end

					if distance < Config.Marker.x then
						isInMarker, currentHospital, currentPart, currentPartNum = true, hospitalNum, 'Pharmacy', k
					end
				end

				-- Vehicle Spawners
				for k,v in ipairs(hospital.Vehicles) do
					local distance = GetDistanceBetweenCoords(playerCoords, v.Spawner, true)

					if distance < 20 then
						DrawMarker(v.Marker.type, v.Spawner, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.Marker.x, v.Marker.y, v.Marker.z, v.Marker.r, v.Marker.g, v.Marker.b, v.Marker.a, false, false, 2, v.Marker.rotate, nil, nil, false)
						letSleep = false
					end

					if distance < v.Marker.x then
						isInMarker, currentHospital, currentPart, currentPartNum = true, hospitalNum, 'Vehicles', k
					end
				end

				-- Helicopter Spawners
				for k,v in ipairs(hospital.Helicopters) do
					local distance = GetDistanceBetweenCoords(playerCoords, v.Spawner, true)

					if distance < 20 then
						DrawMarker(v.Marker.type, v.Spawner, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.Marker.x, v.Marker.y, v.Marker.z, v.Marker.r, v.Marker.g, v.Marker.b, v.Marker.a, false, false, 2, v.Marker.rotate, nil, nil, false)
						letSleep = false
					end

					if distance < v.Marker.x then
						isInMarker, currentHospital, currentPart, currentPartNum = true, hospitalNum, 'Helicopters', k
					end
				end

				-- Fast Travels
				for k,v in ipairs(hospital.FastTravels) do
					local distance = GetDistanceBetweenCoords(playerCoords, v.From, true)

					if distance < 20 then
						DrawMarker(v.Marker.type, v.From, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.Marker.x, v.Marker.y, v.Marker.z, v.Marker.r, v.Marker.g, v.Marker.b, v.Marker.a, false, false, 2, v.Marker.rotate, nil, nil, false)
						letSleep = false
					end


					if distance < v.Marker.x then
						FastTravel(v.To.coords, v.To.heading)
					end
				end

			end

			-- Logic for exiting & entering markers
			if isInMarker and not HasAlreadyEnteredMarker or (isInMarker and (LastHospital ~= currentHospital or LastPart ~= currentPart or LastPartNum ~= currentPartNum)) then

				if
					(LastHospital ~= nil and LastPart ~= nil and LastPartNum ~= nil) and
					(LastHospital ~= currentHospital or LastPart ~= currentPart or LastPartNum ~= currentPartNum)
				then
					TriggerEvent('esx_ambulancejob:hasExitedMarker', LastHospital, LastPart, LastPartNum)
					hasExited = true
				end

				HasAlreadyEnteredMarker, LastHospital, LastPart, LastPartNum = true, currentHospital, currentPart, currentPartNum

				TriggerEvent('esx_ambulancejob:hasEnteredMarker', currentHospital, currentPart, currentPartNum)

			end

			if not hasExited and not isInMarker and HasAlreadyEnteredMarker then
				HasAlreadyEnteredMarker = false
				TriggerEvent('esx_ambulancejob:hasExitedMarker', LastHospital, LastPart, LastPartNum)
			end
		end

		if letSleep then
			Citizen.Wait(500)
		else
			Citizen.Wait(0)
		end
	end
end)

AddEventHandler('esx_ambulancejob:hasEnteredMarker', function(hospital, part, partNum)
	if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ambulance' then
		if part == 'AmbulanceActions' then
			CurrentAction = part
			CurrentActionMsg = _U('actions_prompt')
			CurrentActionData = {}
		elseif part == 'Pharmacy' then
			CurrentAction = part
			CurrentActionMsg = _U('open_pharmacy')
			CurrentActionData = {}
		elseif part == 'Vehicles' then
			CurrentAction = part
			CurrentActionMsg = _U('garage_prompt')
			CurrentActionData = {hospital = hospital, partNum = partNum}
		elseif part == 'Helicopters' then
			CurrentAction = part
			CurrentActionMsg = _U('helicopter_prompt')
			CurrentActionData = {hospital = hospital, partNum = partNum}
		elseif part == 'FastTravelsPrompt' then
			local travelItem = Config.Hospitals[hospital][part][partNum]

			CurrentAction = part
			CurrentActionMsg = travelItem.Prompt
			CurrentActionData = {to = travelItem.To.coords, heading = travelItem.To.heading}
		end
	end
end)

AddEventHandler('esx_ambulancejob:hasExitedMarker', function(hospital, part, partNum)
	if not isInShopMenu then
		ESX.UI.Menu.CloseAll()
	end

	CurrentAction = nil
end)

-- Key Controls
Citizen.CreateThread(function()
	while true do
		if CurrentAction then
			ESX.ShowHelpNotification(CurrentActionMsg)

			if IsControlJustReleased(0, Keys['E']) then

				if CurrentAction == 'AmbulanceActions' then
					OpenAmbulanceActionsMenu()
				elseif CurrentAction == 'Pharmacy' then
					OpenPharmacyMenu()
				elseif CurrentAction == 'Vehicles' then
					OpenVehicleSpawnerMenu(CurrentActionData.hospital, CurrentActionData.partNum)
				elseif CurrentAction == 'Helicopters' then
					OpenHelicopterSpawnerMenu(CurrentActionData.hospital, CurrentActionData.partNum)
				elseif CurrentAction == 'FastTravelsPrompt' then
					FastTravel(CurrentActionData.to, CurrentActionData.heading)
				end

				CurrentAction = nil

			end
		end

		if CurrentAction == nil then
			Citizen.Wait(500)
		else
			Citizen.Wait(0)
		end
	end
end)

-- Citizen.CreateThread(function()
-- 	while true do
-- 		Citizen.Wait(0)
-- 		if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'ambulance' and not IsDead then
-- 			if IsControlJustReleased(0, Keys['F6']) then
-- 				OpenMobileAmbulanceActionsMenu()
-- 			end
-- 		end
-- 	end
-- end)

RegisterKeyMapping("ambulancemenucheck", "Ambulance Menu", "keyboard", 'F6')
RegisterCommand("ambulancemenucheck", function(source,args)
	if IsEntityDead(PlayerPedId()) then
		return
	end
	--TriggerEvent(xZero.evn.CL.Hold_MenuOpen)
	if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'ambulance' then

		OpenMobileAmbulanceActionsMenu()
		
	end
end)


RegisterNetEvent('esx_ambulancejob:putInVehicle')
AddEventHandler('esx_ambulancejob:putInVehicle', function()
	local playerPed = PlayerPedId()
	local coords    = GetEntityCoords(playerPed)

	if IsAnyVehicleNearPoint(coords, 5.0) then
		local vehicle = GetClosestVehicle(coords, 5.0, 0, 71)

		if DoesEntityExist(vehicle) then
			local maxSeats, freeSeat = GetVehicleMaxNumberOfPassengers(vehicle)

			for i=maxSeats - 1, 0, -1 do
				if IsVehicleSeatFree(vehicle, i) then
					freeSeat = i
					break
				end
			end

			if freeSeat then
				TaskWarpPedIntoVehicle(playerPed, vehicle, freeSeat)
			end
		end
	end
end)

function OpenCloakroomMenu()
	local playerPed = PlayerPedId()
	local grade = ESX.PlayerData.job.grade_name
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'cloakroom', {
		title    = _U('cloakroom'),
		align    = 'top-right-center',
		elements = {
			{label = _U('ems_clothes_civil'), value = 'citizen_wear'},
			{label = _U('ems_clothes_ems'), uniform = grade}
		}
	}, function(data, menu)
		if data.current.value == 'citizen_wear' then
			ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
				TriggerEvent('skinchanger:loadSkin', skin)
			end)
		end
		if data.current.uniform then
			setUniform(data.current.uniform, playerPed)
		end
		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end

function setUniform(uniform, playerPed)
	TriggerEvent('skinchanger:getSkin', function(skin)
		local uniformObject

		if skin.sex == 0 then
			uniformObject = Config.Uniforms[uniform].male
		else
			uniformObject = Config.Uniforms[uniform].female
		end

		if uniformObject then
			TriggerEvent('skinchanger:loadClothes', skin, uniformObject)

			if uniform == 'bullet_wear' then
				SetPedArmour(playerPed, 100)
			end
		else
			ESX.ShowNotification(_U('no_outfit'))
		end
	end)
end

function OpenVehicleSpawnerMenu(hospital, partNum)
	local playerCoords = GetEntityCoords(PlayerPedId())
	local elements = {
		-- {label = _U('garage_storeditem'), action = 'garage'},
		-- {label = _U('garage_storeitem'), action = 'store_garage'},
		{label = _U('garage_buyitem'), action = 'buy_vehicle'}
	}

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle', {
		title    = _U('garage_title'),
		align    = 'top-right-center',
		elements = elements
	}, function(data, menu)

		if data.current.action == 'buy_vehicle' then
			local shopCoords = Config.Hospitals[hospital].Vehicles[partNum].InsideShop
			local shopElements = {}

			local authorizedVehicles = Config.AuthorizedVehicles[ESX.PlayerData.job.grade_name]

			if #authorizedVehicles > 0 then
				for k,vehicle in ipairs(authorizedVehicles) do
					table.insert(shopElements, {
						label = ('%s - <span style="color:green;">%s</span>'):format(vehicle.label, _U('shop_item', ESX.Math.GroupDigits(vehicle.price))),
						name  = vehicle.label,
						model = vehicle.model,
						price = vehicle.price,
						type  = 'car'
					})
				end
			else
				return
			end

			OpenShopMenu(shopElements, playerCoords, shopCoords)
		elseif data.current.action == 'garage' then
			local garage = {}

			ESX.TriggerServerCallback('esx_vehicleshop:retrieveJobVehicles', function(jobVehicles)
				if #jobVehicles > 0 then
					for k,v in ipairs(jobVehicles) do
						local props = json.decode(v.vehicle)
						local vehicleName = GetLabelText(GetDisplayNameFromVehicleModel(props.model))
						local label = ('%s - <span style="color:darkgoldenrod;">%s</span>: '):format(vehicleName, props.plate)

						if v.stored then
							label = label .. ('<span style="color:green;">%s</span>'):format(_U('garage_stored'))
						else
							label = label .. ('<span style="color:darkred;">%s</span>'):format(_U('garage_notstored'))
						end

						table.insert(garage, {
							label = label,
							stored = v.stored,
							model = props.model,
							vehicleProps = props
						})
					end

					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_garage', {
						title    = _U('garage_title'),
						align    = 'top-right-center',
						elements = garage
					}, function(data2, menu2)
						if data2.current.stored then
							local foundSpawn, spawnPoint = GetAvailableVehicleSpawnPoint(hospital, 'Vehicles', partNum)

							if foundSpawn then
								menu2.close()
								
								TriggerEvent("pNotify:SendNotification", {
									text = '<strong class="green-text">นำรถของคุณออกมาเรียบร้อยแล้ว</strong>',
									type = "success",
									timeout = 3000,
									layout = "bottomCenter",
									queue = "global"
								})

								ESX.Game.SpawnVehicle(data2.current.model, spawnPoint.coords, spawnPoint.heading, function(vehicle)
									ESX.Game.SetVehicleProperties(vehicle, data2.current.vehicleProps)
									SetVehicleEngineHealth(vehicle, 1000.0)
									SetVehicleBodyHealth(vehicle, 1000.0)
									SetVehiclePetrolTankHealth(vehicle, 1000.0)
									SetVehicleEngineOn(vehicle, false, false, true) 
									TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
									exports['LegacyFuel']:SetFuel(vehicle, 100.0)
									TriggerServerEvent('esx_vehicleshop:setJobVehicleState', data2.current.vehicleProps.plate, false)
									ESX.ShowNotification(_U('garage_released'))
								end)
							end
						else
							ESX.ShowNotification(_U('garage_notavailable'))
						end
					end, function(data2, menu2)
						menu2.close()
					end)

				else
					ESX.ShowNotification(_U('garage_empty'))
				end
			end, 'car')

		elseif data.current.action == 'store_garage' then
			StoreNearbyVehicle(playerCoords)
		end

	end, function(data, menu)
		menu.close()
	end)

end

function StoreNearbyVehicle(playerCoords)
	local vehicles, vehiclePlates = ESX.Game.GetVehiclesInArea(playerCoords, 30.0), {}

	if #vehicles > 0 then
		for k,v in ipairs(vehicles) do

			-- Make sure the vehicle we're saving is empty, or else it wont be deleted
			if GetVehicleNumberOfPassengers(v) == 0 and IsVehicleSeatFree(v, -1) then
				table.insert(vehiclePlates, {
					vehicle = v,
					plate = ESX.Math.Trim(GetVehicleNumberPlateText(v))
				})
			end
		end
	else
		ESX.ShowNotification(_U('garage_store_nearby'))
		return
	end

	ESX.TriggerServerCallback('esx_ambulancejob:storeNearbyVehicle', function(storeSuccess, foundNum)
		if storeSuccess then
			local vehicleId = vehiclePlates[foundNum]
			local attempts = 0
			ESX.Game.DeleteVehicle(vehicleId.vehicle)
			IsBusy = true

			Citizen.CreateThread(function()
				while IsBusy do
					Citizen.Wait(0)
					drawLoadingText(_U('garage_storing'), 255, 255, 255, 255)
				end
			end)

			-- Workaround for vehicle not deleting when other players are near it.
			while DoesEntityExist(vehicleId.vehicle) do
				Citizen.Wait(500)
				attempts = attempts + 1

				-- Give up
				if attempts > 30 then
					break
				end

				vehicles = ESX.Game.GetVehiclesInArea(playerCoords, 30.0)
				if #vehicles > 0 then
					for k,v in ipairs(vehicles) do
						if ESX.Math.Trim(GetVehicleNumberPlateText(v)) == vehicleId.plate then
							ESX.Game.DeleteVehicle(v)
							TriggerServerEvent('esx_vehicleshop:setJobVehicleState', data2.current.vehicleProps.plate, true)
							break
						end
					end
				end
			end

			IsBusy = false
			ESX.ShowNotification(_U('garage_has_stored'))
		else
			ESX.ShowNotification(_U('garage_has_notstored'))
		end
	end, vehiclePlates)
end

function GetAvailableVehicleSpawnPoint(hospital, part, partNum)
	local spawnPoints = Config.Hospitals[hospital][part][partNum].SpawnPoints
	local found, foundSpawnPoint = false, nil

	for i=1, #spawnPoints, 1 do
		if ESX.Game.IsSpawnPointClear(spawnPoints[i].coords, spawnPoints[i].radius) then
			found, foundSpawnPoint = true, spawnPoints[i]
			break
		end
	end

	if found then
		return true, foundSpawnPoint
	else
		ESX.ShowNotification(_U('garage_blocked'))
		return false
	end
end

function OpenHelicopterSpawnerMenu(hospital, partNum)
	local playerCoords = GetEntityCoords(PlayerPedId())
	ESX.PlayerData = ESX.GetPlayerData()
	local elements = {
		{label = _U('helicopter_garage'), action = 'garage'},
		{label = _U('helicopter_store'), action = 'store_garage'},
		{label = _U('helicopter_buy'), action = 'buy_helicopter'}
	}

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'helicopter_spawner', {
		title    = _U('helicopter_title'),
		align    = 'top-right-center',
		elements = elements
	}, function(data, menu)

		if data.current.action == 'buy_helicopter' then
			local shopCoords = Config.Hospitals[hospital].Helicopters[partNum].InsideShop
			local shopElements = {}

			local authorizedHelicopters = Config.AuthorizedHelicopters[ESX.PlayerData.job.grade_name]

			if #authorizedHelicopters > 0 then
				for k,helicopter in ipairs(authorizedHelicopters) do
					table.insert(shopElements, {
						label = ('%s - <span style="color:green;">%s</span>'):format(helicopter.label, _U('shop_item', ESX.Math.GroupDigits(helicopter.price))),
						name  = helicopter.label,
						model = helicopter.model,
						price = helicopter.price,
						type  = 'helicopter'
					})
				end
			else
				ESX.ShowNotification(_U('helicopter_notauthorized'))
				return
			end

			OpenShopMenu(shopElements, playerCoords, shopCoords)
		elseif data.current.action == 'garage' then
			local garage = {}

			ESX.TriggerServerCallback('esx_vehicleshop:retrieveJobVehicles', function(jobVehicles)
				if #jobVehicles > 0 then
					for k,v in ipairs(jobVehicles) do
						local props = json.decode(v.vehicle)
						local vehicleName = GetLabelText(GetDisplayNameFromVehicleModel(props.model))
						local label = ('%s - <span style="color:darkgoldenrod;">%s</span>: '):format(vehicleName, props.plate)

						if v.stored then
							label = label .. ('<span style="color:green;">%s</span>'):format(_U('garage_stored'))
						else
							label = label .. ('<span style="color:darkred;">%s</span>'):format(_U('garage_notstored'))
						end

						table.insert(garage, {
							label = label,
							stored = v.stored,
							model = props.model,
							vehicleProps = props
						})
					end

					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'helicopter_garage', {
						title    = _U('helicopter_garage_title'),
						align    = 'top-right-center',
						elements = garage
					}, function(data2, menu2)
						if data2.current.stored then
							local foundSpawn, spawnPoint = GetAvailableVehicleSpawnPoint(hospital, 'Helicopters', partNum)

							if foundSpawn then
								menu2.close()

								ESX.Game.SpawnVehicle(data2.current.model, spawnPoint.coords, spawnPoint.heading, function(vehicle)
									ESX.Game.SetVehicleProperties(vehicle, data2.current.vehicleProps)
									SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
									TriggerServerEvent('esx_vehicleshop:setJobVehicleState', data2.current.vehicleProps.plate, false)
									ESX.ShowNotification(_U('garage_released'))
								end)
							end
						else
							local foundSpawn, spawnPoint = GetAvailableVehicleSpawnPoint(hospital, 'Helicopters', partNum)

							if foundSpawn then
								menu2.close()
								TriggerServerEvent('esx_ambulancejob:PoundHelicopter')
								ESX.Game.SpawnVehicle(data2.current.model, spawnPoint.coords, spawnPoint.heading, function(vehicle)
									ESX.Game.SetVehicleProperties(vehicle, data2.current.vehicleProps)

									TriggerServerEvent('esx_vehicleshop:setJobVehicleState', data2.current.vehicleProps.plate, false)
									ESX.ShowNotification(_U('garage_released'))
								end)
							end
						end
					end, function(data2, menu2)
						menu2.close()
					end)

				else
					ESX.ShowNotification(_U('garage_empty'))
				end
			end, 'helicopter')

		elseif data.current.action == 'store_garage' then
			StoreNearbyVehicle(playerCoords)
		end

	end, function(data, menu)
		menu.close()
	end)

end

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
	
	Citizen.Wait(5000)
end)

function OpenShopMenu(elements, restoreCoords, shopCoords)
	local playerPed = PlayerPedId()
	isInShopMenu = true

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_shop', {
		title    = _U('vehicleshop_title'),
		align    = 'top-right-center',
		elements = elements
	}, function(data, menu)

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_shop_confirm', {
			title    = _U('vehicleshop_confirm', data.current.name, data.current.price),
			align    = 'top-right-center',
			elements = {
				{ label = _U('confirm_no'), value = 'no' },
				{ label = _U('confirm_yes'), value = 'yes' }
			}
		}, function(data2, menu2)

			if data2.current.value == 'yes' then
				local newPlate = exports['esx_vehicleshop']:GeneratePlate()
				local vehicle  = GetVehiclePedIsIn(playerPed, false)
				local props    = ESX.Game.GetVehicleProperties(vehicle)
				props.plate    = newPlate

				ESX.TriggerServerCallback('esx_ambulancejob:buyJobVehicle', function (bought)
					if bought then
						ESX.ShowNotification(_U('vehicleshop_bought', data.current.name, ESX.Math.GroupDigits(data.current.price)))

						isInShopMenu = false
						ESX.UI.Menu.CloseAll()
				
						DeleteSpawnedVehicles()
						FreezeEntityPosition(playerPed, false)
						SetEntityVisible(playerPed, true)
				
						ESX.Game.Teleport(playerPed, restoreCoords)
					else
						ESX.ShowNotification(_U('vehicleshop_money'))
						menu2.close()
					end
				end, props, data.current.type)
			else
				menu2.close()
			end

		end, function(data2, menu2)
			menu2.close()
		end)

		end, function(data, menu)
		isInShopMenu = false
		ESX.UI.Menu.CloseAll()

		DeleteSpawnedVehicles()
		FreezeEntityPosition(playerPed, false)
		SetEntityVisible(playerPed, true)

		ESX.Game.Teleport(playerPed, restoreCoords)
	end, function(data, menu)
		DeleteSpawnedVehicles()

		WaitForVehicleToLoad(data.current.model)
		ESX.Game.SpawnLocalVehicle(data.current.model, shopCoords, 0.0, function(vehicle)
			table.insert(spawnedVehicles, vehicle)
			TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
			FreezeEntityPosition(vehicle, true)
			SetVehicleLivery(vehicle, 0) 
			if data.current.model == 'polmav' then
				SetVehicleLivery(vehicle, 1) 
			elseif data.current.model == 'admbuzzardsirenv2' then
				SetVehicleLivery(vehicle, 2) 
			end
		end)
	end)

	WaitForVehicleToLoad(elements[1].model)
	ESX.Game.SpawnLocalVehicle(elements[1].model, shopCoords, 0.0, function(vehicle)
		table.insert(spawnedVehicles, vehicle)
		TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
		FreezeEntityPosition(vehicle, true)
	end)
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)
	
			if isInShopMenu then
				DisableControlAction(0, 75, true)  -- Disable exit vehicle
				DisableControlAction(27, 75, true) -- Disable exit vehicle
			else
				Citizen.Wait(500)
			end
		end
	end)
end





function DeleteSpawnedVehicles()
	while #spawnedVehicles > 0 do
		local vehicle = spawnedVehicles[1]
		ESX.Game.DeleteVehicle(vehicle)
		table.remove(spawnedVehicles, 1)
	end
end

function WaitForVehicleToLoad(modelHash)
	modelHash = (type(modelHash) == 'number' and modelHash or GetHashKey(modelHash))

	if not HasModelLoaded(modelHash) then
		RequestModel(modelHash)

		while not HasModelLoaded(modelHash) do
			Citizen.Wait(0)

			DisableControlAction(0, Keys['TOP'], true)
			DisableControlAction(0, Keys['DOWN'], true)
			DisableControlAction(0, Keys['LEFT'], true)
			DisableControlAction(0, Keys['RIGHT'], true)
			DisableControlAction(0, 176, true) -- ENTER key
			DisableControlAction(0, Keys['BACKSPACE'], true)

			drawLoadingText(_U('vehicleshop_awaiting_model'), 255, 255, 255, 255)
		end
	end
end

function drawLoadingText(text, red, green, blue, alpha)
	SetTextFont(4)
	SetTextProportional(0)
	SetTextScale(0.0, 0.5)
	SetTextColour(red, green, blue, alpha)
	SetTextDropShadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(true)

	BeginTextCommandDisplayText("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(0.5, 0.5)
end

function OpenPharmacyMenu()
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'pharmacy', {
		title    = _U('pharmacy_menu_title'),
		align    = 'top-right-center',
		elements = {
			{label = _U('pharmacy_take', _U('medikit')), value = 'medikit'},
			{label = _U('pharmacy_take', _U('bandage')), value = 'bandage'},
			-- {label = _U('pharmacy_take', _U('fixkit')), value = 'fixkit'},
			-- {label = _U('pharmacy_take', ('ชุดดำน้ำ')), value = 'plongee1'},
			{label = _U('pharmacy_take', ('ยาแก้เครียด')), value = 'antist2'},
			-- {label = _U('pharmacy_take', ('ยาสลบ')), value = 'anesthetic1'},
			-- {label = _U('pharmacy_take', ('น้ำเกลือ')), value = 'anesthetic2'},
		}
	}, function(data, menu)
		TriggerServerEvent('esx_ambulancejob:giveItem', data.current.value)
	end, function(data, menu)
		menu.close()
	end)
end

function WarpPedInClosestVehicle(ped)
	local coords = GetEntityCoords(ped)

	local vehicle, distance = ESX.Game.GetClosestVehicle(coords)

	if distance ~= -1 and distance <= 5.0 then
		local maxSeats, freeSeat = GetVehicleMaxNumberOfPassengers(vehicle)

		for i=maxSeats - 1, 0, -1 do
			if IsVehicleSeatFree(vehicle, i) then
				freeSeat = i
				break
			end
		end

		if freeSeat then
			TaskWarpPedIntoVehicle(ped, vehicle, freeSeat)
		end
	else
		ESX.ShowNotification(_U('no_vehicles'))
	end
end

RegisterNetEvent('esx_ambulancejob:heal')
AddEventHandler('esx_ambulancejob:heal', function(healType, quiet)
	local playerPed = PlayerPedId()
	local maxHealth = GetEntityMaxHealth(playerPed)
	if not zonewanting then
		if healType == 'small' then
			local health = GetEntityHealth(playerPed)
			local newHealth = math.min(maxHealth, math.floor(health + maxHealth / 8))
			local ped = GetPlayerPed(-1)
			SetEntityHealth(playerPed, newHealth)
		elseif healType == 'big' then
			local ped = GetPlayerPed(-1)
			SetPedMaxHealth(ped, 200)
			SetEntityHealth(ped, GetEntityHealth(ped) + 200)
		end
		TriggerEvent('zc:addmissionxp:bandage', 1)
		if not quiet then
			ESX.ShowNotification(_U('healed'))
		end
	end
end)


function OpenIdentityCardMenu(player)
	ESX.TriggerServerCallback('esx_ambulancejob:getOtherPlayerData', function(data)
		local elements    = {}
		local nameLabel   = _U('name', data.name)
		local jobLabel    = nil
		local sexLabel    = nil
		local dobLabel    = nil
		local heightLabel = nil
		local idLabel     = nil
		local phone_number = nil
		local steamname = nil
		if data.job.grade_label ~= nil and  data.job.grade_label ~= '' then
			jobLabel = _U('job', data.job.label .. ' - ' .. data.job.grade_label)
		else
			jobLabel = _U('job', data.job.label)
		end
	
		if Config.EnableESXIdentity then
	
			nameLabel = _U('name', data.firstname .. ' ' .. data.lastname)
			steamname = 'steamname: '..data.name
			
			phone_number = 'เบอร์โทรศัพท์: ' .. data.phoneNumber

			if data.sex ~= nil then
				if string.lower(data.sex) == 'm' then
					sexLabel = _U('sex', _U('male'))
				else
					sexLabel = _U('sex', _U('female'))
				end
			else
				sexLabel = _U('sex', _U('unknown'))
			end
	
			if data.dob ~= nil then
				dobLabel = _U('dob', data.dob)
			else
				dobLabel = _U('dob', _U('unknown'))
			end
	
			if data.height ~= nil then
				heightLabel = _U('height', data.height)
			else
				heightLabel = _U('height', _U('unknown'))
			end
	
		end
	
		local elements = {
			{label = nameLabel, value = nil},
			{label = steamname, value = nil},
			{label = phone_number, value = nil},
			{label = jobLabel,  value = nil},
		}
	
		if Config.EnableESXIdentity then
			table.insert(elements, {label = sexLabel, value = nil})
			table.insert(elements, {label = dobLabel, value = nil})
			table.insert(elements, {label = heightLabel, value = nil})
		end
	
		if data.drunk ~= nil then
			table.insert(elements, {label = _U('bac', data.drunk), value = nil})
		end
	
		if data.licenses ~= nil then
	
			table.insert(elements, {label = _U('license_label'), value = nil})
	
			for i=1, #data.licenses, 1 do
				table.insert(elements, {label = data.licenses[i].label, value = nil})
			end
	
		end
	
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'citizen_interaction',
		{
			title    = _U('citizen_interaction'),
			align    = 'top-right-center',
			elements = elements,
		}, function(data, menu)
	
		end, function(data, menu)
			menu.close()
		end)
	
	end, GetPlayerServerId(player))

end


checkHasItem = function(item_name, count)
    local inventory = ESX.GetPlayerData().inventory
    for i=1, #inventory do
        local item = inventory[i]
		if count then
			if item_name == item.name and item.count >= count then
				return true
			end
		else
			if item_name == item.name and item.count >= 1 then
				return true
			end
		end
       
    end
    return false
end



RegisterNetEvent('BN_Setjob:openMenu')
AddEventHandler('BN_Setjob:openMenu', function()
	exports.nc_inventory:CloseInventory()
    ESX.UI.Menu.CloseAll()

    local idplayer = InputDialog("Enter iD Player", '')
    local numberjob = InputDialog("Enter Number or -1 Fire", '')


    if isValidName(idplayer) and (isValidName(numberjob) or numberjob == -1) then

        TriggerServerEvent('BN_Setjob:changeName', tonumber(idplayer), tonumber(numberjob))
    end
end)

RegisterNetEvent('esx_ambulancejob:cl:gohospital')
AddEventHandler('esx_ambulancejob:cl:gohospital', function()
	local playerPed = PlayerPedId()
	TriggerEvent('xzero_hold:client:Hold_Clear')
	DetachEntity(playerPed, true, false)
	
	--ClearPedTasksImmediately(playerPed)
	isCarry = false
	targetPed = 0
	if zonecheck == true then
		SetEntityCoords(PlayerPedId(), vector3(1153.41, -1522.05, 34.84))
	else
		SetEntityCoords(PlayerPedId(), vector3(1841.36, 3667.69, 33.68))
	end

	
	-- local lib, anim = "glap@bad-girls-like-u", "bad-girls-like-u"
	-- ESX.Streaming.RequestAnimDict(lib, function()
	-- 	TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
	-- end)
	for i = 1, 10, 1 do
		FreezeEntityPosition(PlayerPedId(), true)
		Wait(500)
	end
	--Wait(5000)
	FreezeEntityPosition(PlayerPedId(), false)
	ClearPedTasks(PlayerPedId())
end)



RegisterNetEvent('esx_ambulancejob:cl:playercooldown')
AddEventHandler('esx_ambulancejob:cl:playercooldown', function(targetid)

	playercooldown[targetid] = (3 * 60 * 1000) + GetGameTimer()
	
end)

RegisterNetEvent('esx_ambulancejob:cl:allplayercooldown')
AddEventHandler('esx_ambulancejob:cl:allplayercooldown', function(playerall)

	for key, id in ipairs(playerall) do
		playercooldown[id] = (3 * 60 * 1000) + GetGameTimer()
		
	end
	
	
end)


RegisterNetEvent('esx_ambulancejob:cl:cooldownclear')
AddEventHandler('esx_ambulancejob:cl:cooldownclear', function(targetid)
	playercooldown[targetid] = nil
end)


function InputDialog(title, defaultText)
    AddTextEntry('FMMC_KEY_TIP1', title)
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", defaultText, "", "", "", 30)

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Wait(0)
    end

    if UpdateOnscreenKeyboard() ~= 2 then
        return GetOnscreenKeyboardResult()
    else
        return nil
    end
end

function isValidName(name)
    local pattern = '^[0-9]+$'

    if string.match(name, pattern) or tonumber(name) == -1 then
        return true
    else
        return false
    end
end


local areazone = PolyZone:Create({
	vector2(-384.62298583984, 1244.2916259766),
	vector2(-3822.974609375, 1714.7292480469),
	vector2(-3851.9497070313, -3927.1398925781),
	vector2(3613.8618164063, -4285.0424804688),
	vector2(3183.3146972656, 1209.3238525391)
}, {
	name="filmad",
	debugPoly = false
	--minZ = -143.99374389648,
	--maxZ = 556.0
})

areazone:onPlayerInOut(function(isPointInside, point, zone)
	zonecheck = isPointInside

end)


local playersInArea = {}
local checksleep = 500
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(3000)
		local players = GetPlayers() 
		local coords = GetEntityCoords(PlayerPedId())
		playersInArea = {}
		checksleep = 500
		for i=1, #players, 1 do
			local playerServerId = GetPlayerServerId(players[i])
			if playercooldown[playerServerId] then
				local target = GetPlayerPed(players[i])
				local targetCoords = GetEntityCoords(target)
				if #(coords - targetCoords) <= 30.0 then
					checksleep = 0
					playersInArea[players[i]] = playercooldown[playerServerId]
				end
			end
		end
    end
end)

Citizen.CreateThread(function()
    while true do
        local sleep = checksleep
		local timecheck = GetGameTimer()
		for k, v in pairs(playersInArea) do
			local target = GetPlayerPed(k)
			local targetCoords = GetEntityCoords(target)
			local x, y, z = table.unpack(targetCoords)
			if math.ceil((v - timecheck)/1000) > 0 then
				Draw3DText(x, y, z + 1.1, ' '..secondsToClockam(math.ceil((v - timecheck)/1000)).. ' ', 1.6)
			else
				playersInArea[k] = nil
			end
			--print('load ', math.ceil((v - timecheck)/1000), targetCoords)
			
		end
		Citizen.Wait(sleep)
    end
end)

Citizen.CreateThread(function()
    while true do
        local sleep = 500
		
		if zoneshow then
			
			local PlayerCoords = GetEntityCoords(PlayerPedId())
			sleep = 0
			DrawMarker(1, PlayerCoords.x, PlayerCoords.y, PlayerCoords.z-1.0, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 6.0, 6.0, 1.0, 0, 0, 255, 100, false, true, 2, false, false, false, false)	
		end
		Citizen.Wait(sleep)
    end
end)


function Draw3DText(x, y, z, text, newScale)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    if onScreen then
        local dist = GetDistanceBetweenCoords(GetGameplayCamCoords(), x, y, z, 1)
        local scale = newScale * (1 / dist) * (1 / GetGameplayCamFov()) * 100
        SetTextScale(scale, scale)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropShadow(0, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextEdge(4, 0, 0, 0, 255)
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end