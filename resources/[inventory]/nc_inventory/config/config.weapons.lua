-- ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
-- ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

-- ให้กระเป๋าแสดง อาวุธที่ผู้เล่นมีในฝั่ง Client (ไม่แนะนำ!! อาจส่งผลให้ Framerate กระชากได้)
Config.ShowClientWeapons = false
Config.UseCustomClientWeapons = false
Config.CustomClientWeaponList = {
	'GADGET_PARACHUTE',
}

-- ค่าน้ำหนักเริ่มต้นของอาวุธทุกชนิด
Config.DefaultWeaponWeight = 0

-- ตั้งค่าน้ำหนักแยกของอาวุธชนิดต่างๆต่อ 1 ชิ้น (หน่วยเป็น Kg)
Config.WeaponsWeight = {
	-- ['WEAPON_POOLCUE'] = 1000,
	-- ['WEAPON_BAT'] = 1000,
	-- ['WEAPON_GOLFCLUB'] = 1000,
}

-- ความหายากเริ่มต้นของอาวุธทุกชนิด
Config.DefaultWeaponRarity = 0

-- ความหายากของอาวุธต่างๆ ** หากไม่ใส่ จะมีค่าเท่ากับ 0
Config.WeaponsRarity = {
	['WEAPON_BAT'] = 3,
	['WEAPON_POOLCUE'] = 3,
	['WEAPON_GOLFCLUB'] = 3,
	['WEAPON_MACHETE'] = 4,
	['WEAPON_BOTTLE'] = 4,
}

-- ปิดกระเป๋าเมื่อใช้หยิบ/เก็บอาวุธต่างๆ
Config.CloseInventoryOnUseWeapon = {
	-- 'WEAPON_POOLCUE',
	-- 'WEAPON_BAT',
}

-- ปิดกระเป๋าเมื่อทิ้งอาวุธต่างๆ
Config.CloseInventoryOnDropWeapon = {
	-- 'WEAPON_GOLFCLUB',
}

-- Blacklist ทิ้งอาวุธ/มอบอาวุธ
Config.WeaponsActionList = {
	shortcut = {				-- การลากอาวุธเข้า Shortcuts
		type = 'blacklist',		-- ชนิดของ List ที่ต้องการ (whitelist|blacklist)
		list = {
			'GADGET_PARACHUTE',
			-- 'WEAPON_POOLCUE',
		}
	},
	use = {						-- การ "ใช้" อาวุธ
		type = 'blacklist',
		list = {
			'GADGET_PARACHUTE',
			-- 'WEAPON_POOLCUE',
		}
	},
	drop = {					-- การ "ทิ้ง" อาวุธ
		type = 'whitelist',
		list = {
			-- 'WEAPON_DAGGER',
			-- 'WEAPON_BAT',
			-- 'WEAPON_BOTTLE',
			-- 'WEAPON_KNIFE',
			-- 'WEAPON_POOLCUE',
			-- 'WEAPON_MACHETE',
			-- 'WEAPON_KNUCKLE',
			-- 'WEAPON_STUNGUN',
			-- 'WEAPON_KNIFE_TRAINING2', 
            -- 'WEAPON_KNUCKL_TRAINING2', 
            -- 'WEAPON_MACHETTE_TRAINING2',
            -- 'WEAPON_POOLCUE_TRAINING2', 
			-- 'WEAPON_MACHETE+1',
			-- 'WEAPON_KNUCKLE+1',

			-- 'WEAPON_MACHETE+2',
			-- 'WEAPON_KNUCKLE+2',

			-- 'WEAPON_KNIFE+3',
			-- 'WEAPON_POOLCUE+3',
			-- 'WEAPON_DAGGER+3',
			-- 'bread',
			-- 'water',
		}
	},
	give = {					-- การ "มอบ" อาวุธ
		type = 'whitelist',
		list = {
			-- 'WEAPON_DAGGER',
			-- 'WEAPON_BAT',
			-- 'WEAPON_BOTTLE',
			-- 'WEAPON_KNIFE',
			-- 'WEAPON_POOLCUE',
			-- 'WEAPON_MACHETE',
			-- 'WEAPON_KNUCKLE',
			-- 'wEAPON_STUNGUN',

			-- 'WEAPON_POOLCUE+1',
			-- 'WEAPON_BAT+1',
			-- 'WEAPON_KNIFE+1',
			-- 'WEAPON_DAGGER+1',

			-- 'WEAPON_MACHETE+1',
			-- 'WEAPON_KNUCKLE+1',

			-- 'WEAPON_MACHETE+2',
			-- 'WEAPON_KNUCKLE+2',
			-- 'WEAPON_KNIFE+3',
			-- 'WEAPON_POOLCUE+3',
			-- 'WEAPON_DAGGER+3',
			-- 'WEAPON_POOLCUE+2',
			-- 'WEAPON_BAT+2',
			-- 'WEAPON_KNIFE+2',
			-- 'WEAPON_DAGGER+2',
			-- 'WEAPON_KNIFE_TRAINING2', 
            -- 'WEAPON_KNUCKL_TRAINING2', 
            -- 'WEAPON_MACHETTE_TRAINING2',
            -- 'WEAPON_POOLCUE_TRAINING2', 
			-- 'WEAPON_POOLCUE_ESP',
			-- 'WEAPON_KNIFE_ESP',
			-- 'water',
		}
	},
	search = {					-- การ "โยกย้าย" อาวุธเมื่อเปิดกระเป๋าผู้เล่น
		type = 'blacklist',
		list = {
			-- 'bread',
			-- 'water',
		}
	}
}

