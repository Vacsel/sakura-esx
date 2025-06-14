Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.0, y = 1.0, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 38
		},

		Cloakrooms = {
			-- vector3(462.3800048828125, -999.7000122070312, 30.69000053405761)
		},

		VehicleStored = vector3(455.5400085449219, -1024.8399658203125, 28.45999908447265-0.97),

		Armories = {
			--vector3(462.1000061035156, -996.5999755859376, 35.6500015258789)
		},

		-- Vehicles = {
		-- 	{
		-- 		Spawner = vector3(458.4299926757813, -1010.1400146484376, 27.98999977111816),
		-- 		InsideShop = vector3(228.5, -993.5, -99.5),
		-- 		SpawnPoints = {
		-- 			{ coords = vector3(464.44000244140625, -1009.3599853515624, 28.35000038146972), heading =  182.13, radius = 6.0 }
		-- 		}
		-- 	},

		-- 	{
		-- 		Spawner = vector3(470.010009765625, -1009.5399780273438, 28.30999946594238),
		-- 		InsideShop = vector3(228.5, -993.5, -99.5),
		-- 		SpawnPoints = {
		-- 			{ coords = vector3(475.7000122070313, -1009.4500122070312, 28.27000045776367), heading = 172.29, radius = 6.0 }
		-- 		}
		-- 	},
			
		-- },

		-- Helicopters = {
		-- 	{
		-- 		Spawner = vector3(466.1000061035156, -980.1300048828124, 47.45000076293945),
		-- 		InsideShop = vector3(477.0, -1106.4, 43.0),
		-- 		SpawnPoints = {
		-- 			{ coords = vector3(459.6099853515625, -988.6799926757812, 47.02999877929687), heading = 265.56, radius = 10.0 }
		-- 		}
		-- 	}
		-- },

		Vehicles = {
			{
				Spawner = vector3(462.2781, -1010.8583, 31.0207),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(450.4405, -1013.6019, 28.1085), heading = 181.4082, radius = 6.0 }
				}
			},

			
		},

		Helicopters = {
			{
				Spawner = vector3(460.6967, -978.7627, 41.1387),
				InsideShop = vector3(476.9195, -1106.3824, 43.0756),
				SpawnPoints = {
					{ coords = vector3(451.9857, -990.1222, 41.1387), heading = 93.8711, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(442.9255, -996.4650, 36.0348)
		},

		SearchInfoActions = {
			--vector3(448.53, -978.94, 30.69)
		}

	},
	SASP2 = {

		Blip = {
			Coords  = vector3(1851.0972900391, 3683.7622070313, 34.26708984375),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.0,
			Colour  = 37
		},

		Cloakrooms = {
			-- vector3(1857.2354736328, 3689.8408203125, 34.26708984374)
		},

		Armories = {
			-- vector3(1850.8962402344, 3684.1105957031, 34.267036437987)
		},

		Vehicles = {
			{
				Spawner = vector3(1864.6454, 3689.6033, 34.2677),
				InsideShop = vector3(1854.4429, 3687.9995, 38.6787),
				SpawnPoints = {
					{ coords = vector3(1870.6411, 3702.0020, 35.1617), heading = 210.0838, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(1860.9865, 3695.7070, 34.2677),
				InsideShop = vector3(1863.3463, 3752.9854, 37.2416),
				SpawnPoints = {
					{ coords = vector3(1870.5236, 3647.0198, 33.8988), heading = 263.7596, radius = 20.0 }
				}
			}
		},

		BossActions = {
			vector3(1849.5302, 3686.9075, 34.2670)
		},

		SearchInfoActions = {}

	},
	
	TLSPD = {

		Blip = {
			Coords  = vector3(-445.68, 6012.73, 31.72),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.0,
			Colour  = 37
		},

		Cloakrooms = {},

		Armories = {},

		Vehicles = {},
		
		Helicopters = {
						{
				Spawner = vector3(-460.0804, 6011.5913, 31.3407),
				InsideShop = vector3(-481.4048, 5996.6992, 31.3371),
				SpawnPoints = {
					{ coords = vector3(-474.6577, 5988.8232, 31.3367), heading = 314.8655, radius = 10.0 } -- -474.6577, 5988.8232, 31.3367, 314.8655
				}
			}
		},

		BossActions = {
			vector3(-448.1852, 6008.8188, 31.7164)
		},

		SearchInfoActions = {} 

	},

}

Config.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_STUNGUN', price = 100},
		{weapon = 'WEAPON_NIGHTSTICK', price = 100}
	},

	officer = {
		{weapon = 'WEAPON_STUNGUN', price = 100},
		{weapon = 'WEAPON_NIGHTSTICK', price = 100}
	},

	sergeant = {
		{weapon = 'WEAPON_STUNGUN', price = 100},
		{weapon = 'WEAPON_NIGHTSTICK', price = 100}
	},

	lieutenant = {
		{weapon = 'WEAPON_STUNGUN', price = 100},
		{weapon = 'WEAPON_NIGHTSTICK', price = 100},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 10000}
	},

	boss = {
		{weapon = 'WEAPON_STUNGUN', price = 100},
		{weapon = 'WEAPON_NIGHTSTICK', price = 100},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 10000}
	}
}

