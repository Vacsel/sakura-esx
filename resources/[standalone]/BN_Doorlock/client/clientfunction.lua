
nearbyDoors = nearbyDoors or {}

-- track doors near the player using ox_lib points
local function handleDoorObjects(k, doorID)
    if doorID.doors then
        for _, v in ipairs(doorID.doors) do
            if not v.object or not DoesEntityExist(v.object) then
                v.object = GetClosestObjectOfType(v.objCoords, 1.0, v.objName, false, false, false)
            end
            FreezeEntityPosition(v.object, doorID.locked)
            if doorID.locked then
                SetEntityCoords(v.object, v.objCoords)
            end
            if doorID.locked and v.objYaw and GetEntityRotation(v.object).z ~= v.objYaw then
                SetEntityCoords(v.object, v.objCoords)
                SetEntityRotation(v.object, 0.0, 0.0, v.objYaw, 2, true)
            end
        end
    else
        if not doorID.object or not DoesEntityExist(doorID.object) then
            doorID.object = GetClosestObjectOfType(doorID.objCoords, 1.0, doorID.objName, false, false, false)
        end
        FreezeEntityPosition(doorID.object, doorID.locked)
        if doorID.locked then
            SetEntityCoords(doorID.object, doorID.objCoords)
        end
        if doorID.locked and doorID.objYaw and GetEntityRotation(doorID.object).z ~= doorID.objYaw then
            SetEntityCoords(doorID.object, doorID.objCoords)
            SetEntityRotation(doorID.object, 0.0, 0.0, doorID.objYaw, 2, true)
        end
    end
end

CreateThread(function()
    for k, door in ipairs(Config.DoorList) do
        local coords = door.textCoords or (door.doors and door.doors[1].objCoords) or door.objCoords
        local point = lib.points.new({
            coords = coords,
            distance = 20,
            nearby = function()
                handleDoorObjects(k, door)
            end
        })

        point:onEnter(function()
            nearbyDoors[k] = true
        end)

        point:onExit(function()
            nearbyDoors[k] = nil
        end)
    end
end)

