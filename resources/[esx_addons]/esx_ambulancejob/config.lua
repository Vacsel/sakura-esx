Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 20, x = 1.0, y = 1.0, z = 1.0, r = 50, g = 50, b = 204, a = 100, rotate = false }

Config.ReviveReward               = 0  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'th'

local second = 1000
local minute = 60 * second
Config.Ambulance				  = 1
Config.AutoRespawn				  = true
Config.AutoRespawnTimer           = 3 * minute --ไม่มีหมอ
Config.EarlyRespawnTimer          = 45 * minute  -- เวลาจริง
Config.BleedoutTimer              = 5 * minute -- เวลาเอ๋อ
Config.EnableESXIdentity 		= true
Config.EnablePlayerManagement     = true
Config.EnableJobBlip              = false
Config.MaxInService               = -1

Config.RemoveWeaponsAfterRPDeath  = false
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 10000

Config.RespawnPoint = { coords = vector3(1154.5903, -1522.2045, 34.843), heading = 70.43 }

Config.Hospitals = {
	
	Pillbox = {

		Blip = {
			coords = vector3(1154.5903, -1522.2045, 34.843),--339.27 -576.02 42.33
			sprite = 61,
			scale  = 1.2,
			color  = 25
		},

		VehicleStored = vector3(300.7996215820313, -617.4654541015625, 43.44951629638672-0.97),

		AmbulanceActions = {
			vector3(1128.1229, -1537.5474, 35.4188)
		},

		Pharmacies = {
			-- vector3(335.27, -576.33, 51.49)  --ร้านค้าหมอ
		},

		Vehicles = {
			{
				Spawner = vector3(1112.6337, -1509.2191, 34.839),
				InsideShop = vector3(1116.0298, -1489.9792, 34.6929),
				Marker = { type = 29, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(1116.2479, -1505.9109, 34.2691), heading = 73.14, radius = 4.0 },
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(1144.2604, -1517.1217, 45.1550),
				InsideShop = vector3(1139.9164, -1520.1583, 45.1565),  --outshow
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 255, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(1139.9164, -1520.1583, 45.1565), heading = 181.0231, radius = 10.0 }
				}
			}
		},
		

		FastTravels = {
			{
				From = vector3(1112.4358, -1515.8556, 34.8128-0.97),  --IN
				To = { coords = vector3(1136.1708, -1520.1804, 45.1553), heading =  247.74  }, --OUT
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 255, g = 0, b = 140, a = 100, rotate = false }
			},

			{
				From = vector3(1134.4036, -1520.3994, 45.1544-0.97), --IN
				To = { coords = vector3(1115.5898, -1515.4926, 34.6929-0.97), heading = 69.15 }, --out
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 255, g = 0, b = 140, a = 100, rotate = false }
			}
		},

	},

	Sandy = {

		Blip = {
			coords = vector3(1835.300048828125, 3676.469970703125, 34.27000045776367),--339.27 -576.02 42.33
			sprite = 61,
			scale  = 1.2,
			color  = 25
		},

		AmbulanceActions = {
			-- vector3(335.53, -573.9, 43.33)
		},

		Pharmacies = {
			-- vector3(335.27, -576.33, 51.49)  --ร้านค้าหมอ
		},

		
		Vehicles = {
			-- {
			-- 	Spawner = vector3(1845.0149, 3670.8713, 34.660),
			-- 	InsideShop = vector3(1863.449951171875, 3652.090087890625, 33.72000122070312),
			-- 	Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
			-- 	SpawnPoints = {
			-- 		{ coords = vector3(1847.8299560546875, 3671.090087890625, 33.70000076293945), heading = 210.7956, radius = 4.0 },
			-- 		{ coords = vector3(1834.9599609375, 3664.72998046875, 33.72999954223633), heading = 210.7956, radius = 4.0 }
			-- 	}
			-- }
		},

		Helicopters = {
			{
				Spawner =  vector3(1784.6952, 3658.4351, 34.2471),
				InsideShop = vector3(351.98, -587.98, 75.06),  --outshow
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(1773.9329, 3655.0959, 36.2522), heading = 299.9522, radius = 10.0 }
				}
			}
		}, 
		

		FastTravels = {
			-- {
			-- 	From = vector3(325.38, -599.0, 42.29),  --IN
			-- 	To = { coords = vector3(340.97, -584.56, 74.17), heading = 69.25  }, --OUT
			-- 	Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			-- },

			-- {
			-- 	From = vector3(338.64, -583.83, 73.17), --IN
			-- 	To = { coords = vector3(323.04, -598.28, 43.29), heading = 253.25 }, --out
			-- 	Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			-- }
		},

	},