Config.AuthorizedVehicles = {
	recruit = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
	},

	officer = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
	},

	officers = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
		{model = 'pdkomodafr', price = 800000},
	},

	sergeant = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
		{model = 'pdkomodafr', price = 800000},
	},

	lieutenant = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
		{model = 'coqpol', price = 500000},
		{model = 'pdkomodafr', price = 800000},
	},

	lieutenant_1 = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
		{model = 'coqpol', price = 500000},
		{model = 'pdkomodafr', price = 800000},
	},

	lieutenant_2 = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
		{model = 'coqpol', price = 500000},
		{model = 'pdkomodafr', price = 800000},
		{model = 'adm_seven70pd', price = 1000000},
		{model = 'adm_italigtbpd', price = 1000000},
	},

	lieutenant_3 = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
		{model = 'coqpol', price = 500000},
		{model = 'pdkomodafr', price = 800000},
		{model = 'adm_corsitapd', price = 800000},
		{model = 'adm_seven70pd', price = 1000000},
		-- {model = 'adm_italigtbpd', price = 1000000},
	},
	
	lieutenant_4 = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
		{model = 'coqpol', price = 500000},
		{model = 'pdkomodafr', price = 800000},
		{model = 'adm_corsitapd', price = 800000},
		{model = 'adm_seven70pd', price = 1000000},
		-- {model = 'adm_italigtbpd', price = 1000000},
	},
	lieutenant_5 = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
		{model = 'coqpol', price = 500000},
		{model = 'pdkomodafr', price = 800000},
		{model = 'adm_corsitapd', price = 800000},
		{model = 'adm_seven70pd', price = 1000000},
		-- {model = 'adm_italigtbpd', price = 1000000},
	},
	lieutenant_6 = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
		{model = 'coqpol', price = 500000},
		{model = 'pdkomodafr', price = 800000},
		{model = 'adm_corsitapd', price = 800000},
		{model = 'adm_seven70pd', price = 1000000},
		{model = 'adm_italigtbpd', price = 1000000},
	},

	lastboss = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
		{model = 'coqpol', price = 500000},
		{model = 'adm_corsitapd', price = 800000},
		{model = 'pdkomodafr', price = 800000},
		{model = 'adm_seven70pd', price = 1000000},
		{model = 'adm_italigtbpd', price = 1000000},
		{model = 'adm_thraxpd', price = 1000000},
	},

	boss = {
		{model = 'elegyp', price = 5000},
		{model = 'polruiners', price = 20000},
		{model = 'adm_jester4pd', price = 400000},
		{model = 'coqpol', price = 500000},
		{model = 'adm_corsitapd', price = 800000},
		{model = 'pdkomodafr', price = 800000},
		{model = 'adm_seven70pd', price = 1000000},
		{model = 'adm_thraxpd', price = 1000000},
		{model = 'adm_italigtbpd', price = 1000000},
		{model = 'adm_brawlerpd', price = 1000000},
	}
}