-- List สิ่งของที่ต้องการให้แสดง Dialog เมนู
Config.WeaponsShowDialogOnUse = {
	type = 'whitelist',			-- ชนิดของ List ที่ต้องการ (whitelist|blacklist)
	list = {
		-- 'bread',
		-- 'water',
	}
}

-- การตั้งค่า Action ต่างๆ
-- 'whitelist'	=> อาวุธต่างๆที่อยู่ใน List จะ "อนุญาต" ให้ทำการกระทำนั้นๆ
--				=> โดยที่อาวุธที่ไม่อยู่ใน List จะ "ไม่อนุญาต" ให้ทำการกระทำนั้นๆ
-- 'blacklist'	=> อาวุธต่างๆที่อยู่ใน List จะ "ไม่อนุญาต" ให้ทำการกระทำนั้นๆ
--				=> โดยที่อาวุธที่ไม่อยู่ใน List จะ "อนุญาต" ให้ทำการกระทำนั้นๆ


-- อาวุธที่ไม่มีกระสุน
Config.NoAmmoWeapons = {
	'GADGET_PARACHUTE',
	'WEAPON_KNIFE+3',
	'WEAPON_KNIFE+4',
	'WEAPON_KNIFE+5',
	'WEAPON_POOLCUE+3',
	'WEAPON_POOLCUE+4',
	'WEAPON_POOLCUE+5',
	'WEAPON_DAGGER+3',
	'WEAPON_DAGGER+4',
	'WEAPON_DAGGER+5',
	'WEAPON_POOLCUE_ESP',
	'WEAPON_KNIFE_ESP',
	'WEAPON_DAGGER',
	'WEAPON_BAT',
	'WEAPON_BOTTLE',
	'WEAPON_CROWBAR',
	'WEAPON_FLASHLIGHT',
	'WEAPON_GOLFCLUB',
	'WEAPON_HAMMER',
	'WEAPON_HATCHET',
	'WEAPON_KNUCKLE',
	'WEAPON_KNIFE',
	'WEAPON_MACHETE',
	'WEAPON_SWITCHBLADE',
	'WEAPON_NIGHTSTICK',
	'WEAPON_WRENCH',
	'WEAPON_BATTLEAXE',
	'WEAPON_POOLCUE',
	'WEAPON_STONE_HATCHET',
	'WEAPON_CANDYCANE',
	'WEAPON_KNIFE_TRAINING2', 
	'WEAPON_KNUCKL_TRAINING2', 
	'WEAPON_MACHETTE_TRAINING2',
	'WEAPON_POOLCUE_TRAINING2', 
	'WEAPON_STUNGUN',
	'WEAPON_STUNGUN_MP',
	'WEAPON_KNUCKLE+1',
	'WEAPON_KNUCKLE+2',
	'WEAPON_KNUCKLE+3',
	'WEAPON_MACHETE+1',
	'WEAPON_MACHETE+2',
	'WEAPON_MACHETE+3',
	'WEAPON_POOLCUE+1',
	'WEAPON_BAT+1',
	'WEAPON_KNIFE+1',
	'WEAPON_DAGGER+1',
	'WEAPON_MACHETE+1',
	'WEAPON_KNUCKLE+1',
	'WEAPON_MACHETE+2',
	'WEAPON_KNUCKLE+2',
	'WEAPON_POOLCUE+2',
	'WEAPON_BAT+2',
	'WEAPON_KNIFE+2',
	'WEAPON_DAGGER+2',
	'WEAPON_KNIFE_TRAINING2', 
    'WEAPON_KNUCKL_TRAINING2', 
    'WEAPON_MACHETTE_TRAINING2',
    'WEAPON_POOLCUE_TRAINING2', 
	'WEAPON_POOLCUE_ESP',
	'WEAPON_KNIFE_ESP',
}

