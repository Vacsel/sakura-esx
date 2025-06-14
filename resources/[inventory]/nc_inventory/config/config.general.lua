-- ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
-- ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

Config = {}

Config.Theme = ''								-- ชื่อ Theme (Theme ที่ซื้อจาก NC Developer เท่านั้น)

Config.EventRoute = {
	['itemsImagePath'] = 'nui://nc_inventory/html/img/items',	-- ตำแหน่งของรูป Items | Default: 'nui://nc_inventory/html/img/items'
	['getSharedObject'] = exports.es_extended.getSharedObject,				-- Default: 'esx:getSharedObject' *รองรับการใส่ชื่อ Event และ Function (exports.es_extended.getSharedObject)
	['playerLoaded'] = 'esx:playerLoaded',						-- Default: 'esx:playerLoaded'
	['playerDropped'] = 'esx:playerDropped',					-- Default: 'esx:playerDropped'
	['onPlayerDeath'] = 'esx:onPlayerDeath',					-- Default: 'esx:onPlayerDeath'
	['onPlayerSpawn'] = 'playerSpawned',						-- Default: 'esx:onPlayerSpawn'
	['setJob'] = 'esx:setJob',									-- Default: 'esx:setJob'
	['addInventoryItem'] = 'esx:addInventoryItem',				-- Default: 'esx:addInventoryItem'
	['removeInventoryItem'] = 'esx:removeInventoryItem',		-- Default: 'esx:removeInventoryItem'
	['setAccountMoney'] = 'esx:setAccountMoney',				-- Default: 'esx:setAccountMoney'
	['addWeapon'] = 'esx:addWeapon',							-- Default: 'esx:addWeapon'
	['removeWeapon'] = 'esx:removeWeapon',						-- Default: 'esx:removeWeapon'
	['updateWeaponAmmo'] = 'esx:updateWeaponAmmo',				-- Default: 'esx:updateWeaponAmmo'
	['setWeaponAmmo'] = 'esx:setWeaponAmmo',					-- Default: 'esx:setWeaponAmmo'
	['setMaxWeight'] = 'esx:setMaxWeight',						-- Default: 'esx:setMaxWeight'

	['useItem'] = 'esx:useItem',								-- Default: 'esx:useItem'
	
	['getSkin'] = 'skinchanger:getSkin',						-- Default: 'skinchanger:getSkin'
	['loadClothes'] = 'skinchanger:loadClothes',				-- Default: 'skinchanger:loadClothes'
	['saveSkin'] = 'esx_skin:save',								-- Default: 'esx_skin:save'

	-- สำหรับ essentialmode (es_extended 1.1) * ไม่จำเป็นต้องแก้ไขส่วนนี้
	['addedMoney'] = 'es:addedMoney',							-- Default: 'es:addedMoney'
	['removedMoney'] = 'es:removedMoney'						-- Default: 'es:removedMoney'
}

Config.Debug = false									-- Debug Mode

Config.AntiSpam = 100									-- ระยะเวลาป้องการการ Spam กดปุ่มใช้ Item (1000 = 1 วินาที)

Config.Blur = true										-- เปิดโหมด Blur เมื่อเปิดกระเป๋า
Config.OpenInventoryOnDead = false						-- สามารถเปิดกระเป๋าขณะตายได้
Config.BlockInventoryOnBusy = true						-- ไม่อนุญาตให้เปิดกระเป๋าเมื่อใช้งานสิ่งของหรืออาวุธ

Config.EnableSearchBox = true							-- เปิดใช้งานกล่องค้นหา (กล่องค้นหาจะไปแทนที่ Title กระเป๋าส่วนตัว)
Config.ClearSearchBoxOnCloseInventory = true			-- ล้างค่ากล่องค้นหาเมื่อปิดกระเป๋า

-- เปิดระบบลบและสร้างอาวุธใหม่ด้วยตัวพิมพ์ใหญ่ทั้งหมด (ระบบจะทำการลบและสร้างอาวุธใหม่)
Config.AutoRefreshWeaponName = true
-- * แนะนำ เนื่องจากระบบกระเป๋า NC Inventory ดึงค่าอาวุธด้วยตัวพิมพ์ใหญ่ทั้งหมด
-- * หากไม่อยากเปิดใช้งาน Config.AutoRefreshWeaponName แนะนำให้ตั้งเปลี่ยนชื่ออาวุธเป็นตัวพิมพ์ใหญ่ให้หมดทุกๆจุดในเบสของคุณ eg. es_extended/server/classes/player.lua
-- * สามารถเขียนได้ 2 แบบ คือ weaponName = weaponName:upper() และ weaponName = string.upper(weaponName)