Config.AuthorizedHelicopters = {
	recruit = {},

	officer = {},

	officers = {
		{model = 'polmav', props = {modLivery = 0}, price = 500000},
	},

	sergeant = {
		{model = 'polmav', props = {modLivery = 0}, price = 500000},
	},

	lieutenant = {
		{model = 'polmav', props = {modLivery = 0}, price = 500000},
	},

	lieutenant_1 = {
		{model = 'polmav', props = {modLivery = 0}, price = 500000},
	},

	lieutenant_2 = {
		{model = 'polmav', props = {modLivery = 0}, price = 500000},
	},

	lieutenant_3 = {
		{model = 'polmav', props = {modLivery = 0}, price = 500000},
	},

	lieutenant_4 = {
		{model = 'polmav', props = {modLivery = 0}, price = 500000},
	},
	lieutenant_5 = {
		{model = 'polmav', props = {modLivery = 0}, price = 500000},
	},
	lieutenant_6 = {
		{model = 'polmav', props = {modLivery = 0}, price = 500000},
	},

	lastboss = {
		{model = 'polmav', props = {modLivery = 0}, price = 500000},
	},

	boss = {
		{model = 'polmav', props = {modLivery = 0}, price = 500000},
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.UniformsList = { 
	{
		title = 'นักเรียนตำรวจ',
		male = {
			-- ['tshirt_1'] = 44,  ['tshirt_2'] = 0,   --เสื้อด้านใน   สีเสื้อด้านใน
			['torso_1'] = 768,   ['torso_2'] = 0,   --เสื้อนอก    สีเสื้อนอก
			-- ['decals_1'] = 0,   ['decals_2'] = 0,	--สติ๊กเกอร์ 1 สติ๊กเกอร์ 2
			['arms'] = 0,							--แขน/ถุงมือ
			-- ['pants_1'] = 24,   ['pants_2'] = 2,    --กางเกง  สีกางเกง
			-- ['shoes_1'] = 97,   ['shoes_2'] = 0,  	--รองเท้า  สีรองเท้า
			--['helmet_1'] = -1,  ['helmet_2'] = 0,   --หมวก  สีหมวก
			--['chain_1'] = 128,    ['chain_2'] = 0,	--สร้อยคอ  ขนหน้าอก
			-- ['ears_1'] = -1,     ['ears_2'] = 0,
			-- ['bproof_1'] = 10,  ['bproof_2'] = 0   --เสื้อเกาะ  สีเสื้อเกาะ
	},
	{
	    female = {
	    	-- ['tshirt_1'] = 15,  ['tshirt_2'] = 0,   --เสื้อด้านใน   สีเสื้อด้านใน
			['torso_1'] = 727,   ['torso_2'] = 0,   --เสื้อนอก    สีเสื้อนอก
			-- ['decals_1'] = 0,   ['decals_2'] = 0,	--สติ๊กเกอร์ 1 สติ๊กเกอร์ 2
			['arms'] = 7,							--แขน/ถุงมือ
			-- ['pants_1'] = 77,   ['pants_2'] = 0,    --กางเกง  สีกางเกง
			-- ['shoes_1'] = 73,   ['shoes_2'] = 1,  	--รองเท้า  สีรองเท้า
			-- ['helmet_1'] = -1,  ['helmet_2'] = 0,   --หมวก  สีหมวก
			-- ['chain_1'] = 98,    ['chain_2'] = 0,	--สร้อยคอ  ขนหน้าอก
			-- ['ears_1'] = -1,     ['ears_2'] = 0,
			-- ['bproof_1'] = 0,  ['bproof_2'] = 0   --เสื้อเกาะ  สีเสื้อเกาะ
    	}
    }
}

--[[ 	{
		title = 'ผบตร',
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 63,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 16,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
	},

	female = {
		['tshirt_1'] = 15,  ['tshirt_2'] = 1,
		 ['torso_1'] = 344,   ['torso_2'] = 0,
		['decals_1'] = -1,   ['decals_2'] = 0,
		['arms'] = 7,
		['pants_1'] = 112,   ['pants_2'] = 4,
		['shoes_1'] = 10,   ['shoes_2'] = 3,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = -1,    ['chain_2'] = 0,
		['glasses_1'] = -1, 	['glasses_2']= 0,  --แว่นตา
		['ears_1'] = -1,     ['ears_2'] = 0
	}
}, ]]
--[[ 	{
		title = 'FIB 1',
		male = {
			['tshirt_1'] = 11,  ['tshirt_2'] = 0,
			['torso_1'] = 35,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 50,   ['pants_2'] = 2,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 20,  ['bproof_2'] = 0
		}
	}, ]]
--[[ 	{
		title = 'FIB 2',
		male = {
			['tshirt_1'] = 11,  ['tshirt_2'] = 0,
			['torso_1'] = 36,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 50,   ['pants_2'] = 2,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 20,  ['bproof_2'] = 0
		}
	}, ]]
--[[ 	{
		title = 'FIB จู่โจม',
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 94,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 46,   ['pants_2'] = 1,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		}
	}, ]]
--[[ 	{
		title = 'Sheriff แขนสั้น',
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 118,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 49,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 3,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		}
	}, ]]