-- อาวุธที่ต้องการให้ลบออกเมื่อจำนวนเหลือ 0 (จำเป็นจะต้องเปิดใช้งาน Config.UseInventoryUpdateWeaponAmmo)
Config.AutoRemoveWeaponWhenNoAmmo = {
	'GADGET_PARACHUTE',

	'WEAPON_GRENADE',
	'WEAPON_BZGAS',
	'WEAPON_MOLOTOV',
	'WEAPON_STICKYBOMB',
	'WEAPON_PROXMINE',
	'WEAPON_SNOWBALL',
	'WEAPON_PIPEBOMB',
	'WEAPON_BALL',
	'WEAPON_SMOKEGRENADE',
	'WEAPON_FLARE',
	'WEAPON_ACIDPACKAGE'
}


-- Animations
Config.SkipAnimationOnUseAllWeapon = true		-- เปิด/ปิด Animation หยิบ/เก็บ อาวุธเมื่อกดใช้งานอาวุธทุกชิ้น
Config.SkipAnimationOnUseEachWeapon = {			-- เปิด/ปิด Animation หยิบ/เก็บ อาวุธเมื่อกดใช้งานอาวุธที่อยู่ในรายชื่อ
	'WEAPON_BAT',
}

-- ท่า หยิบ/เก็บ อาวุธเมื่อกดใช้งานอาวุธ
Config.WeaponAnimations = {
	default = {					-- ค่าเริ่มต้น (หากไม่มีการตั้งค่าใน customs)
		put_in = {
			enable = true,
			dict = 'reaction@intimidation@1h',
			anim = 'outro',
			flag = 50,
			action_on = 1800,
			duration = 1900
		},
		take_out = {
			enable = true,
			dict = 'reaction@intimidation@1h',
			anim = 'intro',
			flag = 50,
			action_on = 800,
			duration = 2600
		}
	},
	customs = {
		-- ['WEAPON_POOLCUE'] = {
		-- 	put_in = {
		-- 		enable = true,
		-- 		dict = 'reaction@intimidation@1h',
		-- 		anim = 'outro',
		-- 		flag = 50,
		-- 		action_on = 1800,
		-- 		duration = 1900
		-- 	},
		-- 	take_out = {
		-- 		enable = true,
		-- 		dict = 'reaction@intimidation@1h',
		-- 		anim = 'intro',
		-- 		flag = 50,
		-- 		action_on = 800,
		-- 		duration = 2600
		-- 	}
		-- },
	}
}