-- ใช้ NC Inventory ในการอัพเดทกระสุนเข้า xPlayer ฝั่ง Server (หากเปิด ควรจะไปปิดฝั่ง es_extended ก่อน)
-- รองรับ es_extended 1.2, Legacy ขึ้นไป
Config.UseInventoryUpdateWeaponAmmo = false

Config.AllowPlayerSetReceivable = false					-- เปิด/ปิด การอนุญาตให้ผู้เล่นสามารถ เปิด/ปิด การรับของจากผู้อื่นได้
Config.DropToTrash = false								-- เปิด/ปิด การลากของไปที่ถังขยะเพื่อทิ้ง (true: เปิด | false: ปิด)
Config.DoubleClick = {
	use = true,											-- กด Double Click เพื่อใช้งาม Item ต่างๆ
	move = true											-- กด Double Click ย้าย Item ระหว่างกระเป๋าหลักกับกระเป๋ารอง
}
Config.AllowFavourites = true							-- อนุญาตให้สามารถกดติดดาวของสิ่งของต่างๆได้

-- ระบบน้ำหนัก *แนะนำให้ใช้หน่วยเป็นกรัม(เลขจำนวนเต็ม) | 1000 กรัม = 1.0 กิโลกรัม
Config.Weight = {
	hover_show = false,									-- แสดงน้ำหนักเมื่อ Hover Item ต่างๆ
	weight_mult = 0.001,								-- ตัวคูณการแสดงผลน้ำหนัก
	max_weight = 50000,									-- น้ำหนักที่สามารถเก็บของในกระเป๋าได้
	show_weight_bar = {									-- แสดงแถบบอกน้ำหนักในกระเป๋าส่วนตัว
		primary = false,								-- กระเป๋าส่วนตัว
		secondary = false								-- กระเป๋ารอง
	}
}

Config.HUD = {
	scale = 1.16,										-- ขนาดของ UI
	content_scale = 1.0,								-- ขนาดของเนื้อหา
	border_radius_scale = 1.0,							-- ความโค้งมนของขอบ
	timing_factor = 1.0,								-- ตัวคูณความเร็วของ Animation ต่างๆ (1.0 คือค่าปกติ | 0.0 คือเร็วที่สุด)
	logo = {
		show = true,									-- แสดง Logo
		url = './img/assets/logo.png',					-- URL ของ Logo ที่ต้องการ
		off_scale = 1.55,								-- ขนาด Logo ขณะ "ปิด" กระเป๋า
		on_scale = 1.7,									-- ขนาด Logo ขณะ "เปิด" กระเป๋า
		glare = true,									-- เปิดแสงสะท้อนเวลา Hover ที่ Logo
		position = 'top-right',							-- ตำแหน่งที่ต้องการจะแสดง top|right|bottom|left|top-left|top-right|bottom-right|bottom-left
		offsets = {
			top = 0,									-- เว้น Offset จากด้านบน
			right = 0.7,									-- เว้น Offset จากด้านขวา
			bottom = 1,									-- เว้น Offset จากด้านล่าง
			left = 1									-- เว้น Offset จากด้านซ้าย
		},
	},
	form = {
		normal = {
			column = 7,									-- จำนวน column กระเป๋าส่วนตัว
			width = 60.0								-- ความกว้างกระเป๋าส่วนตัว (คิดเป็น % จากความสูงหน้าจอ)
		},
		two_sides = {
			column = 6,									-- จำนวน column กระเป๋าสองหน้า
			width = 100.0								-- ความกว้างกระเป๋าสองหน้า (คิดเป็น % จากความสูงหน้าจอ)
		},
		height = 60.0,									-- ความสูงกระเป๋าส่วนตัว (คิดเป็น % จากความสูงหน้าจอ)
		item_image_size = 70,							-- ขนาดรูป Items (หน่วยเป็น %)
		item_aspect_ratio = 9 / 10						-- อัตราส่วนของช่อง Items
	},
	colors = {
		base = { r = 12, g = 12, b = 12 },			-- สีหลัก
		content = { r = 35, g = 35, b = 35 },			-- สีของเนื้อหา
		max_weight = { r = 197, g = 27, b = 35 },		-- สีหลอดน้ำหนัก (เมื่อน้ำหนักเต็ม)
		confirm_button =  { r = 255, g = 119, b = 203 },	-- สีปุ่มยืนยัน
		danger_button = { r = 225, g = 76, b = 83 }			-- สีปุ่มอันตราย
		-- เลือกสีเพิ่มเติมได้ที่ https://htmlcolorcodes.com/color-picker/
	},
	context_icons = {									-- Icon ใน Context Menu เมื่อคลิดขวาที่ Item
		use = 'basil:cursor-solid',
		give = 'ph:box-arrow-up-duotone',
		drop = 'basil:trash-outline',
		skin_menu = 'mdi--box-arrow-up-outline'
		-- สามารถหา Icon ได้ที่ https://icon-sets.iconify.design/
	},
	shortcuts = 7,										-- จำนวน Shortcut ที่ต้องการ [0-9]
	shortcuts_tabs = 2									-- จำนวนหน้าต่าง Shortcut (1-5)
}