-- 	Pillbox2 = {

-- 		Blip = {
-- 			coords = vector3(1731.23, 3630.6, 37.33),--339.27 -576.02 42.33
-- 			sprite = 61,
-- 			scale  = 1.2,
-- 			color  = 2
-- 		},

-- 		AmbulanceActions = {
-- 			--vector3(335.27, -576.33, 51.49)
-- 		},

-- 		Pharmacies = {
-- 			--vector3(335.27, -576.33, 51.49)
-- 		},

-- 		Vehicles = {
-- --[[ 			{
-- 				Spawner = vector3(301.03, -603.02, 43.41),
-- 				InsideShop = vector3(325.7, -549.3, 28.74),
-- 				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
-- 				SpawnPoints = {
-- 					{ coords = vector3(295.09, -603.98, 43.08), heading = 70.71, radius = 4.0 },
-- 					{ cozords = vector3(293.89, -607.03, 43.1), heading = 43.1, radius = 4.0 },
-- 					{ coords = vector3(292.75, -609.87, 43.12), heading = 69.41, radius = 4.0 }
-- 					-- { coords = vector3(1833.05, 3663.63, 33.44), heading = 208.4, radius = 4.0 }
-- 				}
-- 			} ]]
-- 		},

-- 		Helicopters = {
-- 			{
-- 				Spawner = vector3(1766.38, 3650.38, 34.48),
-- 				InsideShop = vector3(351.98, -587.98, 74.06),  --outshow
-- 				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
-- 				SpawnPoints = {
-- 					{ coords = vector3(1772.77, 3654.17, 34.39), heading = 261.5, radius = 10.0 }
-- 				}
-- 			}
-- 		},
		

-- 		FastTravels = {
-- --[[ 			{
-- 				From = vector3(325.38, -599.0, 42.29),  --IN
-- 				To = { coords = vector3(340.97, -584.56, 74.17), heading = 69.25  }, --OUT
-- 				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
-- 			},

-- 			{
-- 				From = vector3(338.64, -583.83, 73.17), --IN
-- 				To = { coords = vector3(323.04, -598.28, 43.29), heading = 253.25 }, --out
-- 				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
-- 			} ]]
-- 		},

-- 	}
}      

Config.AuthorizedVehicles = {

	doc = {
		{ model = 'adm_neonmd', label = 'Neon', price = 10000},
		{ model = 'ambulance', label = 'ambulance', price = 10000},
		{ model = 'adm_kurumamd', label = 'kuruma', price = 10000},
		{ model = 'adm_jester4md', label = 'Jester', price = 10000},
		{ model = 'adm_sugoimd', label = 'Sugoi', price = 10000},

		{ model = 'puipuipo', label = 'puipuipo', price = 10000},
		{ model = 'adm_bf400md', label = 'BF400', price = 10000},
		
		
	},

	doctor = {
		{ model = 'adm_neonmd', label = 'Neon', price = 10000},
		{ model = 'ambulance', label = 'ambulance', price = 10000},
		{ model = 'adm_kurumamd', label = 'kuruma', price = 10000},
		{ model = 'adm_jester4md', label = 'Jester', price = 10000},
		{ model = 'adm_osirismd', label = 'Osiris', price = 10000},
		{ model = 'adm_sugoimd', label = 'Sugoi', price = 10000},
		{ model = 'dm_coquette4', label = 'C8', price = 10000},
		{ model = 'puipuipo', label = 'puipuipo', price = 10000},
		{ model = 'adm_bf400md', label = 'BF400', price = 10000},
		
	},

	chief_doctor = {
		-- { model = 'polrs', label = 'Ambulance1 car', price = 10000},
		{ model = 'adm_neonmd', label = 'Neon', price = 10000},
		{ model = 'ambulance', label = 'ambulance', price = 10000},
		{ model = 'adm_kurumamd', label = 'kuruma', price = 10000},
		{ model = 'adm_jester4md', label = 'Jester', price = 10000},
		{ model = 'adm_osirismd', label = 'Osiris', price = 10000},
		{ model = 'adm_sugoimd', label = 'Sugoi', price = 10000},

		{ model = 'dm_coquette4', label = 'C8', price = 10000},
		{ model = 'puipuipo', label = 'puipuipo', price = 10000},
		{ model = 'adm_bf400md', label = 'BF400', price = 10000},
		{ model = 'adm_tyrantmd', label = 'Tyrant', price = 10000},
	},

	boss = {
		-- { model = 'polrs', label = 'Ambulance1 car', price = 0},
		{ model = 'adm_neonmd', label = 'Neon', price = 10000},
		{ model = 'ambulance', label = 'ambulance', price = 10000},
		{ model = 'adm_jester4md', label = 'Jester', price = 10000},
		{ model = 'adm_osirismd', label = 'Osiris', price = 10000},
		{ model = 'adm_kurumamd', label = 'kuruma', price = 10000},
		{ model = 'adm_zenmd', label = 'Zentorno', price = 500000},
		{ model = 'adm_sugoimd', label = 'Sugoi', price = 10000},

		{ model = 'dm_coquette4', label = 'C8', price = 10000},
		{ model = 'puipuipo', label = 'puipuipo', price = 10000},
		{ model = 'adm_bf400md', label = 'BF400', price = 10000},
		{ model = 'adm_tyrantmd', label = 'Tyrant', price = 10000},
		{ model = 'dmcorsita', label = 'Corsita', price = 10000},

	},

}

