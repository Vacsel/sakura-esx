-- ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
-- ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

---------------------------------------------------
------------------- Client Side -------------------
---------------------------------------------------

local itemhouse = {
	['House_01'] = 'house_key_1',
	['House_02'] = 'house_key_2',
	['House_03'] = 'house_key_3',
	['House_04'] = 'house_key_4',
	['House_05'] = 'house_key_5',
	['House_06'] = 'house_key_6',
	['House_07'] = 'house_key_7',
	['House_08'] = 'house_key_8',
	['House_09'] = 'house_key_9',
	['House_10'] = 'house_key_10'

}


-- Function นี้จะถูกเรียกใช้เมื่อเปิดหน้าต่างการาจ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
Config.ClientOpenedGarage = function(zoneType, zoneName, zoneCoords)

end

-- Function นี้จะถูกเรียกใช้เมื่อปิดหน้าต่างการาจ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
Config.ClientClosedGarage = function(zoneType, zoneName, zoneCoords)

end

-- Function นี้จะถูกเรียกใช้เมื่อเข้าโซนต่างๆ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
Config.ClientEnteredZone = function(zoneType, zoneName, zoneCoords)
	--print(zoneName)
    

end

-- Function นี้จะถูกเรียกใช้เมื่อออกจากโซนต่างๆ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
Config.ClientExitedZone = function(zoneType, zoneName, zoneCoords)

end

-- Function นี้จะถูกเรียกใช้ก่อนเบิกยานพาหนะออกจากการาจ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
-- [ plate: ทะเบียนของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | properties: คุณสมบัติของยานพาหนะ ]
Config.ClientWillSpawnVehicle = function(zoneType, zoneName, zoneCoords, plate, properties)

	if string.find(zoneName, "House_") then
		if string.find(zoneName, "next") then
			local newZoneName = string.gsub(zoneName, "next", "")
			if exports.BN_CouncilManager:GetHouseLevel(newZoneName) >= 6 then
				if checkhasitem(itemhouse[newZoneName]) then
					return true
				else
					return false
				end
				
			else
				return false
			end
		-- elseif exports.BN_CouncilManager:GetHouseLevel(zoneName) <= 5 then
		-- 	return true
		-- else
		-- 	return false
		end
	end
	
    return true
end
-- Function นี้จะถูกเรียกใช้หลังเบิกยานพาหนะออกจากการาจสำเร็จ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
-- [ vehicle: เลข Entity ID ของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | properties: คุณสมบัติของยานพาหนะ ]
Config.ClientSpawnedVehicle = function(vehicle, zoneType, zoneName, zoneCoords, plate, properties)
	pcall(function()
		exports['azael_dc-serverlogs']:insertData({
			event = 'NC_GetVehicleGarage',
			content = ('เบิก ยานพาหนะ %s ทะเบียน %s ออกจาก %s (ZONE: %s)'):format(GetDisplayNameFromVehicleModel(properties.model), plate, zoneType, zoneName),
			coords = type(zoneCoords) == 'vector3' and zoneCoords,
			color = 7
		})
	end)
end

-- Function นี้จะถูกเรียกใช้ก่อนกู้ยานพาหนะออกจากพาวน์
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
-- [ plate: ทะเบียนของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | properties: คุณสมบัติของยานพาหนะ ]
Config.ClientWillPoundVehicle = function(zoneType, zoneName, zoneCoords, plate, properties)
	return true
end
-- Function นี้จะถูกเรียกใช้หลังกู้ยานพาหนะออกจากพาวน์สำเร็จ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
-- [ vehicle: เลข Entity ID ของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | properties: คุณสมบัติของยานพาหนะ ]
Config.ClientPoundedVehicle = function(vehicle, zoneType, zoneName, zoneCoords, plate, properties)
	pcall(function()
		exports['azael_dc-serverlogs']:insertData({
			event = 'NC_GetPoundVehicleGarage',
			content = ('เบิก ยานพาหนะ %s ทะเบียน %s ออกจาก %s (ZONE: %s)'):format(GetDisplayNameFromVehicleModel(properties.model), plate, zoneType, zoneName),
			coords = type(zoneCoords) == 'vector3' and zoneCoords,
			color = 7
		})
	end)
end

-- Function นี้จะถูกเรียกใช้ก่อนเก็บยานพาหนะเข้าการาจ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
-- [ plate: ทะเบียนของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | target: ชื่อของการาจปลายทางที่ต้องการเก็บยานพาหนะ | properties: คุณสมบัติของยานพาหนะ ]
Config.ClientWillStoreVehicle = function(zoneType, zoneName, zoneCoords, plate, target, properties)
	if string.find(zoneName, "House_") then
		if string.find(zoneName, "next") then
			local newZoneName = string.gsub(zoneName, "next", "")
			if exports.BN_CouncilManager:GetHouseLevel(newZoneName) >= 6 then
				return true
			else
				return false
			end
		elseif exports.BN_CouncilManager:GetHouseLevel(zoneName) <= 5 then
			return true
		else
			return false
		end
	end
	return true