Config.Keys = {
	use_keybindings = true,				-- เปิดใช้งานระบบ Key Bindings
	auto_show_shortcuts = true,				-- ปิดการแสดงแถบ Shortcuts อัตโนมัติ เมื่อกดปุ่มลัด 1-9
	use_show_shortcuts_button = true,		-- ปิดการแสดงแถบ Shortcuts อัตโนมัติ เมื่อกดปุ่มแสดงแถบ Shortcuts
	default = {								-- ปุ่มแบบ FiveM Default
		open = 245,							-- ปุ่ม เปิด กระเป๋าส่วนตัว (ปุ่มปิดกระเป๋าจะเป็น Esc ไม่สามารถแก้ไขได้)
		show_shortcuts = 37,				-- ปุ่มแสดงแถบ Shortcuts
		shortcuts = {						-- ปุ่มสำหรับใช้สิ่งของใน Shortcuts
			[1] = 157,
			[2] = 158,
			[3] = 160,
			[4] = 164,
			[5] = 165,
			[6] = 159,
			[7] = 161,
			[8] = 162,
			[9] = 163
		},
		reroll = 22							-- ปุ่ม Reroll คนรอบข้างสำหรับมอบของใหม่
	},
	keybindings = {
		open = 'T',						-- ปุ่ม เปิด กระเป๋าส่วนตัว (ปุ่มปิดกระเป๋าจะเป็น Esc ไม่สามารถแก้ไขได้)
		show_shortcuts = 'TAB',				-- ปุ่มแสดงแถบ Shortcuts
		shortcuts = {						-- ปุ่มสำหรับใช้สิ่งของใน Shortcuts
			[1] = '1',
			[2] = '2',
			[3] = '3',
			[4] = '4',
			[5] = '5',
			[6] = '6',
			[7] = '7',
			[8] = '8',
			[9] = '9'
		},
		reroll = 'SPACE'					-- ปุ่ม Reroll คนรอบข้างสำหรับมอบของใหม่
	},
}

Config.OnGiving = {
	mode = 'input',						-- รูปแบบการมอบของ 'default', 'id', 'input'
	font = {
		name = 'font4thai',
		scale = 1.0
	},
	head_offset = 0.4,						-- ระยะ Text บนหัวผู้เล่น
	max_players = 5,						-- จำนวนผู้เล่นที่แสดงรอบข้างขณะมอบของ (1-9)
	distance = 2.0,							-- ระยะคนที่อยู่รอบข้างที่สามารถมอบของให้ได้
	blocks = {								-- Block ปุ่มกดขณะมอบของ
		22			-- Spacebar
	}
}

-- Animation ในการกระทำต่างๆ
Config.Animations = {
	give = {
		enable = true,
		display = {
			image = {
				enable = false,
				scale = 0.3,
				realistic = true
			},
			text = {
				enable = false,
				font = 'font4thai',
				scale = 0.5,
				offset = -0.2,
				color = { r = 255, g = 255, b = 255 }
			},
			distance = 100.0
		}
	},
	drop = {
		enable = true,
		display = {
			image = {
				enable = false,
				scale = 0.3,
				realistic = true
			},
			text = {
				enable = false,
				font = 'font4thai',
				scale = 0.5,
				offset = -0.2,
				color = { r = 225, g = 76, b = 83 }
			},
			distance = 20.0
		}
	}
}

-- กลุ่มผู้เล่นที่สามารถเปิดกระเป๋า(ค้นกระเป๋า)ผู้อื่นได้
Config.AdminSearchCommand = 'inv'	-- คำสั่งค้นกระเป๋าผู้อื่น * จะใช้ได้แค่กลุ่มผู้เล่นที่กำหนดด้านล่างนี้เท่านั้น (Config.SearchTypeForCommandByGroup)

-- ชนิดการค้นกระเป๋าของกลุ่มผู้เล่นต่างๆผ่านใช้คำสั่ง inv
Config.SearchTypeForCommandByGroup = {
	['admin'] = 'admin',			
	['superadmin'] = 'admin',
}