Config.AuthorizedHelicopters = {

	ambulance = {
		{ model = 'buzzard2', label = 'buzzard2',props = {modLivery = 0} ,price = 100000 },
	},

	doctor = {
		{ model = 'buzzard2', label = 'buzzard2',props = {modLivery = 0} ,price = 100000 },
	},

	chief_doctor = {
		-- { model = 'seasparrow', label = 'seasparrow', price = 35000 },
		{ model = 'buzzard2', label = 'buzzard2',props = {modLivery = 0} ,price = 100000 },
		{ model = 'polmav', label = 'polmav', props = {modLivery = 1} ,price = 100000 },
	},

	boss = {
		-- { model = 'seasparrow', label = 'seasparrow', price = 35000 },
		{ model = 'buzzard2', label = 'buzzard2', props = {modLivery = 0} ,price = 100000 },
		{ model = 'polmav', label = 'polmav', props = {modLivery = 1} ,price = 100000 },
		{ model = 'admbuzzardsirenv2', label = 'admbuzzardsirenv2', props = {modLivery = 3} ,price = 100000 }, -- admbuzzardsirenv2
	}

}

Config.Uniforms = {
	ambulance = {
		male = {
			-- tshirt_1= 15, --เสื้อด้านใน
			-- tshirt_2= 0,   --สีเสื้อด้านใน
			torso_1= 768, --เสื้อนอก
			torso_2 = 1,  --สีเสื้อนอก
			-- decals_1= 0, --สติ๊กเกอร์1
			arms= 85, 	--แขน/ถุงมือ
			-- pants_1 = 24,  --กางเกง
			-- pants_2= 5,  --สีกางเกง
			-- decals_2 = 0, --สติ๊กเกอร์ 2
			-- shoes_1  = 36,  --รองเท้า 
			-- shoes_2  = 2,  --สีรองเท้า
			-- chain_1 = 30,  --สร้อยคอ
			-- chain_2 = 0,  --สร้อยคอ
		},
		female = {
			-- tshirt_1= 15, --เสื้อด้านใน
			-- tshirt_2= 0,   --สีเสื้อด้านใน
			torso_1= 727, --เสื้อนอก
			torso_2 = 1,  --สีเสื้อนอก
			-- decals_1= 0, --สติ๊กเกอร์1
			arms= 109, 	--แขน/ถุงมือ
			-- pants_1 = 14,  --กางเกง
			-- pants_2= 4,  --สีกางเกง
			-- decals_2 = 0, --สติ๊กเกอร์ 2
			-- shoes_1  = 37,  --รองเท้า 
			-- shoes_2  = 0,  --สีรองเท้า
			-- chain_1 = 96,  --สร้อยคอ
			-- chain_2 = 0,  --สร้อยคอ
		}
	},

	doctor = {
		male = {
			-- tshirt_1= 15, --เสื้อด้านใน
			-- tshirt_2= 0,   --สีเสื้อด้านใน
			torso_1= 768, --เสื้อนอก
			torso_2 = 1,  --สีเสื้อนอก
			-- decals_1= 0, --สติ๊กเกอร์1
			arms= 85, 	--แขน/ถุงมือ
			-- pants_1 = 24,  --กางเกง
			-- pants_2= 5,  --สีกางเกง
			-- decals_2 = 0, --สติ๊กเกอร์ 2
			-- shoes_1  = 36,  --รองเท้า 
			-- shoes_2  = 2,  --สีรองเท้า
			-- chain_1 = 30,  --สร้อยคอ
			-- chain_2 = 0,  --สร้อยคอ
		},
		female = {
			-- tshirt_1= 15, --เสื้อด้านใน
			-- tshirt_2= 0,   --สีเสื้อด้านใน
			torso_1= 727, --เสื้อนอก
			torso_2 = 1,  --สีเสื้อนอก
			-- decals_1= 0, --สติ๊กเกอร์1
			arms= 109, 	--แขน/ถุงมือ
			-- pants_1 = 14,  --กางเกง
			-- pants_2= 4,  --สีกางเกง
			-- decals_2 = 0, --สติ๊กเกอร์ 2
			-- shoes_1  = 37,  --รองเท้า 
			-- shoes_2  = 0,  --สีรองเท้า
			-- chain_1 = 96,  --สร้อยคอ
			-- chain_2 = 0,  --สร้อยคอ
		}
	},

	chief_doctor = {
		male = {
			-- tshirt_1= 15, --เสื้อด้านใน
			-- tshirt_2= 0,   --สีเสื้อด้านใน
			torso_1= 768, --เสื้อนอก
			torso_2 = 1,  --สีเสื้อนอก
			-- decals_1= 0, --สติ๊กเกอร์1
			arms= 85, 	--แขน/ถุงมือ
			-- pants_1 = 24,  --กางเกง
			-- pants_2= 5,  --สีกางเกง
			-- decals_2 = 0, --สติ๊กเกอร์ 2
			-- shoes_1  = 36,  --รองเท้า 
			-- shoes_2  = 2,  --สีรองเท้า
			-- chain_1 = 30,  --สร้อยคอ
			-- chain_2 = 0,  --สร้อยคอ
		},
		female = {
			-- tshirt_1= 15, --เสื้อด้านใน
			-- tshirt_2= 0,   --สีเสื้อด้านใน
			torso_1= 727, --เสื้อนอก
			torso_2 = 1,  --สีเสื้อนอก
			-- decals_1= 0, --สติ๊กเกอร์1
			arms= 109, 	--แขน/ถุงมือ
			-- pants_1 = 14,  --กางเกง
			-- pants_2= 4,  --สีกางเกง
			-- decals_2 = 0, --สติ๊กเกอร์ 2
			-- shoes_1  = 37,  --รองเท้า 
			-- shoes_2  = 0,  --สีรองเท้า
			-- chain_1 = 96,  --สร้อยคอ
			-- chain_2 = 0,  --สร้อยคอ
		}
	},

	boss = {
		male = {
			-- tshirt_1= 15, --เสื้อด้านใน
			-- tshirt_2= 0,   --สีเสื้อด้านใน
			torso_1= 768, --เสื้อนอก
			torso_2 = 1,  --สีเสื้อนอก
			-- decals_1= 0, --สติ๊กเกอร์1
			arms= 85, 	--แขน/ถุงมือ
			-- pants_1 = 24,  --กางเกง
			-- pants_2= 5,  --สีกางเกง
			-- decals_2 = 0, --สติ๊กเกอร์ 2
			-- shoes_1  = 36,  --รองเท้า 
			-- shoes_2  = 2,  --สีรองเท้า
			-- chain_1 = 30,  --สร้อยคอ
			-- chain_2 = 0,  --สร้อยคอ
		},
		female = {
			-- tshirt_1= 15, --เสื้อด้านใน
			-- tshirt_2= 0,   --สีเสื้อด้านใน
			torso_1= 727, --เสื้อนอก
			torso_2 = 1,  --สีเสื้อนอก
			-- decals_1= 0, --สติ๊กเกอร์1
			arms= 109, 	--แขน/ถุงมือ
			-- pants_1 = 14,  --กางเกง
			-- pants_2= 4,  --สีกางเกง
			-- decals_2 = 0, --สติ๊กเกอร์ 2
			-- shoes_1  = 37,  --รองเท้า 
			-- shoes_2  = 0,  --สีรองเท้า
			-- chain_1 = 96,  --สร้อยคอ
			-- chain_2 = 0,  --สร้อยคอ
		}
	},
}