end
-- Function นี้จะถูกเรียกใช้หลังเก็บยานพาหนะเข้าการาจสำเร็จ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
-- [ plate: ทะเบียนของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | target: ชื่อของการาจปลายทางที่ต้องการเก็บยานพาหนะ | properties: คุณสมบัติของยานพาหนะ ]
Config.ClientStoredVehicle = function(zoneType, zoneName, zoneCoords, plate, target, properties)
	pcall(function()
		exports['azael_dc-serverlogs']:insertData({
			event = 'NC_StoreVehicleGarage',
			content = ('เก็บ ยานพาหนะ %s ทะเบียน %s เข้าโซน %s (ZONE: %s)'):format(GetDisplayNameFromVehicleModel(properties.model), plate, zoneType, zoneName),
			coords = type(zoneCoords) == 'vector3' and zoneCoords,
			color = 7
		})
	end)
end

-- Function นี้จะถูกเรียกใช้ก่อนเคลื่อนย้ายยานพาหนะเข้าการาจ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
-- [ plate: ทะเบียนของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | target: ชื่อของการาจปลายทางที่ต้องการเก็บยานพาหนะ | properties: คุณสมบัติของยานพาหนะ ]
Config.ClientWillSendVehicleToGarage = function(zoneType, zoneName, zoneCoords, plate, target, properties)
	return true
end
-- Function นี้จะถูกเรียกใช้ก่อนหลังย้ายยานพาหนะเข้าการาจสำเร็จ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
-- [ plate: ทะเบียนของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | target: ชื่อของการาจปลายทางที่ต้องการเก็บยานพาหนะ | properties: คุณสมบัติของยานพาหนะ ]
Config.ClientSentVehicleToGarage = function(zoneType, zoneName, zoneCoords, plate, target, properties)

end

-- Function นี้จะถูกเรียกใช้หลังเบิกยานพาหนะออกจากการาจสำเร็จ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
-- [ vehicle: เลข Entity ID ของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | properties: คุณสมบัติของยานพาหนะ ]
Config.ClientSpawnedVehicleByServer = function(vehicle, plate, properties)
	TriggerEvent('nc_garage:spawnedVehicle', vehicle, plate, properties)
end

-- Function นี้จะถูกเรียกใช้หลังเก็บยานพาหนะเข้าการาจสำเร็จ
-- [ zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | zoneCoords: ตำแหน่งของจุดในโซนที่อยู่ขณะนั้น ]
-- [ plate: ทะเบียนของยานพาหนะ | plate: ทะเบียนของยานพาหนะ | target: ชื่อของการาจปลายทางที่ต้องการเก็บยานพาหนะ | properties: คุณสมบัติของยานพาหนะ ]
Config.ClientStoredVehicleByServer = function(plate, target, properties)

end

-- Function นี้จะถูกเรียกใช้งานเมื่อมี Error
-- errAction จะมี 'spawn' => เบิก/กู้ยานพาหนะ | 'store' => เก็บยานพาหนะ | 'send_to_garage' => เคลื่อนย้ายยานพาหนะ | 'capture_mode' => โหมดถ่ายรูปยานพาหนะ
-- errType ที่ถูกส่งมาจะมีอยู่ 1 ชนิดคือ 'error'
-- errText ที่จะถูกส่งมาในรูปแบบต่างๆดังนี้
-- outside_range					=> เบิก/กู้ยานพาหนะ | เก็บยานพาหนะ | เคลื่อนย้ายยานพาหนะ - คุณไม่อยู่ในระยะที่กำหนด
-- vehicle_not_found				=> เบิก/กู้ยานพาหนะ | เก็บยานพาหนะ | เคลื่อนย้ายยานพาหนะ - ไม่พบยานพาหนะของคุณ
-- source_account_not_enough		=> เบิก/กู้ยานพาหนะ | เก็บยานพาหนะ | เคลื่อนย้ายยานพาหนะ - คุณมี %s ในกระเป๋าไม่เพียงพอ
-- already_in_garage				=> เก็บยานพาหนะ | เคลื่อนย้ายยานพาหนะ - พบยานพาหนะของคุณอยู่ในการาจอยู่แล้ว
-- not_in_a_vehicle					=> เก็บยานพาหนะ - คุณไม่ได้อยู่บนยานพาหนะ
-- invalid_vehicle_model			=> โหมดถ่ายรูปยานพาหนะ - ไม่พบโมเดลยานพาหนะ %s
Config.ClientNotificationError = function(errAction, errType, errText, data)
	-- ตัวอย่างการเขียน Notification ต่างๆ
	-- outside_range					=> 'error' - คุณไม่อยู่ในระยะที่กำหนด
	-- vehicle_not_found				=> 'error' - ไม่พบยานพาหนะของคุณ
	-- source_account_not_enough		=> 'error' - คุณมี เงิน ในกระเป๋าไม่เพียงพอ
	-- already_in_garage				=> 'error' - พบยานพาหนะของคุณอยู่ในการาจอยู่แล้ว
	-- not_in_a_vehicle					=> 'error' - คุณไม่ได้อยู่บนยานพาหนะ
	-- invalid_vehicle_model			=> 'error' - ไม่พบโมเดลยานพาหนะ test
end

checkhasitem = function(item_name)
    local inventory = ESX.GetPlayerData().inventory
    for i=1, #inventory do
        local item = inventory[i]
        if item_name == item.name and item.count > 0 then
            return true
        end
    end
    return false
end