function localscriptXs()
Citizen.CreateThread(function()
	while true do
		
		local playerCoords = GetEntityCoords(PlayerPedId())
		local fontId = RegisterFontId('font4thai')	
		test = true
		local opendoor = false
		local sleep = 500
                for k,_ in pairs(nearbyDoors) do
                        local doorID = Config.DoorList[k]
			local distance

			if doorID.doors then
				distance = #(playerCoords - doorID.doors[1].objCoords)
			else
				distance = #(playerCoords - doorID.objCoords)
			end

	
			local maxDistance = 1.25
			
			if doorID.distance then
				maxDistance = doorID.distance
			end
           
			if distance < maxDistance then
                local isAuthorized = IsAuthorized(doorID)
                local displayText = _U('unlocked')
				sleep = 0
				if not boom[k] then
					
					local size = 0.7
					if doorID.size then
						size = doorID.size
					end

					if doorID.locked then
						if doorID.label ~= nil then 
							displayText = '~r~<font face="font4thai">🔒 ประตู '..doorID.label..' ล็อค </font>~s~'
						else
							displayText = '~r~<font face="font4thai">🔒 ประตู ล็อค </font>~s~'
						end
					else
						if doorID.label ~= nil then 
							displayText = '~g~<font face="font4thai">🔒 ประตู '..doorID.label..' ปลดล็อค </font>~s~'
						else
							displayText = '~g~<font face="font4thai">🔒 ประตู ปลดล็อค </font>~s~'
						end
					end

					if isAuthorized then
						displayText = _U('press_button', displayText)
					end
					if doorID.house then
					
						local houselevel = exports.BN_CouncilManager:GetHouseLevel(doorID.house)
						if doorID.nexthouse == true then
							
							if houselevel >= 5 then 
								DrawText3D2(doorID.textCoords, displayText, size, fontId)
								opendoor = true
							else
								opendoor = false
							end
						elseif houselevel <= 4 then 
							DrawText3D2(doorID.textCoords, displayText, size, fontId)
							opendoor = true
						else
							opendoor = false
						end
					else
						DrawText3D2(doorID.textCoords, displayText, size, fontId)
						opendoor = true
					end
					
					
					--DrawText3D(doorID.textCoords.x, doorID.textCoords.y,doorID.textCoords.z-0.3 , displayText, size)
					if doorID.boom and setboom[k] and not isAuthorized and doorID.locked and doorID.textCoords ~= nil then 
						if doorID.house ~= nil then
							local houselevel = exports.BN_CouncilManager:GetHouseLevel(doorID.house)
							if doorID.nexthouse then
								if houselevel >= 5 then 
									DrawText3D2((doorID.textCoords- vector3( 0, 0, 0.3)), 'กด [G] เพื่อวางระเบิด เหลือ '..checkcountboom[k], size, fontId)
								end
							elseif houselevel <= 4 then 
								DrawText3D2((doorID.textCoords- vector3( 0, 0, 0.3)), 'กด [G] เพื่อวางระเบิด เหลือ '..checkcountboom[k], size, fontId)
							end
						else
							DrawText3D2((doorID.textCoords- vector3( 0, 0, 0.3)), 'กด [G] เพื่อวางระเบิด เหลือ '..checkcountboom[k], size, fontId)
						end
						
						--DrawText3D(doorID.textCoords.x, doorID.textCoords.y,doorID.textCoords.z-0.9 , 'กด [G] เพื่อวางระเบิด เหลือ '..checkcountboom[k] , size)
					end
					if IsControlJustReleased(0, 38) and checkdoor == false and opendoor == true then
						sleep = 0
						if isAuthorized then
							doorID.locked = not doorID.locked
                            TriggerEvent('BN_Doorlock:Checkdoorcooldown')
                          
                          --  Wait(Config.Deral)
                            Notify()
                            --print(doorID.locked)
                            if Config.Autodoor then
                                if doorID.locked == false then
                                    TriggerEvent('BN_Doorlock:setState3', k, doorID.locked)
                                else
                                    TriggerServerEvent('BN_Doorlock:updateState', k, true)
                                end
                            else
                                TriggerServerEvent('BN_Doorlock:updateState', k, doorID.locked) -- Broadcast new state of the door to everyone
                            end
							if setboom[k] and doorID.locked then
								setboom[k] = false
							else
								setboom[k] = true
							end
                           
						elseif doorID.item then
							if checkHasItem(doorID.itemname) then
								doorID.locked = not doorID.locked
                              
                                if Config.Autodoor then
                                    --if doorID.locked == true then
                                        TriggerEvent('BN_Doorlock:setState3', k, doorID.locked)
                                   -- else
                                        --TriggerServerEvent('BN_Doorlock:updateState', k, true)
                                   -- end
                                else
                                    TriggerServerEvent('BN_Doorlock:updateState', k, doorID.locked) -- Broadcast new state of the door to everyone
                                end
								
								--TriggerEvent('BN_Doorlock:setState2', k, doorID.locked)
								--TriggerServerEvent('BN_Doorlock:updateState', k, doorID.locked) -- Broadcast new state of the door to everyone
								-- if setboom[k] and doorID.locked then
								-- 	setboom[k] = false
								-- end
							else
								--ESX.ShowNotification('คุณไม่มีคีย์การ์ด')
							 	--exports['mythic_notify']:DoHudText('Error', 'คุณไม่มีคีย์การ์ด')
								local checkdooron = false
								for _,v in ipairs(Config.DoorExit) do
									 if GetDistanceBetweenCoords(playerCoords, v.textCoords, false) < 2 then
										 checkdooron = true
										 doorID.locked = not doorID.locked
										 --print(doorID.locked)
										-- TriggerEvent('BN_Doorlock:setState2', k, doorID.locked)
										
                                        if Config.Autodoor then
                                            if doorID.locked == false then
                                                TriggerEvent('BN_Doorlock:setState3', k, doorID.locked)
                                            else
                                                TriggerServerEvent('BN_Doorlock:updateState', k, true)
                                            end
                                        else
                                            TriggerServerEvent('BN_Doorlock:updateState', k, doorID.locked) -- Broadcast new state of the door to everyone
                                        end
										 --TriggerServerEvent('BN_Doorlock:updateState', k, doorID.locked) -- Broadcast new state of the door to everyone
										--  if setboom[k] and doorID.locked then
										-- 	 setboom[k] = false
										--  end
									 end
 
								 end
								 --ESX.ShowNotification('คุณไม่มีคีย์การ์ด')
								  --exports['mythic_notify']:DoHudText('Error', 'คุณไม่มีคีย์การ์ด')
								 if not checkdooron then
									NotifyItemdoor()
								end
							end
							-- ESX.TriggerServerCallback('BN_Doorlock:checkitemname', function(data)
							-- 	if data then
							-- 		ESX.ShowNotification('เปิดประตู')
							-- 		exports['mythic_notify']:DoHudText('Error', 'เปิดประตู')
							-- 	else
							-- 		ESX.ShowNotification('คุณไม่มีคีย์การ์ด')
							-- 		exports['mythic_notify']:DoHudText('Error', 'คุณไม่มีคีย์การ์ด')
							-- 	end
							-- end,doorID.itemname, k, not doorID.locked)
						end
					end
					if doorID.boom and IsControlJustReleased(0, Config.bommdoor) and opendoor == true and not isAuthorized and (setboom[k]) and (check == false) then -- G
						--ESX.TriggerServerCallback('BN_Doorlock:checkitem', function(data)
							--if data then
						if CheckAlldoorRepairandBoom() == true then
							if checkHasItemBoom() then 
								check = true
								local pos = GetEntityCoords(PlayerPedId())
								--TriggerEvent("esx:setstatus", k, false)
								TriggerServerEvent('BN_Doorlock:removeitem', checkHasItemBoom())
								TriggerEvent("mythic_progbar:client:progress", {
									name = "unique_action_name",
									duration = Config.timesetboom,
									label = Config.label,
									useWhileDead = false,
									canCancel = true,
									controlDisables = {
										disableMovement = true,
										disableCarMovement = true,
										disableMouse = false,
										disableCombat = true,
									},
									animation = {
										animDict = "amb@Medic@standing@kneel@enter",
										anim = "enter",
									},
									prop = {
										model = "prop_c4_final",
									}
								}, function(status)
									if status then
										--ESX.ShowNotification('วางระเบิดไม่สำเร็จ')
										--TriggerEvent("esx:setstatus", k, true)
										TriggerEvent("pNotify:SendNotification", {
											text = 'วางระเบิดไม่สำเร็จ',
											type = "success",
											timeout = 3000,
											layout = "bottomCenter",
											queue = "global"
										})
										check = false
									else
										local playerCoords2 = GetEntityCoords(PlayerPedId())
										if GetDistanceBetweenCoords(playerCoords2, pos, false)  > 10 then
											AddExplosion(playerCoords2.x, playerCoords2.y, playerCoords2.z, 2, 50, true, true, false)
											SetEntityHealth(PlayerPedId(), 0)
											TaskLeaveVehicle(player, GetVehiclePedIsIn(player, false), 1)
											ClearPedTasks(player)
											--ESX.ShowNotification('วางระเบิดไม่สำเร็จ')
											TriggerEvent("pNotify:SendNotification", {
												text = 'วางระเบิดไม่สำเร็จ',
												type = "success",
												timeout = 3000,
												layout = "bottomCenter",
												queue = "global"
											})
											--TriggerEvent("esx:setstatus", k, true)
											TriggerEvent("pNotify:SendNotification", {
												text = 'ทดสอบ',
												type = "success",
												timeout = 3000,
												layout = "bottomCenter",
												queue = "global"
											})
											check = false
										else
											local pos = GetEntityCoords(PlayerPedId())
											playing = true
											check = false
											TriggerServerEvent("myevent:soundStatus")
											--TriggerServerEvent("InteractSound_SV:PlayWithinDistance", pos, Config.sound ,0.2)
											--exports.xsound:PlayUrlPos(musicId, Config.sound, 1.0, pos, false)

											Citizen.Wait(Config.timerA)
											AddExplosion(
												pos.x , 
												pos.y , 
												pos.z ,
												Config.integer , 
												Config.damage , 
												Config.sound , 
												Config.invisible , 
												Config.camera 
											)
											if checkcountboom[k] == 1 then
												TriggerServerEvent('BN_Doorlock:updateState', k, false, true)
						
											end
											TriggerServerEvent('BN_Doorlock:boomd', k, true)
											TriggerEvent("pNotify:SendNotification", {
												text = 'ระเบิดประตูสำเร็จ',
												type = "success",
												timeout = 3000,
												layout = "bottomCenter",
												queue = "global"
											})
											-- เเจ้งเตือนตำรวจ
											--TriggerEvent('Porpy_policealert:alertNet', Config.policetype)
											-- TriggerEvent("Porpy_policealert:alertNet", Config.policetype)
											-- local PedPosition = GetEntityCoords(PlayerPedId())
											-- local PlayerCoords = { x = PedPosition.x, y = PedPosition.y, z = PedPosition.z }
											-- TriggerServerEvent('esx_addons_gcphone:startCall', 'police', Config.policetext, PlayerCoords, {
											-- 	PlayerCoords = { x = PedPosition.x, y = PedPosition.y, z = PedPosition.z },
											-- })
										end
										
									end
								end)	
								
							else
								
								--ShowNotifi()
                                NotifyNeedBoomDoor()
							end
						else
							NotifyCheckBoom()
						end
						--end,Config.item, true)
					end
				else
					if isAuthorized  then -- เช็ค อาชีพ
						DrawText3D2((doorID.textCoords- vector3( 0, 0, 0.1)), 'ประตูพัง', size, fontId)
						if Zonerepoairdoor or Config.repairremove == true then
							DrawText3D2((doorID.textCoords- vector3( 0, 0, 0.3)), 'กด [G] เพื่อซ่อมประตู จำนวน '..checkcountrepair[k], size, fontId)
							--DrawText3D(doorID.textCoords.x, doorID.textCoords.y,doorID.textCoords.z-0.3 , 'กด [G] เพื่อซ่อมประตู จำนวน '..checkcountrepair[k], size)
							if IsControlJustReleased(0, Config.bommdoor) and (check == false) then
								--ESX.TriggerServerCallback('BN_Doorlock:checkitem', function(data)
								if CheckAlldoorRepairandBoom() == true then
									if checkHasItem(Config.repairitem) or Config.repairremove == false then 
										check = true
                                        if Zonerepoairdoor then
                                            ESX.Game.DeleteObject(Handspawned)
                                        end
										Zonerepoairdoor = false
                                       
										if Config.repairremove == true then
											TriggerServerEvent('BN_Doorlock:removeitem', Config.repairitem)
										end
									--	TriggerServerEvent('BN_Doorlock:removeitem', Config.repairitem)
										local pos = GetEntityCoords(PlayerPedId())
										TriggerEvent("mythic_progbar:client:progress", {
											name = "unique_action_name",
											duration = Config.TimeRepair,
											label = 'กำลังซ่อมประตู',
											useWhileDead = false,
											canCancel = true,
											controlDisables = {
												disableMovement = true,
												disableCarMovement = true,
												disableMouse = false,
												disableCombat = true,
											},
											animation = {
												animDict = "amb@Medic@standing@kneel@enter",
												anim = "enter",
											},
										}, function(status)
											if status then
												ESX.ShowNotification('ซ่อมประตูไม่สำเร็จ')
												check = false
											elseif check then
												check = false
												local playerCoords2 = GetEntityCoords(PlayerPedId())
												if GetDistanceBetweenCoords(playerCoords2, pos, false) > 15.0 then
													AddExplosion(playerCoords2.x, playerCoords2.y, playerCoords2.z, 2, 50, true, true, false)
													SetEntityHealth(PlayerPedId(), 0)
													TaskLeaveVehicle(player, GetVehiclePedIsIn(player, false), 1)
													ClearPedTasks(player)
												else
													--TriggerServerEvent('BN_Doorlock:boomd', k, false)
													TriggerServerEvent('BN_Doorlock:boomd', k, false)
													if checkcountrepair[k] == 1 then
														TriggerServerEvent('BN_Doorlock:updateState', k, true, true)
													end
                                                    NotifyRepair()
													
													-- TriggerServerEvent('BN_Doorlock:removeitem', Config.repairitem)
												end
											end
										end)
									else
										-- exports.nc_notify:PushNotification({

										-- 	title = 'ระบบประตู',  -- หัวเรื่อง
										-- 	description = 'คุณต้องมีที่ซ่อมประตู',  -- รายละเอียด หากต้องการให้แสดงปุ่มกดให้ใช้ tag <btn></btn>
										-- 	duration = 6000  -- ระยะเวลาการแสดง Notify
										-- })
                                        NotifyNeedRepair()
										
									end
								else
									NotifyCheckRepair()
								end
								--end,Config.repairitem, Config.repairremove)
							end
						end
					else
						DrawText3D2((doorID.textCoords- vector3( 0, 0, 0.1)), 'ประตูพัง', size, fontId)
						--DrawText3D(doorID.textCoords.x, doorID.textCoords.y,doorID.textCoords.z-0.3 , 'ประตูพัง', size)
						if Zonerepoairdoor or Config.repairremove == true then
							DrawText3D2((doorID.textCoords- vector3( 0, 0, -0.3)), 'กด [G] เพื่อซ่อมประตู จำนวน '..checkcountrepair[k], size, fontId)
							--DrawText3D(doorID.textCoords.x, doorID.textCoords.y,doorID.textCoords.z-0.7 , 'กด [G] เพื่อซ่อมประตู จำนวน '..checkcountrepair[k], size)
							if IsControlJustReleased(0, Config.bommdoor) and (check == false) then
								
								--ESX.TriggerServerCallback('BN_Doorlock:checkitem', function(data)
									 if checkHasItem(Config.repairitem) or Config.repairremove == false then 
										check = true
										local pos = GetEntityCoords(PlayerPedId())
                                        if Zonerepoairdoor then
                                            ESX.Game.DeleteObject(Handspawned)
                                        end
										Zonerepoairdoor = false
                                        
										if Config.repairremove == true then
											TriggerServerEvent('BN_Doorlock:removeitem', Config.repairitem)
										end
										TriggerEvent("mythic_progbar:client:progress", {
											name = "unique_action_name",
											duration = Config.TimeRepair,
											label = 'กำลังซ่อมประตู',
											useWhileDead = false,
											canCancel = true,
											controlDisables = {
												disableMovement = true,
												disableCarMovement = true,
												disableMouse = false,
												disableCombat = true,
											},
											animation = {
												animDict = "amb@Medic@standing@kneel@enter",
												anim = "enter",
											},
										}, function(status)
											if status then
												ESX.ShowNotification('ซ่อมประตูไม่สำเร็จ')
											elseif check then
												local playerCoords2 = GetEntityCoords(PlayerPedId())
												if GetDistanceBetweenCoords(playerCoords2, pos, false) > 15.0 then
													AddExplosion(playerCoords2.x, playerCoords2.y, playerCoords2.z, 2, 50, true, true, false)
													SetEntityHealth(PlayerPedId(), 0)
													TaskLeaveVehicle(player, GetVehiclePedIsIn(player, false), 1)
													ClearPedTasks(player)
												else
													--TriggerServerEvent('BN_Doorlock:boomd', k, false)
													TriggerServerEvent('BN_Doorlock:boomd', k, false)
													if checkcountrepair[k] == 1 then
														TriggerServerEvent('BN_Doorlock:updateState', k, true, true)
													end
													TriggerEvent("pNotify:SendNotification", {
														text = 'ซ่อมประตูสำเร็จ',
														type = "success",
														timeout = 3000,
														layout = "bottomCenter",
														queue = "global"
													})
													-- TriggerServerEvent('BN_Doorlock:removeitem', Config.repairitem)
												end
												check = false
											end
										end)
									else
										-- exports.nc_notify:PushNotification({

										-- 	title = 'ระบบประตู',  -- หัวเรื่อง
										-- 	description = 'คุณต้องมีที่ซ่อมประตู',  -- รายละเอียด หากต้องการให้แสดงปุ่มกดให้ใช้ tag <btn></btn>
										-- 	duration = 6000  -- ระยะเวลาการแสดง Notify
										-- })
										exports['mythic_notify']:DoHudText('Error', 'คุณต้องมีที่ซ่อมประตู')
									end
								--end,Config.repairitem, Config.repairremove)
							end
						end
					end
				end
			end
        
		end
		Citizen.Wait(sleep)
		-- if test then
		-- 	Wait(500)
		-- end
	end
end)
end