-- ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
-- ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

Config = {}

Config.EventRoute = {
	['getSharedObject'] = 'esx:getSharedObject',			-- Default: 'esx:getSharedObject' *รองรับการใส่ชื่อ Event และ Function (exports.es_extended.getSharedObject)
	['onPlayerDeath'] = 'esx:onPlayerDeath',				-- Default: 'esx:onPlayerDeath'
	['onPlayerSpawn'] = 'playerSpawned',					-- Default: 'esx:onPlayerSpawn'
	['setJob'] = 'esx:setJob',								-- Default: 'esx:setJob'
	['setAccountMoney'] = 'esx:setAccountMoney',			-- Default: 'esx:setAccountMoney'

	-- สำหรับ essentialmode (es_extended 1.1) * ไม่จำเป็นต้องแก้ไขส่วนนี้
	['addedMoney'] = 'es:addedMoney',						-- Default: 'es:addedMoney'
	['removedMoney'] = 'es:removedMoney'					-- Default: 'es:removedMoney'
}

Config.UseExternalImagesResource = true						-- เปิดใช้งาน Resource รูปแยก (จะใช้รูปจาก Resource nc_garage_images แทน)

Config.Debug = false										-- Debug Mode

Config.Blur = true											-- เปิดโหมด Blur เมื่อเปิดหน้าต่างการาจ

Config.WarningLevel = {
	low_engine_health = 20,									-- เตือนเมื่อยานพาหนะใกล้พัง (เมื่อมีค่าต่ำกว่า % ที่กำหนด)
	low_fuel = 20											-- เตือนเมื่อเชื้อเพลิงยานพาหนะใกล้หมด (เมื่อมีค่าต่ำกว่า % ที่กำหนด)
}		

Config.SpawnSafeRadius = 5.0								-- ระยะที่จะทำให้ยานพาหนะใส (ไม่สามารถชนกันได้) เมื่อเบิกยานพาหนะ

Config.CanNotPoundWhenSomeoneDrivingYourVehicle = true		-- ป้องกันไม่ให้พาวน์ยานพาหนะ เมื่อมีใครบางคนกับลังนั่งอยู่ในที่คนขับ

Config.HUD = {
	scale = 1.0,								-- ขนาดของ UI
	border_radius_scale = 1.0,					-- ความโค้งมนของขอบ
	timing_factor = 1.0,						-- ตัวคูณความเร็วของ Animation ต่างๆ (1.0 คือค่าปกติ | 0.0 คือเร็วที่สุด)
	column = 3,									-- จำนวน column การแสดงยานพาหนะในการาจ
	colors = {
		base = { r = 255, g = 140, b = 181 },			-- สีหลัก
		content = { r = 0, g = 0, b = 0 },			-- สีของเนื้อหา
		confirm_button = { r = 255, g = 140, b = 181 }	-- สีปุ่มยืนยัน
		-- เลือกสีเพิ่มเติมได้ที่ https://htmlcolorcodes.com/color-picker/
	}
}

Config.Keys = {
	use_keybindings = true,					-- เปิดใช้งานระบบ Key Bindings
	default = {									-- ปุ่มแบบ FiveM Default
		action = 38,							-- ปุ่ม เปิด หน้าต่างการาจ/เก็บยานพาหนะ (ปุ่มปิดหน้าต่างการาจจะเป็น Esc ไม่สามารถแก้ไขได้)
	},
	keybindings = {
		action = 'E'							-- ปุ่ม เปิด หน้าต่างการาจ/เก็บยานพาหนะ (ปุ่มปิดหน้าต่างการาจจะเป็น Esc ไม่สามารถแก้ไขได้)
	}
}

-- คำสั่งต่างๆได้ของ Admin
Config.AdminCommands = {
	capture = 'capturevehicle'
}

-- กลุ่ม Administrator (กลุ่มสามารถใช้งานคำสั่งต่างๆได้)
Config.AdminGroups = {
	'admin',
	'superadmin'
}


-- เพิ่มเติม .. หากต้องการ Block ปุ่มกด ให้ใช้คำสั่งดังนี้ (true: Block | false: ยกเลิก Block)
-- exports.nc_garage:BlockKey({ 'KEYS', ... }, true)

-- ตัวอย่างการใช้งาน Block ไม่ให้ทำ Acrion ต่างๆ
-- exports.nc_garage:BlockKey({ 'E' }, true)

-- ตัวอย่างการยกเลิก Block ปุ่ม ให้กลับมาใช้งานได้ดังเดิม
-- exports.nc_garage:BlockKey({ 'E' }, false)

-- ตัวอย่างการ Block ปุ่ม หลายปุ่มในคำสั่งเดียว ให้กลับมาใช้งานได้ดังเดิม
-- exports.nc_garage:BlockKey({ 'E' }, true)

-- * ในกรณี Resource นี้ จะมีแค่ 1 ปุ่มเท่านั้น (E)