-- ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
-- ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

---------------------------------------------------
------------------- Server Side -------------------
---------------------------------------------------

-- Function นี้จะถูกเรียกใช้ก่อนบันทึกค่าการเบิกยานพาหนะออกจากการาจ
-- [ playerId: ID ของผู้เล่น | zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | plate: ทะเบียนของยานพาหนะ ]
Config.ServerWillSpawnVehicle = function(playerId, zoneType, zoneName, plate)
	return true
end
-- Function นี้จะถูกเรียกใช้หลังบันทึกค่าการเบิกยานพาหนะออกจากการาจสำเร็จ
-- [ playerId: ID ของผู้เล่น | zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | plate: ทะเบียนของยานพาหนะ ]
Config.ServerSpawnedVehicle = function(playerId, zoneType, zoneName, plate)

end

-- Function นี้จะถูกเรียกใช้ก่อนบันทึกค่าการกู้ยานพาหนะออกจากพาวน์
-- [ playerId: ID ของผู้เล่น | zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | plate: ทะเบียนของยานพาหนะ ]
Config.ServerWillPoundVehicle = function(playerId, zoneType, zoneName, plate)
	return true
end
-- Function นี้จะถูกเรียกใช้หลังบันทึกค่าการกู้ยานพาหนะออกจากพาวน์สำเร็จ
-- [ playerId: ID ของผู้เล่น | zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) | plate: ทะเบียนของยานพาหนะ ]
Config.ServerPoundedVehicle = function(playerId, zoneType, zoneName, plate)
	--TriggerClientEvent('neko_mission:fix_update', playerId, 9, 1)
	pcall(function()
		exports['xcore-quest']:addQuest(playerId, "pound", 1)
	end)
end

-- Function นี้จะถูกเรียกใช้ก่อนบันทึกค่าการเก็บยานพาหนะเข้าการาจ
-- [ playerId: ID ของผู้เล่น | zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) ]
-- [ plate: ทะเบียนของยานพาหนะ | target: ชื่อของการาจปลายทางที่ต้องการเก็บยานพาหนะ ]
Config.ServerWillStoreVehicle = function(playerId, zoneType, zoneName, plate, target)
	return true
end
-- Function นี้จะถูกเรียกใช้หลังบันทึกค่าการเก็บยานพาหนะเข้าการาจสำเร็จ
-- [ playerId: ID ของผู้เล่น | zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) ]
-- [ plate: ทะเบียนของยานพาหนะ | target: ชื่อของการาจปลายทางที่ต้องการเก็บยานพาหนะ ]
Config.ServerStoredVehicle = function(playerId, zoneType, zoneName, plate, target)

end

-- Function นี้จะถูกเรียกใช้ก่อนบันทึกค่าการเคลื่อนย้ายยานพาหนะเข้าการาจ
-- [ playerId: ID ของผู้เล่น | zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) ]
-- [ plate: ทะเบียนของยานพาหนะ | target: ชื่อของการาจปลายทางที่ต้องการเก็บยานพาหนะ ]
Config.ServerWillSendVehicleToGarage = function(playerId, zoneType, zoneName, plate, target)
	return true
end
-- Function นี้จะถูกเรียกใช้หลังบันทึกค่าการเคลื่อนย้ายยานพาหนะเข้าการาจสำเร็จ
-- [ playerId: ID ของผู้เล่น | zoneType: ชนิดของโซน GARAGES, POUNDS, REMOVERS | zoneName: ชื่อของโซน (ตามชื่อไฟล์) ]
-- [ plate: ทะเบียนของยานพาหนะ | target: ชื่อของการาจปลายทางที่ต้องการเก็บยานพาหนะ ]
Config.ServerSentVehicleToGarage = function(playerId, zoneType, zoneName, plate, target)

end

-- Function นี้จะถูกเรียกใช้ก่อนเปิดช่องเก็บของยานพาหนะ
-- [ playerId: ID ของผู้เล่น | plate: ทะเบียนของยานพาหนะ | storageType: ชนิดของช่องเก็บของยานพาหนะ ]
Config.ServerWillOpenStorage = function(playerId, plate, storageType)
	return true
end
-- Function นี้จะถูกเรียกใช้หลังเปิดช่องเก็บของยานพาหนะสำเร็จ
-- [ playerId: ID ของผู้เล่น | plate: ทะเบียนของยานพาหนะ | storageType: ชนิดของช่องเก็บของยานพาหนะ ]
Config.ServerOpenedStorage = function(playerId, plate, storageType)

end