Config.AllowGroupsToSearch = {
	-- 	['GROUP_NAME'] = {		-- GROUP_NAME = ชื่อของกลุ่มผู้เล่น
	--  	'SEARCH_TYPE',		-- SEARCH_TYPE = ชนิดการค้นกระเป๋าที่อนุญาตให้กลุ่มผู้เล่นนี้ใช้ได้
	-- 		...
	-- 	},

	-- ['admin'] = {
	-- 	'admin',
	-- 	'police',
	-- 	'council',
	-- },
	-- ['superadmin'] = {
	-- 	'admin',
	-- 	'police',
	-- 	'council',
	-- },

	
	['admin'] = {
		'admin',
	},
	['superadmin'] = {
		'admin',
	},
}

-- อาชีพที่สามารถเปิดกระเป๋า(ค้นกระเป๋า)ผู้อื่นได้
Config.AllowJobsToSearch = {
	-- 	['JOB_NAME'] = {		-- JOB_NAME = ชื่อของอาชีพ
	--  	'SEARCH_TYPE',		-- SEARCH_TYPE = ชนิดการค้นกระเป๋าที่อนุญาตให้อาชีพนี้ใช้ได้
	-- 		...
	-- 	},

	-- ['unemployed'] = {
	-- 	'thief',
	-- },
	['unemployed'] = {
		'thief',
	},
	['police'] = {
		'police',
	},
	['ambulance'] = {
		'ambulance',
	},

	
	['council'] = {
		'council',
	},
}

-- สร้าง Item ปลอมให้แสดงอยู่ในกระเป๋า * ห้ามใช้ชนิดของ Item ตามนี้ account|item|weapon|key|accessory
-- โดยชื่อ Item ต่างๆที่สร้างขึ้นจะต้องไม่ตรงกับ Item ใน Database
Config.CustomItems = {
	['personal'] = {									-- ชนิดของ Item
		{
			name = 'id_card',							-- ชื่อ Item
			label = 'ID Card',							-- ป้ายชื่อของ Item
			count = 0,									-- จำนวนของ Item (ถ้าตั้งเป็น 0 จะไม่แสดงตัวเลข)
			use = true,									-- อนุญาตให้นำกดใช้งาน Item นี้ได้
			shortcut = true,							-- อนุญาตให้นำ Item นี้เข้า Shortcut
			weight = 0,									-- น้ำหนักของ Item ชิ้นนี้
			rare = 0,									-- ความหายากของ Item ชิ้นนี้
			close_inventory = true						-- ปิดกระเป๋าเมื่อใช้งาน
		},
		-- {
		-- 	name = 'license_card',
		-- 	label = 'License Card',
		-- 	count = 0,
		-- 	use = false,
		-- 	shortcut = false,
		-- 	weight = 0,
		-- 	rare = 0,
		-- 	close_inventory = false
		-- }
	},
}

-- ลำดับความสำคัญ น้อยกว่า = สำคัญมากกว่า | มากกว่า = สำคัญน้อยกว่า ** หากตั้งเท่ากันก็จะมีความสำคัญเท่ากัน โดยจะเรียงลำดับตามตัวอักษรของชื่อสิ่งของนั้นๆ
Config.Priorities = {
	account = 1,
	personal = 2,
	house_key = 3,
	vehicle_key = 4,
	accessory = 5,
	item = 6,
	weapon = 7
}

Config.CloseInventoryCommand = 'closebag'


-- เฉพาะระบบปุ่มกดแบบ KeyBindings
-- เพิ่มเติม .. หากต้องการ Block ปุ่มกด ให้ใช้คำสั่งดังนี้ (true: Block | false: ยกเลิก Block)
-- exports.nc_inventory:BlockKey({ 'KEYS', ... }, true)

-- ตัวอย่างการใช้งาน Block ไม่ให้เปิดกระเป๋า
-- exports.nc_inventory:BlockKey({ 'F2' }, true)

-- ตัวอย่างการยกเลิก Block ปุ่ม ให้กลับมาใช้งานได้ดังเดิม
-- exports.nc_inventory:BlockKey({ 'F2' }, false)

-- ตัวอย่างการ Block ปุ่ม หลายปุ่มในคำสั่งเดียว ให้กลับมาใช้งานได้ดังเดิม
-- exports.nc_inventory:BlockKey({ '1', '2', '3', '4', '5', '6', '7', '8', '9' }, true)

-- * ในกรณี Resource นี้ จะมีแค่ 10 ปุ่มเท่านั้น (F2, 1, 2, 3, 4, 5, 6, 7, 8, 9)