--[[ 	{
		title = 'Sheriff แขนยาว',
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 24,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 1,
			['pants_1'] = 49,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 3,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		}
	}, ]]
--[[ 	{
		title = 'ตำรวจทางหลวง',
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 118,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 32,   ['pants_2'] = 0,
			['shoes_1'] = 13,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		}
	}, ]]
--[[ 	{
		title = 'Cost Guard',
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 93,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 49,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		}
	} ]]
}

Config.UniformsListMore = { -- BY THANAWUT PROMRAUNG 
	{
		title = 'สร้อยคอ',
		male = {
			['chain_1'] = 125,  
		},

		female = {
			['chain_1'] = 95,  
		}
	},
	{
		title = 'เสื้อเกาะ',
		male = {
			['bproof_1'] = 18,  	 ['bproof_2'] = 0   
		},

		female = {
			['bproof_1'] = 95,       ['bproof_2'] = 125  
		}
	},

	
--[[ 	{
		title = 'เข็มขัด & ป้าย (แทนที่เกราะ)',
		male = {
			['bproof_1'] = 19,  ['bproof_2'] = 0
		}
	},
--[[ 	{
		title = 'ป้าย ',
		male = {
			['bproof_1'] = 131,  ['bproof_2'] = 0
		}
	}, ]]
--[[ 	{
		title = 'ป้าย LSPD (แทนที่เกราะ)',
		male = {
			['bproof_1'] = 21,  ['bproof_2'] = 0
		}
	},
	{
		title = 'ป้าย FIB (แทนที่เกราะ)',
		male = {
			['bproof_1'] = 21,  ['bproof_2'] = 3
		}
	},
	{
		title = 'ซองปืนที่ขา',
		male = {
			['chain_1'] = 3,  ['chain_2'] = 0
		}
	},
	{
		title = 'ซองปืนที่เอว 1',
		male = {
			['chain_1'] = 2,  ['chain_2'] = 0
		}
	},
	{
		title = 'ซองปืนที่เอว 2',
		male = {
			['chain_1'] = 5,  ['chain_2'] = 0
		}
	}, ]]
	-- {
	-- 	title = 'หมวก Sheriff 1',
	-- 	male = {
	-- 		['helmet_1'] = 10,  ['helmet_2'] = 0
	-- 	}
	-- },
	-- {
	-- 	title = 'หมวก Sheriff 2',
	-- 	male = {
	-- 		['helmet_1'] = 10,  ['helmet_2'] = 7
	-- 	}
	-- },
	-- {
	-- 	title = 'หมวก LSPD สีดำ',
	-- 	male = {
	-- 		['helmet_1'] = 10,  ['helmet_2'] = 1
	-- 	}
	-- },
	-- {
	-- 	title = 'หมวก LSPD สีกรมท่า',
	-- 	male = {
	-- 		['helmet_1'] = 10,  ['helmet_2'] = 3
	-- 	}
	-- },
	-- {
	-- 	title = 'หมวก FIB',
	-- 	male = {
	-- 		['helmet_1'] = 10,  ['helmet_2'] = 4
	-- 	}
	-- }
}

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 1,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = { -- currently the same as intendent_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 11,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	}

}