Config = {}
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
Config.Locale = 'en'

-- mythic_progbar
-- xsound
-- https://github.com/Xogy/xsound
-- เว็บเข้ารหัส  https://ganlvtech.github.io/lua-simple-encrypt/  ไม่ค่อยเเนะนำถอดง่าย
Config.opendoor = 38	-- E
Config.bommdoor = 47	-- G
Config.label = 'กำลังวางระเบิด'  -- เวลาในการวางระเบิด

-- ##### เกั่ยวกับเสียง
Config.sound  	= "https://youtu.be/v71OuBoOu_g"
Config.timesetboom = 10*1000  -- เวลาในการวางระเบิด
Config.timerA = 5*1000 -- เวลาก่อนระเบิด
Config.timerB = 3800 -- เวลาก่อนเกิดเสียง		ขึ้นอยู่กับความยาวคริปเสียง
Config.TimeRepair = 10000
-- #####

-- ##  เกียวกับระเบิด
Config.integer  	= 0 -- ประเภทระเบิด
Config.damage  	= 1065353216 -- ความเสียหาย
Config.sound  		= true -- เสียง
Config.invisible  	= false -- มองไม่เห็น
Config.camera  	= 1065353216 -- กล้องสั่น
Config.item	= {
	['dynamite_gang'] = true,
	['dynamite'] = true,
}

Config.repairitem	= 'door_fix'
Config.repairremove	= true  -- ซ่อมประตูเสีย item
Config.Cooldowndoor = 1000 
Config.Autodoortime = 10000
Config.Timeoutrepairdoor = 30
Config.Autodoor = false

-- เเจ้งเตือนตำรวจ client/main.lua บรรทัดที่ 222
Config.policetype	= "boom_door" -- ประเภทการเเจ้งเตือนเเล้วเเต่สคริป   เช่น cement burglary  ขึ้นอยู่กับสคริปที่ใช้ 
Config.policetext	= "เกิดเหตุระเบิด"

Config.DoorExit = {
	-- {textCoords = vector3(883.8200073242188, -66.7699966430664, 80.72000122070312)},
	-- {textCoords = vector3(848.3900146484375, -52.77999877929687, 80.72000122070312)},
	-- {textCoords = vector3(862.0900268554688, -10.65999984741211, 80.72000122070312)},
	-- {textCoords = vector3(1195.010009765625, -1349.550048828125, 35.72999954223633)},
	-- {textCoords = vector3(1203.5, -1385.969970703125, 35.72999954223633)},
	-- {textCoords = vector3(1160.739990234375, -1397.6800537109375, 35.72999954223633)},

	-- {textCoords = vector3(-1271.8499755859375, -1811.0899658203127, 5.59999990463256)},
	-- {textCoords = vector3(-1242.469970703125, -1832.8800048828127, 5.59999990463256)},
	-- {textCoords = vector3(-1267.2900390625, -1871.3699951171875, 5.59999990463256)},

	-- {textCoords = vector3(-1723.739990234375, 123.56999969482422, 64.75)},
	-- {textCoords = vector3(-1706.780029296875, 148.52999877929688, 64.75)},
	-- {textCoords = vector3(-1720.300048828125, 167.6199951171875, 64.75)},
	-- {textCoords = vector3(-2079.780029296875, -574.4000244140625, 7.23000001907348)},
	-- {textCoords = vector3(-2047.75, -594.1400146484375, 7.23000001907348)},
	-- {textCoords = vector3(-2068.260009765625, -632.989990234375, 7.23000001907348)},

	
	
}

Config.OBJ = { 
    -- [1] = {
    --     prop = "imp_prop_tool_draw_01e", --ชื่อ OBJ
    --     position = {
    --         {coord = vector3(1148.22998046875, -228.9799957275391, 69.94000244140625), heading = 328.0, useobj = true}, --ตำแหน่ง + เปิดปิด OBJ // ตู้แดงตรงการาจคาสิโน
          
    --     }
    -- }
}


Config.DoorList = {
	-- {		--ประตูใหญ่
	-- 	textCoords = vector3(329.3734, -585.960, 43.281),			
	-- 	authorizedJobs = { '' },
	-- 	locked = true,
	-- 	boom = true, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 4,
	-- 	item = false,
	-- 	itemname = 'battlepass',
	-- 	distance = 10,	
	-- 	doors = {
	-- 		{ 
	-- 			objName = 220394186,			
	-- 			objYaw = 158.58,
	-- 			objCoords  = vector3(328.7396, -585.2016, 43.43293)		
	-- 		},
	-- 		{
	-- 			objName = 220394186,			
	-- 			objYaw = 340.0,
	-- 			objCoords  = vector3(330.2621, -585.7777, 43.43293)		
	-- 		},
			
			
	-- 	}
	-- },
	{	
		authorizedJobs = {'ambulance', 'police' , 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'club_key_senior',
		distance = 2.0,   
		textCoords = vector3(1210.09, -1512.69, 34.68),
		doors = {
			{objName = -1747119540, objYaw = 89.9, objCoords = vector3(1210.39, -1514.30,35.72)},
		
		 },
	},

	{	
		authorizedJobs = {'ambulance', 'ambulance', 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'club_key_senior',
		distance = 2.0,
		textCoords = vector3(315.0899963378906, -582.8800048828125, 43.27999877929687),
		doors = {
			{objName = 220394186, objYaw = 251.40, objCoords = vector3(314.86, -583.70, 43.44)},
			{objName = 220394186, objYaw = 72.0, objCoords = vector3(315.38, -582.15, 43.44)}
		 },
	},
	{	
		authorizedJobs = {'ambulance', 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'club_key_senior',
		distance = 2.0,
		textCoords = vector3(337.5403, -578.2277, 43.3320),
		doors = {
			{objName = 220394186, objYaw = 160.60, objCoords = vector3(336.59, -578.30, 43.56)},
			{objName = 220394186, objYaw = 340.69, objCoords = vector3(338.14, -578.84, 43.56)}
		 },
	},
	{	
		authorizedJobs = {'ambulance', 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'club_key_senior',
		distance = 2.0,
		textCoords = vector3(299.6199951171875, -584.8300170898438, 43.29000091552734),
		doors = {
			{objName = 220394186, objYaw = 69.73, objCoords = vector3(299.90, -584.05, 43.44)},
			{objName = 220394186, objYaw = 249.71, objCoords = vector3(299.33, -585.60, 43.44)}
		 },
	},

	{	
		authorizedJobs = {'ambulance', 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'club_key_senior',
		distance = 2.0,
		textCoords = vector3(331.5799865722656, -571.75, 43.31999969482422),
		doors = {
			{objName = -770740285, objYaw = 249.151, objCoords = vector3(331.16, -572.78, 43.32)},
			{objName = -770740285, objYaw = 70.60, objCoords = vector3(331.96, -570.63, 43.32)}
	 	},
	},

	-- vacsel config
	-- ambulance1
	{	
		authorizedJobs = {'ambulance', 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'club_key_senior',
		distance = 2.0,
		textCoords = vector3(1120.4738, -1558.4438, 35.4188),
		doors = {
			{objName = -770740285, objYaw = 183.6893, objCoords = vector3(1121.1747, -1559.0166, 35.4188)},
			{objName = -770740285, objYaw =  0.1640, objCoords = vector3(1119.6785, -1558.7095, 35.4188)}
	 	},
	},

		-- ambulance2
	{	
		authorizedJobs = {'ambulance', 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'club_key_senior',
		distance = 2.0,
		textCoords = vector3(1136.2565, -1558.4517, 35.4188),
		doors = {
			{objName = -770740285, objYaw = 185.6513, objCoords = vector3(1136.8177, -1558.5121, 35.4188)},
			{objName = -770740285, objYaw =  5.7642, objCoords = vector3(1135.5236, -1558.6420, 35.4188)}
	 	},
	},


	{	
		authorizedJobs = {'ambulance', 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'club_key_senior',
		distance = 2.0,
		textCoords = vector3(331.5799865722656, -571.75, 43.31999969482422),
		doors = {
			{objName = 1653893025, objYaw = 89.99, objCoords = vector3(1129.37, -1540.39, 35.44)},
			
	 	},
	},

	-- {	
	-- 	authorizedJobs = {'ambulance', 'admin'},
	-- 	locked = true,
	-- 	boom = false, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = false,
	-- 	itemname = 'club_key_senior',
	-- 	distance = 2.0,
	-- 	textCoords = vector3(1143.58, -1560.93, 35.44),
	-- 	doors = {
	-- 		{objName = 1653893025, objYaw = 270.0, objCoords = vector3(1143.58, -1563.51, 35.44)},
	-- 		{objName = 1653893025, objYaw = 90.0, objCoords = vector3(1143.58, -1560.93, 35.44)}
	--  	},
	-- },

	-- {	
	-- 	authorizedJobs = {'ambulance', 'admin'},
	-- 	locked = true,
	-- 	boom = false, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = false,
	-- 	itemname = 'club_key_senior',
	-- 	distance = 2.0,
	-- 	textCoords = vector3(1828.588, 3691.424, 34.274),
	-- 	doors = {
	-- 		{objName = 1336564066, objYaw = 30.06, objCoords = vector3(1829.650269, 3691.677734, 33.269901)},
	-- 		{objName = 1336564066, objYaw = 210.20, objCoords = vector3(1827.816895, 3690.612549, 33.269901)}
	--  	},
	-- },

	-- {	
	-- 	authorizedJobs = {'ambulance'},
	-- 	locked = true,
	-- 	boom = false, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = false,
	-- 	itemname = 'club_key_senior',
	-- 	distance = 2.0,
	-- 	textCoords = vector3(1838.751, 3673.676, 34.276),
	-- 	doors = {
	-- 		{objName = 1336564066, objYaw = 30.06, objCoords = vector3(1839.473145, 3674.648438, 33.267288)},
	-- 		{objName = 1336564066, objYaw = 210.20, objCoords = vector3(1837.645020, 3673.587891, 33.267441)}
	--  	},
	-- },

	---------------------------------------------------------บ้านบนซ้าย (gangster)--------------------------------------------------------------------
	{		--ตำอย่างประตูคู่ 
		textCoords = vector3(-460.49, 1066.22, 329.09),	
		authorizedJobs = { 'council' , 'admin', 'offcouncil' },
		locked = true, 
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = '',
		distance = 2.0,	
		doors = {
			{objName = 1293569010, objYaw = 74.74, objCoords = vector3(-461.17, 1065.0, 329.41)},
			{objName = 2040244159, objYaw = 75.60, objCoords = vector3(-460.47, 1067.62, 329.41)},

		}
	},
	{		--ตำอย่างประตูคู่
		textCoords = vector3(-462.44, 1076.09, 329.12),	
		authorizedJobs = { 'council' , 'admin', 'offcouncil' },
		locked = true, 
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = '',
		distance = 2.0,	
		doors = {
			{objName = -711771128, objYaw = 345.17, objCoords = vector3(-461.79, 1076.204, 329.261)},

		}
	},

	{		--ตำอย่างประตูคู่ 
		textCoords = vector3(-467.24, 1058.43, 329.12),			
		authorizedJobs = { 'council' , 'admin', 'offcouncil' },
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = '',
		distance = 2.0,	
		doors = {
			{objName = -711771128, objYaw = 345.05, objCoords = vector3(-466.67, 1057.97, 329.261)},

		}
	},

	{		--ตำอย่างประตูคู่
		textCoords = vector3(-434.9719, 1088.6608, 329.3891),			
		authorizedJobs = { 'council' , 'admin', 'offcouncil' },
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = '',
		distance = 2.0,	
		doors = {
			{objName = -312015968, objYaw = 164.99, objCoords = vector3(-433.48, 1088.53, 329.64)},
			{objName = 462586191, objYaw = 164.99, objCoords = vector3(-436.28, 1089.28, 329.64)}
			
			
		}
	},

	{		--ตำอย่างประตูคู่
		textCoords = vector3(-423.4091, 1056.1415, 329.1281),
		authorizedJobs = { 'council' , 'admin', 'offcouncil' },
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = '',
		distance = 2.0,	
		doors = {
			{objName = 2040244159, objYaw = 75.139991760254, objCoords = vector3(-423.200012, 1057.410034, 329.410004)},
			{objName = 1293569010, objYaw = 74.867279052734, objCoords = vector3(-423.920563, 1054.763794, 329.410767)}
		}
	},

	-- {		--ตำอย่างประตูคู่
	-- 	textCoords = vector3(1399.0128, -2611.2, 50.53038), -- จุด ui
	-- 	authorizedJobs = { 'council' , 'admin', 'offcouncil' },
	-- 	locked = true,
	-- 	boom = false, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = false,
	-- 	itemname = 'gangcard4',
	-- 	distance = 2.0,		
	-- 	doors = {
	-- 		{objName = 2040244159, objYaw = 75.14, objCoords = vector3(-423.20, 1057.41, 329.41)},
	-- 		{objName = 1293569010, objYaw = 74.90, objCoords = vector3(-423.92, 1054.76, 329.41)}
	-- 	}
	-- },

	{	
		authorizedJobs = { 'council' , 'admin', 'offcouncil' },
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,		
		textCoords = vector3(-438.3384, 1076.0377, 336.6506),
		doors = {
			{objName = 2040244159, objYaw = 345.06, objCoords = vector3(-436.80, 1075.81, 336.93)},
			{objName = 1293569010, objYaw = 344.90, objCoords = vector3(-439.44, 1076.51, 336.93)}
		},
	},


	{	
		authorizedJobs = { 'police' , 'admin', 'offpolice' },
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,		
		textCoords = vector3(1855.28, 3683.15, 34.27),
		doors = { 
			{objName = -1765048490, objYaw = 30.64, objCoords = vector3(1855.684814, 3683.930176, 34.592823)},
			
		},
	},

	{	
		authorizedJobs = { 'police' , 'admin', 'offpolice' },
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,		
		textCoords = vector3(434.4885, -981.834, 30.710),
		doors = { 
			
			{objName = -1215222675, objYaw = 270.0, objCoords = vector3(434.7479, -980.6184, 30.83926)},
			{objName = 320433149, objYaw = 270.0, objCoords = vector3(434.7479, -983.2151, 30.83926)}
		},
	},

	{	
		authorizedJobs = { 'police' , 'admin', 'offpolice' },
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,		
		textCoords = vector3(449.6599, -986.453, 30.689),
		doors = { 
			
			{objName = 1557126584, objYaw = 89.999, objCoords = vector3(450.1041, -985.7384, 30.8393)},

		},
	},

	{	
		authorizedJobs = { 'police' , 'admin', 'offpolice' },
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,		
		textCoords = vector3(444.7617, -989.121, 30.689),
		doors = { 
			{objName = 185711165, objYaw = 0.0, objCoords = vector3(446.0079, -989.4454, 30.8393)},
			{objName = 185711165, objYaw = 179.99998474121, objCoords = vector3(443.4078, -989.4454, 30.8393)}
		},
	},

	{	
		authorizedJobs = { 'police' , 'admin', 'offpolice' },
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,		
		textCoords = vector3(463.8783, -992.295, 24.914),
		doors = { 
			{objName = 631614199, objYaw = 0.0, objCoords = vector3(464.5701, -992.6641, 25.06443)},
		
		},
	},

	{	
		authorizedJobs = { 'police' , 'admin', 'offpolice' },
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,		
		textCoords = vector3(464.0323, -1003.13, 24.914),
		doors = { 
			{objName = -1033001619, objYaw = 0.0, objCoords = vector3(463.4782, -1003.538, 25.00599)},
		
		},
	},

	{	
		authorizedJobs = { 'police' , 'admin', 'offpolice' },
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,		
		textCoords = vector3(468.6603, -1014.35, 26.386),
		doors = { 
			{objName = -2023754432, objYaw = 179.99998474121, objCoords = vector3(469.9679, -1014.452, 26.53623)},
			{objName = -2023754432, objYaw = 0.0, objCoords = vector3(467.3716, -1014.452, 26.53623)}
		},
	},


	{	
		authorizedJobs = {'police' , 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 5.0,  
		textCoords = vector3(1845.38, 2608.43, 45.67),
		doors = {
			{objName = 741314661, objYaw =90.0, objCoords = vector3(1844.99, 2604.81, 44.63)},
		},
	},

	{	
		authorizedJobs = {'police' , 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 5.0,   
		textCoords = vector3(1795.94, 2617.5, 45.67),
		doors = {
			{objName = 741314661, objYaw =179.99, objCoords = vector3(1799.61, 2616.97, 44.59)},
		},
	},
	
	
	{	
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		textCoords = vector3(1867.1692, 3689.9221, 35.8674),
		distance = 2.0,
		doors = {
			{objName = -1704613789, objYaw = 29.92, objCoords = vector3(1868.32, 3690.55, 36.01)},
			{objName = -1704613789, objYaw = 210.32, objCoords = vector3(1866.29, 3689.38, 36.01)}
		},
	},

	{	
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,
		textCoords = vector3(1865.6960, 3695.9141, 35.8674),
		doors = {
			{objName = -1700911976, objYaw = 29.79, objCoords = vector3(1866.80, 3696.63, 36.01)},
			{objName = -434783486, objYaw = 29.52, objCoords = vector3(1864.58, 3695.34, 36.01)}
		},
	},

	{	
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,
		textCoords = vector3(428.6115, -983.4642, 29.4997),
		doors = {
			{objName = 5875107, objYaw =180.11, objCoords = vector3(429.65, -983.73, 30.08)},
		},
	},

	{	
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,
		textCoords = vector3(440.8625, -982.1375, 31.1393),  -- 440.8625, -982.1375, 31.1393, 85.5388
		doors = {
			{objName = -1632479958, objYaw = 90.388946533203, objCoords = vector3(441.134186, -980.820984, 32.001320)},
			{objName = -1632479958, objYaw = 270.50732421875, objCoords = vector3(441.134186, -983.453003, 32.001320)}
		},
	},

	{	
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = false,
		itemname = 'gangcard4',
		distance = 2.0,
		textCoords = vector3(452.2582, -978.1052, 31.1393), -- 
		doors = {
			{objName = -1294480481, objYaw =327.74166870117, objCoords = vector3(452.817474, -978.096497, 31.352955)},
		},
	},

	{
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = false,
		itemname = 'house_key_1',
		distance = 2.0,
		textCoords = vector3(458.3362, -978.0515, 31.1393),
		  doors = {
			   {objName = -1294480481,  objYaw = 0.0, objCoords = vector3(458.88824462891,-978.09649658203,31.352954864502) },
		  }
	  },
	  {
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = false,
		itemname = 'house_key_1',
		distance = 2.0,
		textCoords = vector3(464.4163, -978.0999, 31.1393),
		  doors = {
			   {objName = -1294480481,  objYaw = 0.0, objCoords = vector3(464.97750854492,-978.09649658203,31.352954864502) },
		  }
	  },
	  {
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = false,
		itemname = 'house_key_1',
		distance = 2.0,
		textCoords = vector3(476.8125, -984.6591, 31.1392),
		doors = {
			   {objName = -1294480481,  objYaw = 90.0, objCoords = vector3(476.42404174805,-983.43597412109,31.352954864502) },
			   {objName = -1294480481,  objYaw = 270.0, objCoords = vector3(476.42404174805,-985.88159179688,31.352954864502) },
		  }
	  },
	  {
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = false,
		itemname = 'house_key_1',
		distance = 2.0,
		textCoords = vector3(454.9386, -988.4515, 31.1393),
		  doors = {
			   {objName = -1294480481,  objYaw = 0.0, objCoords = vector3(455.54763793945,-988.33135986328,31.35311126709) },
		  }
	  },
	  {
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = false,
		itemname = 'house_key_1',
		distance = 2.0,
		textCoords = vector3(468.9943, -984.6494, 36.0202),
		doors = {
			   {objName = -1294480481,  objYaw = 89.999984741211, objCoords = vector3(468.94595336914,-983.3525390625,36.225280761719) },
			   {objName = -1294480481,  objYaw = 270.0, objCoords = vector3(468.9460144043,-985.80218505859,36.225280761719) },
		  }
	  },
	  {
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = false,
		itemname = 'house_key_1',
		distance = 2.0,
		textCoords = vector3(449.9463, -978.5949, 36.0202),
		doors = {
			   {objName = -1294480481,  objYaw = 0.0, objCoords = vector3(451.14004516602,-978.58831787109,36.225280761719) },
			   {objName = -1294480481,  objYaw = 180.00001525879, objCoords = vector3(448.69039916992,-978.58831787109,36.225280761719) },
		  }
	  },
	  {
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = false,
		itemname = 'house_key_1',
		distance = 2.0,
		textCoords = vector3(445.9796, -987.0661, 36.0202),
		doors = {
			   {objName = -1294480481,  objYaw = 0.0, objCoords = vector3(447.21682739258,-986.97204589844,36.225280761719) },
			   {objName = -1294480481,  objYaw = 180.00001525879, objCoords = vector3(444.76718139648,-986.97204589844,36.225280761719) },
		  }
	  },
	  {
		authorizedJobs = {'offpolice','police' , 'admin'},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = false,
		itemname = 'house_1',
		distance = 2.0,
		textCoords = vector3(-443.3457, 6016.3696, 31.7122),
		doors = {
			   {objName = -1501157055,  objYaw = 315.22543334961, objCoords = vector3(-442.66003417969,6015.2216796875,31.866329193115) },
			   {objName = -1501157055,  objYaw = 134.75904846191, objCoords = vector3(-444.49847412109,6017.0600585938,31.866329193115) },
		  }
	  },

	-- {	
	-- 	authorizedJobs = {'offpolice','police' , 'admin'},
	-- 	locked = true,
	-- 	boom = false, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = false,
	-- 	itemname = 'gangcard4',
	-- 	distance = 2.0,
	-- 	textCoords = vector3(437.7426, -983.6477, 29.492),
	-- 	doors = {
	-- 		{objName = 5875107, objYaw =180.04, objCoords = vector3(438.90, -983.73, 30.08)},
	-- 	},
	-- },

	-- {	
	-- 	authorizedJobs = {'offpolice','police' , 'admin'},
	-- 	locked = true,
	-- 	boom = false, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = false,
	-- 	itemname = 'gangcard4',
	-- 	distance = 2.0,
	-- 	textCoords = vector3(433.2107, -993.7466, 29.4904),
	-- 	doors = {
	-- 		{objName = 5875107, objYaw =179.87, objCoords = vector3(434.26, -993.76, 30.08)},
	-- 	},
	-- },

	-- {	
	-- 	authorizedJobs = {'offpolice','police' , 'admin'},
	-- 	locked = true,
	-- 	boom = false, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = false,
	-- 	itemname = 'gangcard4',
	-- 	distance = 2.0,
	-- 	textCoords = vector3(442.0948, -976.9513, 31.3082),
	-- 	doors = {
	-- 		{objName = 5875107, objYaw = 269.99, objCoords = vector3(442.199, -975.94, 30.08)},
	-- 	},
	-- },
	-- {	
	-- 	authorizedJobs = {'offpolice','police' , 'admin'},
	-- 	locked = true,
	-- 	boom = false, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = false,
	-- 	itemname = 'gangcard4',
	-- 	distance = 2.0,
	-- 	textCoords = vector3(424.5247, -976.8673, 30.4328),
	-- 	doors = {
	-- 		{objName = 5875107, objYaw = 269.99, objCoords = vector3(424.42, -975.94, 30.08)},
	-- 	},
	-- },

	-----------------------------------

	{	
		authorizedJobs = {''},
		locked = true,
		boom = true, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_1',
		distance = 2.0,
		house = 'House_01',
		textCoords = vector3(-1496.5875, -1259.4603, 6.7566),
		doors = {
			{objName = 587729701, objYaw = 284.93, objCoords = vector3(-1496.83, -1258.12, 6.91)},
			{objName = 587729701, objYaw = 104.99, objCoords = vector3(-1496.16, -1260.62, 6.91)}
		 },
	},
	-- {
	-- 	authorizedJobs = {''},
	-- 	locked = true,
	-- 	boom = true,
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = true,
	-- 	itemname = 'house_key_1',
	-- 	distance = 2.0,
	-- 	textCoords = vector3(-1456.8848876953,-1262.8265380859,6.6347618103027),
	-- 	house = 'House_01',
	-- 	doors = {
	-- 		   {objName = -965927707,  objYaw = 281.70376586914, objCoords = vector3(-1456.8848876953,-1262.8265380859,6.6347618103027) },
	-- 		   {objName = -965927707,  objYaw = 105.50646972656, objCoords = vector3(-1458.7763671875,-1254.9703369141,6.6347618103027) },
	-- 	  }
	--   },
	{	
		authorizedJobs = {''},
		locked = true,
		boom = true, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 2.0,
		house = 'House_02',
		textCoords = vector3(-2721.0615, -98.4321, 18.8685),
		doors = {
			{objName = 587729701, objYaw = 314.99, objCoords = vector3(-2721.87, -97.36, 19.02)},
			{objName = 587729701, objYaw = 134.99, objCoords = vector3(-2720.04, -99.19, 19.02)}
		},
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = true, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 2.0,
		house = 'House_03',
		textCoords = vector3(-972.71, 1110.25, 220.94),
		doors = {
			{objName = 587729701, objYaw = 339.99, objCoords = vector3(-974.07, 1110.42, 221.09)},
			{objName = 587729701, objYaw = 159.99, objCoords = vector3(-971.64, 1109.53, 221.09)}
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = true, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 2.0,
		house = 'House_04',
		textCoords = vector3(-834.4577, 1724.3682, 200.5761),
		doors = {
			{objName = 587729701, objYaw = 219.99, objCoords = vector3(-833.29, 1725.01, 200.73)},
			{objName = 587729701, objYaw = 39.99, objCoords = vector3(-835.28, 1723.34, 200.73)}
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = true, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 2.0,
		house = 'House_05',
		textCoords = vector3(1087.7788, 1537.7969, 177.9140),
		doors = {
			{objName = 587729701, objYaw = 124.99, objCoords = vector3(1088.57, 1536.80, 178.06)},
			{objName = 587729701, objYaw = 305.0, objCoords = vector3(1087.09, 1538.92, 178.06)}
		 },
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = true, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 2.0,
		house = 'House_06',
		textCoords = vector3(594.3343, 726.1395, 205.1953),
		doors = {
			{objName = 587729701, objYaw = 344.99, objCoords = vector3(593.07, 726.60, 205.35)},
			{objName = 587729701, objYaw = 164.99, objCoords = vector3(595.57, 725.93, 205.35)}
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = true, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 2.0,
		house = 'House_07',
		textCoords = vector3(1443.2206, 1614.3754, 116.1707),
		doors = {
			{objName = 587729701, objYaw = 265.0, objCoords = vector3(1443.39, 1615.69, 116.32)},
			{objName = 587729701, objYaw = 84.99, objCoords = vector3(1443.16, 1613.11, 116.32)}
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = true, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 2.0,
		house = 'House_08',
		textCoords = vector3(2238.9939, 1574.0796, 83.4563),
		doors = {
			{objName = 587729701, objYaw = 89.99, objCoords = vector3(2239.00, 1572.79, 83.61)},
			{objName = 587729701, objYaw = 269.99, objCoords = vector3(2239.00, 1575.38, 83.61)}
		},
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = true, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 2.0,
		house = 'House_09',
		textCoords = vector3(2732.1250, 421.0827, 97.9486),
		doors = {
			{objName = 587729701, objYaw = 84.99, objCoords = vector3(2731.88, 419.73, 98.10)},
			{objName = 587729701, objYaw = 264.99, objCoords = vector3(2732.10, 422.31, 98.10)}
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = true, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 2.0,
		house = 'House_10',
		textCoords = vector3(1468.8885, -1570.5222, 77.3892),
		doors = {
			{objName = 587729701, objYaw = 269.99, objCoords = vector3(1469.00, -1569.10, 77.54)},
			{objName = 587729701, objYaw = 89.99, objCoords = vector3(1469.00, -1571.69, 77.54)}
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_204',
		label = '202',
		distance = 2.0,
		textCoords = vector3(-717.47, 6107.85, 4.3),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-717.47, 6107.85, 4.3)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_206',
		label = '203',
		distance = 2.0,
		textCoords = vector3(-721.36, 6108.93, 8.19),
		doors = {
			{objName = -1128607325, objYaw = 233.17, objCoords = vector3(-721.36, 6108.93, 8.19)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_208',
		label = '204',
		distance = 2.0,
		textCoords = vector3(-717.52, 6107.82, 8.21),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-717.52, 6107.82, 8.21)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_205',
		label = '101',
		distance = 2.0,
		textCoords = vector3(-725.13, 6080.44, 4.29),
		doors = {
			{objName = -1128607325, objYaw = 234.99, objCoords = vector3(-725.13, 6080.44, 4.29)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_210',
		label = '205',
		distance = 2.0,
		textCoords = vector3(-720.39, 6109.92, 12.00),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-720.39, 6109.92, 12.00)},
		 },
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_212',
		label = '206',
		distance = 2.0,
		textCoords = vector3(-717.59, 6107.87, 11.99),
		doors = {
			{objName = -1128607325, objYaw = 53.95, objCoords = vector3(-717.59, 6107.87, 11.99)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_211',
		label = '102',
		distance = 2.0,
		textCoords = vector3(-728.14, 6082.58, 4.29),
		doors = {
			{objName = -1128607325, objYaw = 235.0, objCoords = vector3(-728.14, 6082.58, 4.29)},
		 },
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_213',
		label = '103',
		distance = 2.0,
		textCoords = vector3(-724.25, 6081.50, 8.19),
		doors = {
			{objName = -1128607325, objYaw = 53.17, objCoords = vector3(-724.25, 6081.50, 8.19)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_207',
		label = '104',
		distance = 2.0,
		textCoords = vector3(-728.09, 6082.61, 8.21),
		doors = {
			{objName = -1128607325, objYaw = 235.0, objCoords = vector3(-728.09, 6082.61, 8.21)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_201',
		label = '105',
		distance = 2.0,
		textCoords = vector3(-725.22, 6080.51, 11.99),
		doors = {
			{objName = -1128607325, objYaw = 234.99, objCoords = vector3(-725.22, 6080.51, 11.99)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_202',
		label = '106',
		distance = 2.0,
		textCoords = vector3(-728.02, 6082.56, 11.99),
		doors = {
			{objName = -1128607325, objYaw = 233.95, objCoords = vector3(-728.02, 6082.56, 11.99)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_209',
		label = '201',
		distance = 2.0,
		textCoords = vector3(-720.48, 6109.99, 4.29),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-720.48, 6109.99, 4.29)},
		 },
	},



	------------------------------------------------------------
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_203',
		label = '301',
		distance = 2.0,
		textCoords = vector3(-750.80, 6098.41, 4.29),
		doors = {
			{objName = -1128607325, objYaw = 234.99, objCoords = vector3(-750.80, 6098.41, 4.29)},
		 },
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_302',
		label = '302',
		distance = 2.0,
		textCoords = vector3(-753.80, 6100.55, 4.29),
		doors = {
			{objName = -1128607325, objYaw = 234.99, objCoords = vector3(-753.80, 6100.55, 4.29)},
		 },
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_303',
		label = '303',
		distance = 2.0,
		textCoords = vector3(-1602.2759, -913.8480, 14.9304),
		doors = {
			{objName = -1128607325, objYaw = 234.99, objCoords = vector3(-1602.2759, -913.8480, 14.9304)},
		 },
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_304',
		label = '304',
		distance = 2.0,
		textCoords = vector3(-749.92, 6099.47, 8.19),
		doors = {
			{objName = -1128607325, objYaw = 53.17, objCoords = vector3(-749.92, 6099.47, 8.19)},
		 },
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_305',
		label = '305',
		distance = 2.0,
		textCoords = vector3(-750.89,6098.48, 11.99),
		doors = {
			{objName = -1128607325, objYaw = 234.99, objCoords = vector3(-750.89,6098.48, 11.99)},
		 },
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_306',
		label = '306',
		distance = 2.0,
		textCoords = vector3(-753.69, 6100.53, 11.99),
		doors = {
			{objName = -1128607325, objYaw = 233.95, objCoords = vector3(-753.69, 6100.53, 11.99)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_401',
		label = '401',
		distance = 2.0,
		textCoords = vector3(-774.31, 6119.18, 4.29),
		doors = {
			{objName = -1128607325, objYaw = 204.99, objCoords = vector3(-774.31, 6119.18, 4.29)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_402',
		label = '402',
		distance = 2.0,
		textCoords = vector3(-775.83, 6122.54, 4.29),
		doors = {
			{objName = -1128607325, objYaw = 205.0, objCoords = vector3(-775.83, 6122.54, 4.29)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_403',
		label = '403',
		distance = 2.0,
		textCoords = vector3(-773.01, 6119.66, 8.19),
		doors = {
			{objName = -1128607325, objYaw = 23.17, objCoords = vector3(-773.01, 6119.66, 8.19)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_404',
		label = '404',
		distance = 2.0,
		textCoords = vector3(-775.78, 6122.54, 8.21),
		doors = {
			{objName = -1128607325, objYaw = 205.0, objCoords = vector3(-775.78, 6122.54, 8.21)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_405',
		label = '405',
		distance = 2.0,
		textCoords = vector3(-774.34, 6119.30, 11.99),
		doors = {
			{objName = -1128607325, objYaw = 204.99, objCoords = vector3(-774.34, 6119.30, 11.99)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_406',
		label = '406',
		distance = 2.0,
		textCoords = vector3(-775.74, 6122.46, 11.99),
		doors = {
			{objName = -1128607325, objYaw = 203.95, objCoords = vector3(-775.74, 6122.46, 11.99)},
		 },
	},


	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_501',
		label = '501',
		distance = 2.0,
		textCoords = vector3(-709.74, 6181.89, 4.33),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-709.74, 6181.89, 4.33)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_502',
		label = '502',
		distance = 2.0,
		textCoords = vector3(-706.74, 6179.75, 4.33),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-706.74, 6179.75, 4.33)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_503',
		label = '503',
		distance = 2.0,
		textCoords = vector3(-710.63, 6180.83, 8.23),
		doors = {
			{objName = -1128607325, objYaw = 233.17, objCoords = vector3(-710.63, 6180.83, 8.23)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_504',
		label = '504',
		distance = 2.0,
		textCoords = vector3(-706.78, 6179.71, 8.25),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-706.78, 6179.71, 8.25)},
		},
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_505',
		label = '505',
		distance = 2.0,
		textCoords = vector3(-709.65, 6181.81, 12.04),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-709.65, 6181.81, 12.04)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_506',
		label = '506',
		distance = 2.0,
		textCoords = vector3(-706.85, 6179.77, 12.03),
		doors = {
			{objName = -1128607325, objYaw = 53.95, objCoords = vector3(-706.85, 6179.77, 12.03)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_601',
		label = '601',
		distance = 2.0,
		textCoords = vector3(-680.65, 6166.37, 4.33),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-680.65, 6166.37, 4.33)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_602',
		label = '602',
		distance = 2.0,
		textCoords = vector3(-677.65, 6164.23, 4.33),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-677.65, 6164.23, 4.33)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_603',
		label = '603',
		distance = 2.0,
		textCoords = vector3(-681.53, 6165.31, 8.23),
		doors = {
			{objName = -1128607325, objYaw = 233.17, objCoords = vector3(-681.53, 6165.31, 8.23)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_604',
		label = '604',
		distance = 2.0,
		textCoords = vector3(-677.69, 6164.20, 8.25),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-677.69, 6164.20, 8.25)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_605',
		label = '605',
		distance = 2.0,
		textCoords = vector3(-680.56, 6166.29, 12.04),
		doors = {
			{objName = -1128607325, objYaw = 54.99, objCoords = vector3(-680.56, 6166.29, 12.04)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_606',
		label = '606',
		distance = 2.0,
		textCoords = vector3(-677.76, 6164.25, 12.03),
		doors = {
			{objName = -1128607325, objYaw = 53.95, objCoords = vector3(-677.76, 6164.25, 12.03)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_701',
		label = '701',
		distance = 2.0,
		textCoords = vector3(-698.26, 6134.07, 4.31),
		doors = {
			{objName = -1128607325, objYaw = 234.99, objCoords = vector3(-698.26, 6134.07, 4.31)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_702',
		label = '702',
		distance = 2.0,
		textCoords = vector3(-701.26, 6136., 4.31),
		doors = {
			{objName = -1128607325, objYaw = 234.99, objCoords = vector3(-701.26, 6136., 4.31)},
		 },
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_703',
		label = '703',
		distance = 2.0,
		textCoords = vector3(-697.37, 6135.13, 8.21),
		doors = {
			{objName = -1128607325, objYaw = 53.17, objCoords = vector3(-697.37, 6135.13, 8.21)},
		},
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_704',
		label = '704',
		distance = 2.0,
		textCoords = vector3(-701.21, 6136.24, 8.23),
		doors = {
			{objName = -1128607325, objYaw = 234.99, objCoords = vector3(-701.21, 6136.24, 8.23)},
		 },
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_705',
		label = '705',
		distance = 2.0,
		textCoords = vector3(-698.35, 6134.15, 12.02),
		doors = {
			{objName = -1128607325, objYaw = 234.99, objCoords = vector3(-698.35, 6134.15, 12.02)},
		 },
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'apartment_key_706',
		label = '706',
		distance = 2.0,
		textCoords = vector3(-701.14, 6136.19, 12.01),
		doors = {
			{objName = -1128607325, objYaw = 233.95, objCoords = vector3(-701.14, 6136.19, 12.01)},
		 },
	},
	{
		authorizedJobs = {''}, --ประตูทางเข้าหลัก
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'club_key_senior',
		distance = 2.0,
		textCoords = vector3(-14.6302, 239.1475, 109.5539),
		doors = {
			{objName = 1145264938, objYaw = 170.92, objCoords = vector3(-13.33, 238.61, 109.71)},
			{objName = 1145264938, objYaw = 351.52, objCoords = vector3(-15.89, 239.01, 109.71)}
		},
	},
	{	
		authorizedJobs = {''}, --ทางออกประตูลับ
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'club_key_senior',
		distance = 2.0,
		textCoords = vector3(-59.0970, 184.5052, 87.3929),
		doors = {
			{objName = -2023754432, objYaw = 28.69, objCoords = vector3(-60.13, 183.82, 87.52)},
			{objName = -2023754432, objYaw = 215.51, objCoords = vector3(-58.00, 185.30, 87.52)}
		},
	},
	{	
		authorizedJobs = {''},  --ทางเข้าห้องบอส
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'club_key_senior',
		distance = 2.0,
		textCoords = vector3(-16.7415, 222.9396, 109.5507),
		doors = {
			{objName = -88942360, objYaw = 171.38, objCoords = vector3(-17.57, 223.16, 109.70)},
	
		},
	},
	{	
		authorizedJobs = {''},  --backstage
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'club_key_staff',
		distance = 2.0,
		textCoords = vector3(-25.4469, 262.8474, 94.9525),
		doors = {
			{objName = -88942360, objYaw = 261.00, objCoords = vector3(-25.914488, 262.173279, 95.099953)},
	
		},
	},
	{	
		authorizedJobs = {''}, --ทางประตูหลัง
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'club_key_senior',
		distance = 2.0,
		textCoords = vector3(-14.9108, 216.5427, 106.7978),
		doors = {
			{objName = -729104008, objYaw = 261.19, objCoords = vector3(-14.633631, 217.572769, 106.858665)},
			{objName = -729104008, objYaw = 80.79, objCoords = vector3(-14.963188, 215.495575, 106.858665)}
		},
	},
	--------------------------------------------------------------------
	-- {	
	-- 	authorizedJobs = {''},
	-- 	locked = true,
	-- 	boom = false, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = true,
	-- 	itemname = 'apartment_key_401',
	-- 	distance = 2.0,
	-- 	textCoords = vector3(-1610.4049, -883.6942, 11.0165),
	-- 	doors = {
	-- 		{objName = -1128607325, objYaw = 139.99, objCoords = vector3(-1610.85, -883.30, 11.17)},
	-- 	 },
	-- },
	-- {	
	-- 	authorizedJobs = {''},
	-- 	locked = true,
	-- 	boom = false, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = true,
	-- 	itemname = 'apartment_key_308',
	-- 	distance = 2.0,
	-- 	textCoords = vector3(-1610.4049, -883.6942, 11.0165),
	-- 	doors = {
	-- 		{objName = -1128607325, objYaw = 139.99, objCoords = vector3(-1610.85, -883.30, 11.17)},
	-- 	 },
	-- },
	-- {	
	-- 	authorizedJobs = {''},
	-- 	locked = true,
	-- 	boom = false, -- ตั้งค่าว่ามี
	-- 	countboom = 1,
	-- 	countrepair = 1,
	-- 	item = true,
	-- 	itemname = 'apartment_key_309',
	-- 	distance = 2.0,
	-- 	textCoords = vector3(-1610.4049, -883.6942, 11.0165),
	-- 	doors = {
	-- 		{objName = -1128607325, objYaw = 139.99, objCoords = vector3(-1610.85, -883.30, 11.17)},
	-- 	 },
	-- },

		-- [[House1]]

		{
			authorizedJobs = {''},
			locked = true,
			boom = true,
			countboom = 1,
			countrepair = 1,
			item = true,
			itemname = 'house_key_1',
			distance = 10.0,
			textCoords = vector3(-1457.4808, -1258.9498, 6.0515),
			house = 'House_01',
			nexthouse = true,
			level = 6,
			doors = {
					{objName = -965927707,  objYaw = 103.49998474121, objCoords = vector3(-1458.7763671875,-1254.9703369141,6.6347618103027) },
					{objName = -965927707,  objYaw = 283.63909912109, objCoords = vector3(-1456.8848876953,-1262.8265380859,6.6347618103027) },
				}
		},
		{
			authorizedJobs = {''},
			locked = true,
			boom = true,
			countboom = 1,
			countrepair = 1,
			item = true,
			itemname = 'house_key_1',
			distance = 4.0,
			textCoords = vector3(-1484.6130, -1258.2568, 6.1002),
			house = 'House_01',
			nexthouse = true,
			  doors = {
				   {objName = -759737396,  objYaw = 103.49998474121, objCoords = vector3(-1485.5004882812,-1255.9060058594,6.6347618103027) },
			  }
		  },
		  {
			authorizedJobs = {''},
			locked = true,
			boom = true,
			countboom = 1,
			countrepair = 1,
			item = true,
			itemname = 'house_key_1',
			distance = 4.0,
			textCoords = vector3(-1498.6001, -1261.4353, 6.1002),
			house = 'House_01',
			nexthouse = true,
			  doors = {
				   {objName = -759737396,  objYaw = 103.49998474121, objCoords = vector3(-1499.4467773438,-1259.2568359375,6.6170606613159) },
			  }
		  },
		  {
			authorizedJobs = {''},
			locked = true,
			boom = true,
			countboom = 1,
			countrepair = 1,
			item = true,
			itemname = 'house_key_1',
			distance = 2.0,
			textCoords = vector3(-1492.2451, -1255.2665, 6.8275),
			house = 'House_01',
			nexthouse = true,
			  doors = {
				   {objName = -508201436,  objYaw = 13.301208496094, objCoords = vector3(-1493.1043701172,-1255.1593017578,7.5277299880981) },
			  }
		  },
		  {
			authorizedJobs = {''},
			locked = true,
			boom = true,
			countboom = 1,
			countrepair = 1,
			item = true,
			itemname = 'house_key_1',
			distance = 2.0,
			textCoords = vector3(-1484.2642, -1244.0411, 6.9243),
			house = 'House_01',
			nexthouse = true,
			  doors = {
				   {objName = -508201436,  objYaw = 103.31344604492, objCoords = vector3(-1483.7761230469,-1244.7166748047,7.543833732605) },
			  }
		  },
		  {
			authorizedJobs = {''},
			locked = true,
			boom = true,
			countboom = 1,
			countrepair = 1,
			item = true,
			itemname = 'house_key_1',
			distance = 2.0,
			textCoords = vector3(-1501.5286, -1243.7710, 6.9243),
			house = 'House_01',
			nexthouse = true,
			doors = {
				   {objName = 100848840,  objYaw = 103.36232757568, objCoords = vector3(-1502.1606445312,-1242.8470458984,7.3618946075439) },
				   {objName = -2050436002,  objYaw = 103.36232757568, objCoords = vector3(-1501.6680908203,-1244.9444580078,7.3618946075439) },
			  }
		  },
		  {
			authorizedJobs = {''},
			locked = true,
			boom = true,
			countboom = 1,
			countrepair = 1,
			item = true,
			itemname = 'house_key_1',
			distance = 2.0,
			textCoords = vector3(-1500.8416, -1246.7982, 6.9243),
			house = 'House_01',
			nexthouse = true,
			doors = {
				   {objName = 100848840,  objYaw = 104.01023864746, objCoords = vector3(-1501.4488525391,-1245.8438720703,7.3618946075439) },
				   {objName = -2050436002,  objYaw = 104.01023864746, objCoords = vector3(-1500.93359375,-1247.9323730469,7.3618946075439) },
			  }
		  },
		  {
			authorizedJobs = {''},
			locked = true,
			boom = true,
			countboom = 1,
			countrepair = 1,
			item = true,
			itemname = 'house_key_1',
			distance = 2.0,
			textCoords = vector3(-1492.9253, -1250.9917, 10.7189),
			house = 'House_01',
			nexthouse = true,
			doors = {
				   {objName = -2050436002,  objYaw = 13.434288024902, objCoords = vector3(-1493.8815917969,-1251.6730957031,11.258371353149) },
				   {objName = 100848840,  objYaw = 13.434288024902, objCoords = vector3(-1491.7896728516,-1251.1734619141,11.258371353149) },
			  }
		  },
		  {
			authorizedJobs = {''},
			locked = true,
			boom = true,
			countboom = 1,
			countrepair = 1,
			item = true,
			itemname = 'house_key_1',
			distance = 2.0,
			textCoords = vector3(-1497.0175, -1248.9297, 10.7189),
			house = 'House_01',
			nexthouse = true,
			doors = {
				   {objName = -2050436002,  objYaw = 104.01023864746, objCoords = vector3(-1497.1098632812,-1250.0795898438,11.258522033691) },
				   {objName = 100848840,  objYaw = 104.01023864746, objCoords = vector3(-1497.630859375,-1247.9918212891,11.258522033691) },
			  }
		  },
		  {
			authorizedJobs = {''},
			locked = true,
			boom = true,
			countboom = 1,
			countrepair = 1,
			item = true,
			itemname = 'house_key_1',
			distance = 2.0,
			textCoords = vector3(-1495.9384, -1238.8883, 10.7189),
			house = 'House_01',
			nexthouse = true,
			doors = {
				   {objName = -2050436002,  objYaw = 13.654520988464, objCoords = vector3(-1497.0729980469,-1238.6833496094,11.081789016724) },
				   {objName = 100848840,  objYaw = 13.654520988464, objCoords = vector3(-1495.0220947266,-1238.1846923828,11.081789016724) },
			  }
		  },


	  -- [[house2]]

	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 10.0,
		textCoords = vector3(-2688.0068, -78.1477, 18.2367),
		house = 'House_02',
		nexthouse = true,
		level = 6,
		doors = {
			   {objName = -965927707,  objYaw = 314.0846862793, objCoords = vector3(-2685.5678710938,-81.225044250488,18.822299957275) },
			   {objName = -965927707,  objYaw = 134.03036499023, objCoords = vector3(-2691.1342773438,-75.367248535156,18.822299957275) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 4.0,
		textCoords = vector3(-2711.8242, -91.0295, 18.2877),
		house = 'House_02',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 133.49996948242, objCoords = vector3(-2713.8098144531,-89.53955078125,18.822299957275) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 4.0,
		textCoords = vector3(-2722.3479, -100.8807, 18.2877),
		house = 'House_02',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 133.49996948242, objCoords = vector3(-2724.2121582031,-99.414512634277,18.804599761963) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 2.0,
		textCoords = vector3(-2719.9741, -92.4300, 18.9923),
		house = 'House_02',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 43.301200866699, objCoords = vector3(-2720.7685546875,-92.694900512695,19.715269088745) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 2.0,
		textCoords = vector3(-2718.6814, -78.7529, 19.1118),
		house = 'House_02',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 133.31344604492, objCoords = vector3(-2717.9111328125,-78.98706817627,19.731372833252) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 2.0,
		textCoords = vector3(-2733.6863, -87.0361, 19.1118),
		house = 'House_02',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 133.36233520508, objCoords = vector3(-2734.7670898438,-86.560150146484,19.549434661865) },
			   {objName = -2050436002,  objYaw = 133.36233520508, objCoords = vector3(-2733.2919921875,-88.130256652832,19.549434661865) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 2.0,
		textCoords = vector3(-2731.6201, -89.2893, 19.1118),
		house = 'House_02',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 134.01022338867, objCoords = vector3(-2732.6525878906,-88.799598693848,19.549434661865) },
			   {objName = -2050436002,  objYaw = 134.01022338867, objCoords = vector3(-2731.162109375,-90.350723266602,19.549434661865) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 2.0,
		textCoords = vector3(-2722.6721, -89.0459, 22.9065),
		house = 'House_02',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 43.43433380127, objCoords = vector3(-2723.1845703125,-90.064239501953,23.445911407471) },
			   {objName = 100848840,  objYaw = 43.43433380127, objCoords = vector3(-2721.6223144531,-88.585472106934,23.445911407471) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 2.0,
		textCoords = vector3(-2727.2722, -89.2712, 22.9065),
		house = 'House_02',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 134.01022338867, objCoords = vector3(-2728.2719726562,-88.750770568848,23.446060180664) },
			   {objName = -2050436002,  objYaw = 134.01022338867, objCoords = vector3(-2726.7768554688,-90.298393249512,23.446060180664) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 2.0,
		textCoords = vector3(-2731.3574, -80.0211, 22.9065),
		house = 'House_02',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 43.654514312744, objCoords = vector3(-2730.9165039062,-78.953186035156,23.269329071045) },
			   {objName = -2050436002,  objYaw = 43.654514312744, objCoords = vector3(-2732.443359375,-80.41056060791,23.269329071045) },
		  }
	  },


	  --[[house3]]

	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 10.0,
		textCoords = vector3(-953.2161, 1142.0233, 220.7917),
		house = 'House_03',
		nexthouse = true,
		level = 6,
		doors = {
			   {objName = -965927707,  objYaw = 157.45050048828, objCoords = vector3(-957.08599853516,1143.1197509766,221.3815612793) },
			   {objName = -965927707,  objYaw = 338.42672729492, objCoords = vector3(-949.56567382812,1140.1630859375,221.3815612793) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 4.0,
		textCoords = vector3(-969.2946, 1120.2080, 220.8464),
		house = 'House_03',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 158.49996948242, objCoords = vector3(-971.64801025391,1120.6920166016,221.3815612793) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 4.0,
		textCoords = vector3(-974.7432, 1106.9418, 220.8468),
		house = 'House_03',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 158.49996948242, objCoords = vector3(-976.90234375,1107.3460693359,221.36386108398) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 2.0,
		textCoords = vector3(-975.9805, 1115.4131, 221.5282),
		house = 'House_03',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 68.301223754883, objCoords = vector3(-976.62097167969,1114.8916015625,222.27453613281) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 2.0,
		textCoords = vector3(-980.6194, 1128.4061, 221.6710),
		house = 'House_03',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 158.31344604492, objCoords = vector3(-979.82476806641,1128.5227050781,222.29064941406) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 2.0,
		textCoords = vector3(-990.7530, 1114.4838, 221.6712),
		house = 'House_03',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 158.36231994629, objCoords = vector3(-991.90112304688,1114.53515625,222.10870361328) },
			   {objName = -2050436002,  objYaw = 158.36231994629, objCoords = vector3(-989.90045166016,1113.7354736328,222.10870361328) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 2.0,
		textCoords = vector3(-987.9019, 1113.3922, 221.6712),
		house = 'House_03',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 159.01022338867, objCoords = vector3(-989.03796386719,1113.3992919922,222.10870361328) },
			   {objName = -2050436002,  objYaw = 159.01022338867, objCoords = vector3(-987.03161621094,1112.6235351562,222.10870361328) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 2.0,
		textCoords = vector3(-979.9572, 1117.4247, 225.4656),
		house = 'House_03',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 68.434326171875, objCoords = vector3(-979.13201904297,1118.2547607422,226.00521850586) },
			   {objName = -2050436002,  objYaw = 68.434326171875, objCoords = vector3(-979.92260742188,1116.2546386719,226.00521850586) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 2.0,
		textCoords = vector3(-983.9222, 1115.3315, 225.4656),
		house = 'House_03',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 159.01022338867, objCoords = vector3(-983.07952880859,1114.5242919922,226.00534057617) },
			   {objName = 100848840,  objYaw = 159.01022338867, objCoords = vector3(-985.08856201172,1115.2947998047,226.00534057617) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 2.0,
		textCoords = vector3(-991.6395, 1121.8931, 225.4658),
		house = 'House_03',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 68.654510498047, objCoords = vector3(-991.62591552734,1123.0571289062,225.82864379883) },
			   {objName = -2050436002,  objYaw = 68.654510498047, objCoords = vector3(-992.39361572266,1121.0909423828,225.82864379883) },
		  }
	  },

	  -- [[house4]]

	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 10.0,
		textCoords = vector3(-816.1331, 1691.1687, 200.1316),
		house = 'House_04',
		nexthouse = true,
		level = 6,
		doors = {
			   {objName = -965927707,  objYaw = 38.781970977783, objCoords = vector3(-813.23150634766,1693.9481201172,200.7181854248) },
			   {objName = -965927707,  objYaw = 218.9186706543, objCoords = vector3(-819.55242919922,1688.9134521484,200.7181854248) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 4.0,
		textCoords = vector3(-826.9565, 1716.0842, 200.1835),
		house = 'House_04',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 38.499965667725, objCoords = vector3(-825.37384033203,1717.7728271484,200.7181854248) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 4.0,
		textCoords = vector3(-835.8878, 1727.2172, 200.1835),
		house = 'House_04',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 38.499965667725, objCoords = vector3(-834.3046875,1728.9962158203,200.70048522949) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 2.0,
		textCoords = vector3(-827.7151, 1724.1207, 200.8763),
		house = 'House_04',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 308.30123901367, objCoords = vector3(-827.91040039062,1724.9799804688,201.6111907959) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 2.0,
		textCoords = vector3(-814.2121, 1721.6744, 201.0076),
		house = 'House_04',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 38.313426971436, objCoords = vector3(-814.50384521484,1720.9388427734,201.62727355957) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 2.0,
		textCoords = vector3(-821.1835, 1737.4022, 201.0076),
		house = 'House_04',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 38.362312316895, objCoords = vector3(-820.5791015625,1738.3908691406,201.44535827637) },
			   {objName = -2050436002,  objYaw = 38.362312316895, objCoords = vector3(-822.27197265625,1737.0582275391,201.44535827637) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 2.0,
		textCoords = vector3(-823.5427, 1735.5452, 201.0076),
		house = 'House_04',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 39.010223388672, objCoords = vector3(-822.99450683594,1736.4791259766,201.44535827637) },
			   {objName = -2050436002,  objYaw = 39.010223388672, objCoords = vector3(-824.66937255859,1735.1297607422,201.44535827637) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 2.0,
		textCoords = vector3(-824.1238, 1726.5454, 204.8022),
		house = 'House_04',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 308.43435668945, objCoords = vector3(-823.74255371094,1725.4729003906,205.34184265137) },
			   {objName = -2050436002,  objYaw = 308.43435668945, objCoords = vector3(-825.07940673828,1727.1575927734,205.34184265137) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 2.0,
		textCoords = vector3(-823.9017, 1731.1077, 204.8022),
		house = 'House_04',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 39.010223388672, objCoords = vector3(-824.99963378906,1730.7567138672,205.34196472168) },
			   {objName = 100848840,  objYaw = 39.010223388672, objCoords = vector3(-823.32757568359,1732.1112060547,205.34196472168) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 2.0,
		textCoords = vector3(-814.2922, 1734.3616, 204.8025),
		house = 'House_04',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 308.65454101562, objCoords = vector3(-813.33679199219,1733.8917236328,205.16520690918) },
			   {objName = -2050436002,  objYaw = 308.65454101562, objCoords = vector3(-814.65557861328,1735.5394287109,205.16520690918) },
		  }
	  },

	  -- [[house5]]

	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 10.0,
		textCoords = vector3(1051.0623, 1521.4791, 177.2923),
		house = 'House_05',
		nexthouse = true,
		level = 6,
		doors = {
			   {objName = -965927707,  objYaw = 123.6390838623, objCoords = vector3(1049.1564941406,1525.0524902344,177.88124084473) },
			   {objName = -965927707,  objYaw = 304.0221862793, objCoords = vector3(1053.6206054688,1518.3165283203,177.88124084473) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 4.0,
		textCoords = vector3(1076.8309, 1530.1024, 177.3465),
		house = 'House_05',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 303.5, objCoords = vector3(1078.4133300781,1528.3361816406,177.88124084473) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 4.0,
		textCoords = vector3(1088.8164, 1538.0348, 177.3465),
		house = 'House_05',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 303.5, objCoords = vector3(1090.3720703125,1536.2550048828,177.86354064941) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 2.0,
		textCoords = vector3(1084.9750, 1530.1134, 178.0477),
		house = 'House_05',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 213.30123901367, objCoords = vector3(1085.8142089844,1530.2348632812,178.77421569824) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 2.0,
		textCoords = vector3(1081.3191, 1516.8276, 178.1706),
		house = 'House_05',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 303.31344604492, objCoords = vector3(1080.6201171875,1517.2318115234,178.7903137207) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 2.0,
		textCoords = vector3(1097.5607, 1522.4290, 178.1709),
		house = 'House_05',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 303.36233520508, objCoords = vector3(1098.5345458984,1521.7629394531,178.60838317871) },
			   {objName = -2050436002,  objYaw = 303.36233520508, objCoords = vector3(1097.3547363281,1523.5654296875,178.60838317871) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 2.0,
		textCoords = vector3(1095.8469, 1524.9846, 178.1709),
		house = 'House_05',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 304.01025390625, objCoords = vector3(1096.8408203125,1524.3356933594,178.60838317871) },
			   {objName = -2050436002,  objYaw = 304.01025390625, objCoords = vector3(1095.642578125,1526.1215820312,178.60838317871) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 2.0,
		textCoords = vector3(1087.0800, 1526.2587, 181.9653),
		house = 'House_05',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 213.43435668945, objCoords = vector3(1087.7366943359,1527.2252197266,182.50483703613) },
			   {objName = 100848840,  objYaw = 213.43435668945, objCoords = vector3(1085.9415283203,1526.0396728516,182.50483703613) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 2.0,
		textCoords = vector3(1091.5305, 1525.6821, 181.9653),
		house = 'House_05',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 304.01025390625, objCoords = vector3(1092.5186767578,1525.0480957031,182.50498962402) },
			   {objName = -2050436002,  objYaw = 304.01025390625, objCoords = vector3(1091.3154296875,1526.8321533203,182.50498962402) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 2.0,
		textCoords = vector3(1094.1223, 1515.8591, 181.9655),
		house = 'House_05',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 213.65452575684, objCoords = vector3(1093.4212646484,1514.9399414062,182.3282623291) },
			   {objName = -2050436002,  objYaw = 213.65452575684, objCoords = vector3(1095.1779785156,1516.1101074219,182.3282623291) },
		  }
	  },

	  --[[house6]]

	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 10.0,
		textCoords = vector3(610.5816, 758.1021, 205.3484),
		house = 'House_06',
		nexthouse = true,
		level = 6,
		doors = {
			   {objName = -965927707,  objYaw = 343.63909912109, objCoords = vector3(614.24005126953,756.58599853516,205.94055175781) },
			   {objName = -965927707,  objYaw = 163.7507019043, objCoords = vector3(606.49053955078,758.8759765625,205.94055175781) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 4.0,
		textCoords = vector3(596.3548, 734.8932, 205.4058),
		house = 'House_06',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 163.49996948242, objCoords = vector3(593.93890380859,735.26452636719,205.94055175781) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 4.0,
		textCoords = vector3(592.1875, 721.1620, 205.4061),
		house = 'House_06',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 163.49996948242, objCoords = vector3(589.86767578125,721.51123046875,205.9228515625) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 2.0,
		textCoords = vector3(590.0084, 729.7214, 206.1319),
		house = 'House_06',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 73.301200866699, objCoords = vector3(589.49017333984,729.05267333984,206.83351135254) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 2.0,
		textCoords = vector3(584.2987, 742.2547, 206.2300),
		house = 'House_06',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 163.31344604492, objCoords = vector3(585.11083984375,742.35241699219,206.84962463379) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 2.0,
		textCoords = vector3(575.4294, 727.5219, 206.2300),
		house = 'House_06',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 163.36231994629, objCoords = vector3(574.29937744141,727.36578369141,206.66767883301) },
			   {objName = -2050436002,  objYaw = 163.36231994629, objCoords = vector3(576.36199951172,726.74371337891,206.66767883301) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 2.0,
		textCoords = vector3(578.4041, 726.5706, 206.2300),
		house = 'House_06',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 164.01022338867, objCoords = vector3(577.25061035156,726.48376464844,206.66767883301) },
			   {objName = -2050436002,  objYaw = 164.01022338867, objCoords = vector3(579.31689453125,725.88586425781,206.66767883301) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 2.0,
		textCoords = vector3(586.0052, 731.2581, 210.0247),
		house = 'House_06',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 73.434326171875, objCoords = vector3(586.69567871094,732.18408203125,210.56416320801) },
			   {objName = -2050436002,  objYaw = 73.434326171875, objCoords = vector3(586.08251953125,730.12261962891,210.56416320801) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 2.0,
		textCoords = vector3(582.1597, 728.7625, 210.0247),
		house = 'House_06',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 164.01022338867, objCoords = vector3(583.08819580078,728.12359619141,210.5643157959) },
			   {objName = 100848840,  objYaw = 164.01022338867, objCoords = vector3(581.01971435547,728.71636962891,210.5643157959) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 2.0,
		textCoords = vector3(573.8932, 734.7603, 210.0249),
		house = 'House_06',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 73.654518127441, objCoords = vector3(573.83093261719,735.87915039062,210.38758850098) },
			   {objName = -2050436002,  objYaw = 73.654518127441, objCoords = vector3(573.23718261719,733.85369873047,210.38758850098) },
		  }
	  },

	  -- [[house7]]

	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 10.0,
		textCoords = vector3(1480.5548, 1603.4246, 115.5490),
		house = 'House_07',
		nexthouse = true,
		level = 6,
		doors = {
			   {objName = -965927707,  objYaw = 83.499992370605, objCoords = vector3(1480.6898193359,1607.5288085938,116.13223266602) },
			   {objName = -965927707,  objYaw = 263.63909912109, objCoords = vector3(1479.7801513672,1599.4993896484,116.13223266602) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 4.0,
		textCoords = vector3(1455.3279, 1613.3413, 115.5976),
		house = 'House_07',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 83.499992370605, objCoords = vector3(1455.2572021484,1615.7896728516,116.13223266602) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 4.0,
		textCoords = vector3(1441.1464, 1614.9808, 115.5976),
		house = 'House_07',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 83.499992370605, objCoords = vector3(1441.0059814453,1617.4107666016,116.1145324707) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 2.0,
		textCoords = vector3(1449.1279, 1618.6626, 116.3085),
		house = 'House_07',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 353.30126953125, objCoords = vector3(1448.3673095703,1619.0920410156,117.02519989014) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 2.0,
		textCoords = vector3(1460.4369, 1626.4857, 116.4217),
		house = 'House_07',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 83.313430786133, objCoords = vector3(1460.7045898438,1625.7144775391,117.04130554199) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 2.0,
		textCoords = vector3(1444.3987, 1632.6248, 116.4217),
		house = 'House_07',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 83.362327575684, objCoords = vector3(1444.0682373047,1633.7591552734,116.85936737061) },
			   {objName = -2050436002,  objYaw = 83.362327575684, objCoords = vector3(1443.8137207031,1631.6198730469,116.85936737061) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 2.0,
		textCoords = vector3(1444.0477, 1629.5652, 116.4217),
		house = 'House_07',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 84.010238647461, objCoords = vector3(1443.7120361328,1630.6995849609,116.85936737061) },
			   {objName = -2050436002,  objYaw = 84.010238647461, objCoords = vector3(1443.4819335938,1628.5609130859,116.85936737061) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 2.0,
		textCoords = vector3(1449.9558, 1622.9204, 120.2164),
		house = 'House_07',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 353.43432617188, objCoords = vector3(1448.8292236328,1622.6337890625,120.75585174561) },
			   {objName = 100848840,  objYaw = 353.43432617188, objCoords = vector3(1450.9659423828,1622.3878173828,120.75585174561) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 2.0,
		textCoords = vector3(1446.9077, 1626.2407, 120.2164),
		house = 'House_07',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 84.010238647461, objCoords = vector3(1446.3404541016,1625.2353515625,120.75598907471) },
			   {objName = 100848840,  objYaw = 84.010238647461, objCoords = vector3(1446.5651855469,1627.3753662109,120.75598907471) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 2.0,
		textCoords = vector3(1451.2721, 1635.4219, 120.2164),
		house = 'House_07',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 353.65463256836, objCoords = vector3(1452.3709716797,1635.6988525391,120.57926177979) },
			   {objName = -2050436002,  objYaw = 353.65463256836, objCoords = vector3(1450.2730712891,1635.931640625,120.57926177979) },
		  }
	  },

	  -- [[house8]]

	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 10.0,
		textCoords = vector3(2201.1577, 1581.9174, 83.0331),
		house = 'House_08',
		nexthouse = true,
		level = 6,
		doors = {
			   {objName = -965927707,  objYaw = 268.5, objCoords = vector3(2201.3830566406,1577.8874511719,83.616073608398) },
			   {objName = -965927707,  objYaw = 88.639068603516, objCoords = vector3(2201.5888671875,1585.9647216797,83.616073608398) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 4.0,
		textCoords = vector3(2227.1458, 1574.3325, 83.0815),
		house = 'House_08',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 268.5, objCoords = vector3(2227.4384765625,1571.875,83.616073608398) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 4.0,
		textCoords = vector3(2241.5283, 1573.9700, 83.0814),
		house = 'House_08',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 268.5, objCoords = vector3(2241.7766113281,1571.5015869141,83.598373413086) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 2.0,
		textCoords = vector3(2233.8574, 1569.6107, 83.7632),
		house = 'House_08',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 178.30122375488, objCoords = vector3(2234.5895996094,1569.1853027344,84.509017944336) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 2.0,
		textCoords = vector3(2223.4561, 1560.8374, 83.9055),
		house = 'House_08',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 268.3134765625, objCoords = vector3(2222.8767089844,1561.5131835938,84.525131225586) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 2.0,
		textCoords = vector3(2239.7234, 1556.0502, 83.9055),
		house = 'House_08',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 268.36233520508, objCoords = vector3(2240.1511230469,1554.9489746094,84.343185424805) },
			   {objName = -2050436002,  objYaw = 268.36233520508, objCoords = vector3(2240.2185058594,1557.1019287109,84.343185424805) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 2.0,
		textCoords = vector3(2239.8276, 1559.1199, 83.9055),
		house = 'House_08',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 269.01025390625, objCoords = vector3(2240.2395019531,1558.0278320312,84.343185424805) },
			   {objName = -2050436002,  objYaw = 269.01025390625, objCoords = vector3(2240.2817382812,1560.1783447266,84.343185424805) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 2.0,
		textCoords = vector3(2233.3735, 1565.1893, 87.7001),
		house = 'House_08',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 178.43434143066, objCoords = vector3(2232.2883300781,1565.6755371094,88.239654541016) },
			   {objName = -2050436002,  objYaw = 178.43434143066, objCoords = vector3(2234.4382324219,1565.6166992188,88.239654541016) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 2.0,
		textCoords = vector3(2236.6880, 1562.1761, 87.7002),
		house = 'House_08',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 269.01025390625, objCoords = vector3(2237.1437988281,1563.2420654297,88.239776611328) },
			   {objName = 100848840,  objYaw = 269.01025390625, objCoords = vector3(2237.1071777344,1561.0908203125,88.239776611328) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 2.0,
		textCoords = vector3(2233.1240, 1552.6735, 87.7003),
		house = 'House_08',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 178.65451049805, objCoords = vector3(2232.0490722656,1552.2928466797,88.063079833984) },
			   {objName = -2050436002,  objYaw = 178.65451049805, objCoords = vector3(2234.1594238281,1552.2432861328,88.063079833984) },
		  }
	  },

	  -- [[house9]]

	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 10.0,
		textCoords = vector3(2694.2549, 432.1631, 97.6533),
		house = 'House_09',
		nexthouse = true,
		level = 6,
		doors = {
			   {objName = -965927707,  objYaw = 263.5, objCoords = vector3(2694.1198730469,428.05557250977,98.236381530762) },
			   {objName = -965927707,  objYaw = 83.639091491699, objCoords = vector3(2695.0290527344,436.08410644531,98.236381530762) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 4.0,
		textCoords = vector3(2719.4434, 422.2276, 97.7019),
		house = 'House_09',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 263.5, objCoords = vector3(2719.5520019531,419.79513549805,98.236381530762) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 4.0,
		textCoords = vector3(2733.7654, 420.6204, 97.7017),
		house = 'House_09',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 263.5, objCoords = vector3(2733.8032226562,418.17318725586,98.218681335449) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 2.0,
		textCoords = vector3(2725.7361, 416.9800, 98.3831),
		house = 'House_09',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 173.30123901367, objCoords = vector3(2726.4421386719,416.49185180664,99.129348754883) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 2.0,
		textCoords = vector3(2714.3303, 409.1132, 98.5259),
		house = 'House_09',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 263.3134765625, objCoords = vector3(2714.1052246094,409.86959838867,99.145454406738) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 2.0,
		textCoords = vector3(2730.4487, 402.9123, 98.5259),
		house = 'House_09',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 263.36236572266, objCoords = vector3(2730.7407226562,401.82470703125,98.963516235352) },
			   {objName = -2050436002,  objYaw = 263.36236572266, objCoords = vector3(2730.9956054688,403.96450805664,98.963516235352) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 2.0,
		textCoords = vector3(2730.8079, 406.0062, 98.5259),
		house = 'House_09',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 264.01022338867, objCoords = vector3(2731.0969238281,404.88400268555,98.963516235352) },
			   {objName = -2050436002,  objYaw = 264.01022338867, objCoords = vector3(2731.3271484375,407.02294921875,98.963516235352) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 2.0,
		textCoords = vector3(2724.8599, 412.6135, 102.3205),
		house = 'House_09',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 173.43434143066, objCoords = vector3(2723.8427734375,413.19607543945,102.86000061035) },
			   {objName = -2050436002,  objYaw = 173.43434143066, objCoords = vector3(2725.9797363281,412.9499206543,102.86000061035) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 2.0,
		textCoords = vector3(2727.8860, 409.2912, 102.3205),
		house = 'House_09',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 264.01022338867, objCoords = vector3(2728.4682617188,410.34878540039,102.86013793945) },
			   {objName = 100848840,  objYaw = 264.01022338867, objCoords = vector3(2728.2443847656,408.20861816406,102.86013793945) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 2.0,
		textCoords = vector3(2723.4983, 400.2387, 102.3205),
		house = 'House_09',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 173.65451049805, objCoords = vector3(2724.5363769531,399.65225219727,102.68341064453) },
			   {objName = 100848840,  objYaw = 173.65451049805, objCoords = vector3(2722.4384765625,399.88534545898,102.68341064453) },
		  }
	  },

	  -- [[house10]]

	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 10.0,
		textCoords = vector3(1504.6459, -1579.0422, 77.7097),
		house = 'House_10',
		nexthouse = true,
		level = 6,
		doors = {
			   {objName = -965927707,  objYaw = 93.5, objCoords = vector3(1504.0495605469,-1575.0043945312,78.293350219727) },
			   {objName = -965927707,  objYaw = 273.63906860352, objCoords = vector3(1504.5480957031,-1583.0698242188,78.293350219727) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 4.0,
		textCoords = vector3(1478.0359, -1573.7560, 77.7587),
		house = 'House_10',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 93.5, objCoords = vector3(1477.5689697266,-1571.2854003906,78.293350219727) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 4.0,
		textCoords = vector3(1463.8175, -1574.5977, 77.7587),
		house = 'House_10',
		nexthouse = true,
		  doors = {
			   {objName = -759737396,  objYaw = 93.5, objCoords = vector3(1463.2526855469,-1572.1635742188,78.275650024414) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 2.0,
		textCoords = vector3(1471.0332, -1569.5454, 78.4719),
		house = 'House_10',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 3.3013479709625, objCoords = vector3(1470.2102050781,-1569.2296142578,79.186317443848) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 2.0,
		textCoords = vector3(1480.8627, -1559.8359, 78.5828),
		house = 'House_10',
		nexthouse = true,
		  doors = {
			   {objName = -508201436,  objYaw = 93.313415527344, objCoords = vector3(1481.2100830078,-1560.5654296875,79.202423095703) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 2.0,
		textCoords = vector3(1463.8448, -1556.5967, 78.5829),
		house = 'House_10',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 93.362312316895, objCoords = vector3(1463.4295654297,-1555.5317382812,79.020484924316) },
			   {objName = -2050436002,  objYaw = 93.362312316895, objCoords = vector3(1463.5504150391,-1557.6828613281,79.020484924316) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 2.0,
		textCoords = vector3(1464.0613, -1559.6552, 78.5829),
		house = 'House_10',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 94.010238647461, objCoords = vector3(1463.6101074219,-1558.6066894531,79.020484924316) },
			   {objName = -2050436002,  objYaw = 94.010238647461, objCoords = vector3(1463.7548828125,-1560.7528076172,79.020484924316) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 2.0,
		textCoords = vector3(1471.0957, -1565.1860, 82.3775),
		house = 'House_10',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 3.4342908859253, objCoords = vector3(1472.1971435547,-1565.5325927734,82.916969299316) },
			   {objName = -2050436002,  objYaw = 3.4342908859253, objCoords = vector3(1470.0501708984,-1565.6613769531,82.916969299316) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 2.0,
		textCoords = vector3(1467.5342, -1562.4265, 82.3775),
		house = 'House_10',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 94.010238647461, objCoords = vector3(1467.1474609375,-1563.5314941406,82.917106628418) },
			   {objName = 100848840,  objYaw = 94.010238647461, objCoords = vector3(1466.9970703125,-1561.3850097656,82.917106628418) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 2.0,
		textCoords = vector3(1470.2434, -1552.6655, 82.3775),
		house = 'House_10',
		nexthouse = true,
		doors = {
			   {objName = -2050436002,  objYaw = 3.6544964313507, objCoords = vector3(1469.1629638672,-1552.3148193359,82.740379333496) },
			   {objName = 100848840,  objYaw = 3.6544964313507, objCoords = vector3(1471.2692871094,-1552.1798095703,82.740379333496) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_1',
		distance = 2.0,
		textCoords = vector3(-1491.3, -1233.55, 10.72),
		house = 'House_01',
		nexthouse = true,
		doors = {
			{objName = -2050436002,  objYaw = 105.35691833496, objCoords = vector3(-1491.4191894531,-1234.7325439453,11.258522033691) },
			{objName = 100848840,  objYaw = 102.78375244141, objCoords = vector3(-1491.9381103516,-1232.6505126953,11.258522033691) },
			
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_2',
		distance = 2.0,
		textCoords = vector3(-2729.98, -73.08, 22.9),
		house = 'House_02',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 133.03224182129, objCoords = vector3(-2730.9792480469,-72.658569335938,23.446060180664) },
			   {objName = -2050436002,  objYaw = 135.12977600098, objCoords = vector3(-2729.4833984375,-74.209564208984,23.446060180664) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_3',
		distance = 2.0,
		textCoords = vector3(-993.28, 1128.77, 225.47),
		house = 'House_03',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 157.87893676758, objCoords = vector3(-994.3505859375,1128.7164306641,226.00534057617) },
			   {objName = -2050436002,  objYaw = 159.96876525879, objCoords = vector3(-992.37145996094,1127.9569091797,226.00534057617) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_4',
		distance = 2.0,
		textCoords = vector3(-807.65, 1732.51, 204.8),
		house = 'House_04',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 37.847454071045, objCoords = vector3(-807.06353759766,1733.4213867188,205.34196472168) },
			   {objName = -2050436002,  objYaw = 40.793300628662, objCoords = vector3(-808.736328125,1732.0637207031,205.34196472168) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_5',
		distance = 2.0,
		textCoords = vector3(1091.65, 1509.48, 182.03),
		house = 'House_05',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 302.97302246094, objCoords = vector3(1092.4162597656,1508.7510986328,182.50498962402) },
			   {objName = -2050436002,  objYaw = 305.97073364258, objCoords = vector3(1091.2232666016,1510.5260009766,182.50498962402) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_6',
		distance = 2.0,
		textCoords = vector3(571.63, 741.28, 210.02),
		house = 'House_06',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 162.3996887207, objCoords = vector3(570.59680175781,741.33587646484,210.5643157959) },
			   {objName = -2050436002,  objYaw = 166.02453613281, objCoords = vector3(572.65057373047,740.74353027344,210.5643157959) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_7',
		distance = 2.0,
		textCoords = vector3(1457.21, 1638.74, 120.24),
		house = 'House_07',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 83.197914123535, objCoords = vector3(1457.158203125,1639.7849121094,120.75598907471) },
			   {objName = -2050436002,  objYaw = 85.667022705078, objCoords = vector3(1456.9353027344,1637.6726074219,120.75598907471) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_8',
		distance = 2.0, 
		textCoords = vector3(2227.57, 1548.86, 87.88),
		house = 'House_08',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 267.91128540039, objCoords = vector3(2227.6821289062,1547.7651367188,88.239776611328) },
			   {objName = -2050436002,  objYaw = 270.42639160156, objCoords = vector3(2227.7185058594,1549.9095458984,88.239776611328) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_9',
		distance = 2.0, 
		textCoords = vector3(2717.3, 396.82, 102.32),
		house = 'House_09',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 263.01727294922, objCoords = vector3(2717.6518554688,395.7180480957,102.86013793945) },
			   {objName = -2050436002,  objYaw = 265.28216552734, objCoords = vector3(2717.8759765625,397.86117553711,102.86013793945) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 1,
		countrepair = 1,
		item = true,
		itemname = 'house_key_10',
		distance = 2.0,
		textCoords = vector3(1475.52, -1548.33, 82.45),
		house = 'House_10',
		nexthouse = true,
		doors = {
			   {objName = 100848840,  objYaw = 92.450469970703, objCoords = vector3(1475.291015625,-1547.2894287109,82.917106628418) },
			   {objName = -2050436002,  objYaw = 96.03776550293, objCoords = vector3(1475.4420166016,-1549.4322509766,82.917106628418) },
		  }
	  },
	  --[[ MCHOUSE ]]
	  {	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_01',
		distance = 2.0,
		house = 'Mc_House_01',
		textCoords = vector3(-720.5250, -410.7189, 34.9813),
		doors = {
			{objName = 2089009131, objYaw = 270.2887878418, objCoords = vector3(-720.261475, -412.129395, 35.184624)},
			{objName = 2089009131, objYaw = 90.415473937988, objCoords = vector3(-720.267151, -409.547638, 35.184624)}
		},
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_01',
		distance = 2.0,
		house = 'Mc_House_01',
		textCoords = vector3(-703.2480, -415.7547, 35.0909),
		doors = {
			{objName = 2089009131, objYaw = 0.54019153118134, objCoords = vector3(-702.550842, -415.298340, 35.241264)},
		},
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_01',
		distance = 2.0,
		house = 'Mc_House_01',
		textCoords = vector3(-700.2997, -419.7103, 35.0909),
		doors = {
			{objName = -1724820156, objYaw = 270.44802856445, objCoords = vector3(-700.435486, -420.495972, 35.243362)},
		},
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_01',
		distance = 2.0,
		house = 'Mc_House_01',
		textCoords = vector3(-706.911682, -429.811829, 42.271931),
		doors = {
			{objName = -1724820156, objYaw = 269.59533691406, objCoords = vector3(-706.911682, -429.811829, 42.271931)},
		},
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_01',
		distance = 4.0,
		house = 'Mc_House_01',
		textCoords = vector3(-738.6325, -418.2733, 35.6188),
		doors = {
			{objName = 1922982504, objYaw = 91.513885498047, objCoords = vector3(-738.857666, -421.706848, 34.522694)},
		},
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_01',
		distance = 2.0,
		house = 'Mc_House_01',
		textCoords = vector3(-720.010742, -425.635071, 35.923538),
		doors = {
			{objName = -1313232656, objYaw = 270.00079345703, objCoords = vector3(-720.010742, -425.635071, 35.923538)},
		},
	},

	{
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_01',
		distance = 2.0,
		textCoords = vector3(-691.3335, -431.6577, 35.2719),
		house = 'Mc_House_01',
		  doors = {
			   {objName = -1724820156,  objYaw = 0.31000325083733, objCoords = vector3(-690.72955322266,-431.14974975586,35.442451477051) },
		  }
	  },

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_02',
		distance = 4.0,
		house = 'Mc_House_02',
		textCoords = vector3(-1169.2748, -1186.9509, 5.6233),
		doors = {
			{objName = 1586160380, objYaw = 190.41242980957, objCoords = vector3(-1166.223022, -1186.110107, 4.655154)},
		},
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_02',
		distance = 2.0,
		house = 'Mc_House_02',
		textCoords = vector3(-1175.177979, -1192.976318, 6.073421),
		doors = {
			{objName = 870873065, objYaw = 189.67259216309, objCoords = vector3(-1175.177979, -1192.976318, 6.073421)},
		},
	},
	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_02',
		distance = 2.0,
		house = 'Mc_House_02',
		textCoords = vector3(-1173.643311, -1173.125122, 6.57304),
		doors = {
			{objName = -272364684, objYaw = 15.006505012512, objCoords = vector3(-1173.643311, -1173.125122, 6.57304)},
		},
	},

	{	
		authorizedJobs = {''},
		locked = true,
		boom = false, -- ตั้งค่าว่ามี
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_02',
		distance = 2.0,
		house = 'Mc_House_02',
		textCoords = vector3(-1178.757446, -1182.726074, 5.897286),
		doors = {
			{objName = -1355256628, objYaw = 279.99996948242, objCoords = vector3(-1178.757446, -1182.726074, 5.897286)},
			{objName = -1355256628, objYaw = 99.999977111816, objCoords = vector3(-1178.306763, -1185.281372, 5.897286)},
		},
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_03',
		distance = 2.0,
		textCoords = vector3(-1515.0297, -202.8638, 53.3576),
		house = 'mc_house_03',
		  doors = {
			   {objName = 1286535678,  objYaw = 305.13647460938, objCoords = vector3(-1512.7612304688,-204.91610717773,51.902534484863) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_03',
		distance = 2.0,
		textCoords = vector3(-1490.9474, -185.6272, 50.3929),
		house = 'mc_house_03',
		  doors = {
			   {objName = 91564889,  objYaw = 310.0, objCoords = vector3(-1491.6540527344,-184.7587890625,50.665512084961) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_03',
		distance = 2.0,
		textCoords = vector3(-1500.5591, -202.1854, 50.8921),
		house = 'mc_house_03',
		  doors = {
			   {objName = 738500688,  objYaw = 129.73504638672, objCoords = vector3(-1500.9848632812,-201.58108520508,51.018928527832) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_03',
		distance = 2.0,
		textCoords = vector3(-1487.6685, -207.8592, 50.8740),
		house = 'mc_house_03',
		  doors = {
			   {objName = 738500688,  objYaw = 39.649341583252, objCoords = vector3(-1487.1146240234,-207.21571350098,51.044673919678) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_03',
		distance = 2.0,
		textCoords = vector3(-1486.1968, -214.1180, 54.5867),
		house = 'mc_house_03',
		  doors = {
			   {objName = -543490328,  objYaw = 39.967308044434, objCoords = vector3(-1485.6069335938,-213.67390441895,54.735496520996) },
		  }
	  },
	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_03',
		distance = 2.0,
		textCoords = vector3(-1476.7229, -206.0941, 54.5867),
		house = 'mc_house_03',
		  doors = {
			   {objName = -543490328,  objYaw = 39.967308044434, objCoords = vector3(-1476.0794677734,-205.6887512207,54.735496520996) },
		  }
	  },

	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_04',
		distance = 2.0,
		textCoords = vector3(967.6508, -1809.7456, 31.3316),
		house = 'mc_house_04',
		  doors = {
			   {objName = 1930419568,  objYaw = 355.0, objCoords = vector3(967.654785, -1809.751099, 32.38796) },
		  }
	  },

	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_04',
		distance = 2.0,
		textCoords = vector3(976.43572998047,-1831.9688720703,32.33358001709),
		house = 'mc_house_04',
		  doors = {
			   {objName = -190780785,  objYaw = 174.44514465332, objCoords = vector3(976.43572998047,-1831.9688720703,32.33358001709) },
		  }
	  },

	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_04',
		distance = 2.0,
		textCoords = vector3(967.6816, -1829.3104, 31.2371),
		house = 'mc_house_04',
		  doors = {
			   {objName = -267021114,  objYaw = 354.44750976562, objCoords = vector3(968.40460205078,-1829.7419433594,31.432802200317) },
		  }
	  },

	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_04',
		distance = 2.0,
		textCoords = vector3(975.1314, -1791.7947, 31.5271),
		house = 'mc_house_04',
		  doors = {
			   {objName = -626684119,  objYaw = 354.72882080078, objCoords = vector3(974.46655273438,-1791.6711425781,31.673763275146) },
		  }
	  },

	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_04',
		distance = 2.0,
		textCoords = vector3(983.2241, -1786.0990, 27.5270),
		house = 'mc_house_04',
		  doors = {
			   {objName = -626684119,  objYaw = 265.23016357422, objCoords = vector3(983.39337158203,-1785.5013427734,27.669918060303) },
		  }
	  },

	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'club_key_staff',
		distance = 2.0,
		textCoords = vector3(-31.2347, 235.4853, 98.1517),
		doors = {
			   {objName = 1145264938,  objYaw = 81.198379516602, objCoords = vector3(-31.799182891846,234.29273986816,98.316734313965) },
			   {objName = 1145264938,  objYaw = 260.89053344727, objCoords = vector3(-31.393779754639,236.85235595703,98.316734313965) },
		  }
	  },

	  {
		authorizedJobs = {''},
		locked = true,
		boom = true,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'mc_house_key_04',
		distance = 2.0,
		textCoords = vector3(978.4262, -1785.5560, 27.5270),
		house = 'mc_house_04',
		doors = {
			   {objName = 964838196,  objYaw = 265.24926757812, objCoords = vector3(978.15881347656,-1786.7526855469,27.679458618164) },
			   {objName = 964838196,  objYaw = 85.45922088623, objCoords = vector3(978.38555908203,-1784.1613769531,27.679458618164) },
		  }
	  },
	  --[[ New Apartment ]]
	  {
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_101',
		distance = 2.0,
		textCoords = vector3(-936.652893, -1311.708008, 6.39786),
		label = '101',
		house = 'family_apartment_01',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-936.652893, -1311.708008, 6.39786)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_101',
		distance = 2.0,
		textCoords = vector3(-934.241943, -1325.651001, 6.738856),
		house = 'family_apartment_01',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-934.241943, -1325.651001, 6.738856)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_102',
		distance = 2.0,
		textCoords = vector3(-925.356506, -1307.596436, 6.397868),
		label = '102',
		house = 'family_apartment_02',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-925.356506, -1307.596436, 6.397868)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_102',
		distance = 2.0,
		textCoords = vector3(-922.945557, -1321.539429, 6.738856),
		house = 'family_apartment_02',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-922.945557, -1321.539429, 6.738856)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_103',
		distance = 2.0,
		textCoords = vector3(-902.818604, -1299.393311, 6.397868),
		label = '103',
		house = 'family_apartment_03',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-902.818604, -1299.393311, 6.397868)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_103',
		distance = 2.0,
		textCoords = vector3(-900.407654, -1313.336304, 6.738856),
		house = 'family_apartment_03',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-900.407654, -1313.336304, 6.738856)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_104',
		distance = 2.0,
		textCoords = vector3(-891.555481, -1295.293823, 6.397868),
		label = '104',
		house = 'family_apartment_04',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-891.555481, -1295.293823, 6.397868)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_104',
		distance = 2.0,
		textCoords = vector3(-889.144531, -1309.236816, 6.738856),
		house = 'family_apartment_04',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-889.144531, -1309.236816, 6.738856)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_105',
		distance = 2.0,
		textCoords = vector3(-868.991455, -1287.081177, 6.397868),
		label = '105',
		house = 'family_apartment_05',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-868.991455, -1287.081177, 6.397868)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_105',
		distance = 2.0,
		textCoords = vector3(-866.580505, -1301.024170, 6.738856),
		house = 'family_apartment_05',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-866.580505, -1301.024170, 6.738856)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_106',
		distance = 2.0,
		textCoords = vector3(-857.714844, -1282.976929, 6.397868),
		label = '106',
		house = 'family_apartment_06',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-857.714844, -1282.976929, 6.397868)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_106',
		distance = 2.0,
		textCoords = vector3(-855.303894, -1296.919922, 6.738856),
		house = 'family_apartment_06',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-855.303894, -1296.919922, 6.738856)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_107',
		distance = 2.0,
		textCoords = vector3(-936.607300, -1311.699219, 9.906728),
		label = '107',
		house = 'family_apartment_07',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-936.607300, -1311.699219, 9.906728)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_107',
		distance = 2.0,
		textCoords = vector3(-934.724365, -1324.318237, 10.247243),
		house = 'family_apartment_07',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-934.724365, -1324.318237, 10.247243)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_108',
		distance = 2.0,
		textCoords = vector3(-925.319519, -1307.590698, 9.906728),
		label = '108',
		house = 'family_apartment_08',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-925.319519, -1307.590698, 9.906728)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_108',
		distance = 2.0,
		textCoords = vector3(-923.436584, -1320.209717, 10.247243),
		house = 'family_apartment_08',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-923.436584, -1320.209717, 10.247243)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_109',
		distance = 2.0,
		textCoords = vector3(-914.041138, -1303.485718, 9.906728),
		label = '109',
		house = 'family_apartment_09',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-914.041138, -1303.485718, 9.906728)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_109',
		distance = 2.0,
		textCoords = vector3(-912.158203, -1316.104736, 10.247243),
		house = 'family_apartment_09',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-912.158203, -1316.104736, 10.247243)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_110',
		distance = 2.0,
		textCoords = vector3(-902.778870, -1299.386475, 9.906728),
		label = '110',
		house = 'family_apartment_10',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-902.778870, -1299.386475, 9.906728)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_110',
		distance = 2.0,
		textCoords = vector3(-900.895935, -1312.005493, 10.247243),
		house = 'family_apartment_10',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-900.895935, -1312.005493, 10.247243)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_111',
		distance = 2.0,
		textCoords = vector3(-891.501587, -1295.281860, 9.906728),
		label = '111',
		house = 'family_apartment_11',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-891.501587, -1295.281860, 9.906728)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_111',
		distance = 2.0,
		textCoords = vector3(-889.618652, -1307.900879, 10.247243),
		house = 'family_apartment_11',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-889.618652, -1307.900879, 10.247243)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_112',
		distance = 2.0,
		textCoords = vector3(-880.225830, -1291.171997, 9.905464),
		label = '112',
		house = 'family_apartment_12',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-880.225830, -1291.171997, 9.905464)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_112',
		distance = 2.0,
		textCoords = vector3(-878.342896, -1303.791016, 10.245979),
		house = 'family_apartment_12',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-878.342896, -1303.791016, 10.245979)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_113',
		distance = 2.0,
		textCoords = vector3(-868.936890, -1287.072998, 9.906728),
		label = '113',
		house = 'family_apartment_13',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-868.936890, -1287.072998, 9.906728)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_113',
		distance = 2.0,
		textCoords = vector3(-867.053955, -1299.692017, 10.247243),
		house = 'family_apartment_13',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-867.053955, -1299.692017, 10.247243)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_114',
		distance = 2.0,
		textCoords = vector3(-857.665039, -1282.966431, 9.906728),
		label = '114',
		house = 'family_apartment_14',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-857.665039, -1282.966431, 9.906728)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_114',
		distance = 2.0,
		textCoords = vector3(-855.782104, -1295.585449, 10.247243),
		house = 'family_apartment_14',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-855.782104, -1295.585449, 10.247243)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_115',
		distance = 2.0,
		textCoords = vector3(-936.621643, -1311.730225, 13.398193),
		label = '115',
		house = 'family_apartment_15',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-936.621643, -1311.730225, 13.398193)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_115',
		distance = 2.0,
		textCoords = vector3(-935.592896, -1321.930176, 13.744049),
		house = 'family_apartment_15',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-935.592896, -1321.930176, 13.744049)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_116',
		distance = 2.0,
		textCoords = vector3(-925.347412, -1307.626709, 13.398193),
		label = '116',
		house = 'family_apartment_16',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-925.347412, -1307.626709, 13.398193)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_116',
		distance = 2.0,
		textCoords = vector3(-924.318665, -1317.826660, 13.744049),
		house = 'family_apartment_16',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-924.318665, -1317.826660, 13.744049)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_117',
		distance = 2.0,
		textCoords = vector3(-914.070679, -1303.522339, 13.398193),
		label = '117',
		house = 'family_apartment_17',
		doors = {
		   {objName = 262671971, objYaw = 19.999998092651, objCoords = vector3(-914.070679, -1303.522339, 13.398193)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_117',
		distance = 2.0,
		textCoords = vector3(-913.041931, -1313.722290, 13.744049),
		house = 'family_apartment_17',
		doors = {
		   {objName = 761708175, objYaw = 19.999998092651, objCoords = vector3(-913.041931, -1313.722290, 13.744049)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_118',
		distance = 2.0,
		textCoords = vector3(-902.806396, -1299.422485, 13.398193),
		label = '118',
		house = 'family_apartment_18',
		doors = {
		   {objName = 262671971, objYaw = 19.999998092651, objCoords = vector3(-902.806396, -1299.422485, 13.398193)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_118',
		distance = 2.0,
		textCoords = vector3(-901.777649, -1309.622437, 13.744049),
		house = 'family_apartment_18',
		doors = {
		   {objName = 761708175, objYaw = 19.999998092651, objCoords = vector3(-901.777649, -1309.622437, 13.744049)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_119',
		distance = 2.0,
		textCoords = vector3(-891.523132, -1295.315552, 13.398193),
		label = '119',
		house = 'family_apartment_19',
		doors = {
		   {objName = 262671971, objYaw = 19.999998092651, objCoords = vector3(-891.523132, -1295.315552, 13.398193)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_119',
		distance = 2.0,
		textCoords = vector3(-890.494385, -1305.515503, 13.744049),
		house = 'family_apartment_19',
		doors = {
		   {objName = 761708175, objYaw = 19.999998092651, objCoords = vector3(-890.494385, -1305.515503, 13.744049)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_120',
		distance = 2.0,
		textCoords = vector3(-880.242615, -1291.209961, 13.398193),
		label = '120',
		house = 'family_apartment_20',
		doors = {
		   {objName = 262671971, objYaw = 19.999998092651, objCoords = vector3(-880.242615, -1291.209961, 13.398193)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_120',
		distance = 2.0,
		textCoords = vector3(-879.213867, -1301.409912, 13.744049),
		house = 'family_apartment_20',
		doors = {
		   {objName = 761708175, objYaw = 19.999998092651, objCoords = vector3(-879.213867, -1301.409912, 13.744049)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_121',
		distance = 2.0,
		textCoords = vector3(-868.968323, -1287.106323, 13.398193),
		label = '121',
		house = 'family_apartment_21',
		doors = {
		   {objName = 262671971, objYaw = 20.0, objCoords = vector3(-868.968323, -1287.106323, 13.398193)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_121',
		distance = 2.0,
		textCoords = vector3(-867.939575, -1297.306274, 13.744049),
		house = 'family_apartment_21',
		doors = {
		   {objName = 761708175, objYaw = 20.0, objCoords = vector3(-867.939575, -1297.306274, 13.744049)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_122',
		distance = 2.0,
		textCoords = vector3(-857.701843, -1283.005615, 13.398193),
		label = '122',
		house = 'family_apartment_22',
		doors = {
		   {objName = 262671971, objYaw = 19.999998092651, objCoords = vector3(-857.701843, -1283.005615, 13.398193)},
		}
	},
	{
		authorizedJobs = {''},
		locked = true,
		boom = false,
		countboom = 2,
		countrepair = 1,
		item = true,
		itemname = 'ap_key_122',
		distance = 2.0,
		textCoords = vector3(-856.673096, -1293.205566, 13.744049),
		house = 'family_apartment_22',
		doors = {
		   {objName = 761708175, objYaw = 19.999998092651, objCoords = vector3(-856.673096, -1293.205566, 13.744049)},
		}
	},
}

function CheckAlldoorRepairandBoom()		---- เช็คระบบต่างเกี่ยวกับ การซ่อมหรือระเบิดประตู
	return true -- คือการให้ผ่านระบบให้ตั้ง true แต่ถ้า false คือเขาจะไม่สามารถซ่อมหรือระเบิดประตูได้
end

function NotifyCheckRepair()		---- แจ้งเตือนบอกว่าซ่อมไม่สำเร็จ
	
end

function NotifyCheckBoom()		---- แจ้งเตือนบอกว่าระบิดไม่สำเร็จ
	
end


Notify = function()
	
end

NotifyNeedRepair = function()
	exports['mythic_notify']:DoHudText('Error', 'คุณต้องมีที่ซ่อมประตู')
end

NotifyRepair = function()
	TriggerEvent("pNotify:SendNotification", {
		text = 'ซ่อมประตูสำเร็จ',
		type = "success",
		timeout = 3000,
		layout = "bottomCenter",
		queue = "global"
	})
end

NotifyNeedBoomDoor = function()
	exports['mythic_notify']:DoHudText('Error', 'คุณไม่มีระเบิด')
end

NotifyItemdoor = function()
	exports['mythic_notify']:DoHudText('Error', 'คุณไม่มีคีย์การ์ด')
end


Config.Hand 				= {										-- ของที่ติดหลังหลอดโหลดเสร็จ
	HandPickup = "prop_box_wood02a_mws",									-- Propในมือ
	PropBone = 28422,												-- กระดูกที่ติด
}

function ObjectPickup(Handspawned)
	AttachEntityToEntity(Handspawned, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422),-0.005,-0.19,-0.22,360.0,360.0,0.0,1,1,0,1,0,1)  --พิกัดไอเทม พ็อบบนมือ
end

function DisableActions()
    DisableControlAction(0, 24, true)
    DisableControlAction(0, 25, true)
    DisableControlAction(0, 45, true) -- Disable in-game mouse controls
    DisableControlAction(0, 140, true)      --- Attack
    DisableControlAction(0, 80, true)       --- Attack
    DisableControlAction(0, 106, true)      --- Attack
    DisableControlAction(0, 250, true)      --- Attack
    DisableControlAction(0, 263, true)      --- Attack
    DisableControlAction(0, 310, true)      --- Attack
    DisableControlAction(0, 24, true) -- Attack
    DisableControlAction(0, 257, true) -- Attack
    DisableControlAction(0, 32, true) -- Attack
    DisableControlAction(0, 18, true) -- Attack
    DisableControlAction(0, 69, true) -- Attack
    DisableControlAction(0, 92, true) -- Attack
    DisableControlAction(0, 122, true) -- Attack
    DisableControlAction(0, 135, true) -- Attack
    DisableControlAction(0, 142, true) -- Attack
    DisableControlAction(0, 144, true) -- Attack
    DisableControlAction(0, 176, true) -- Attack
    DisableControlAction(0, 223, true) -- Attack
    DisableControlAction(0, 229, true) -- Attack
    DisableControlAction(0, 237, true) -- Attack
    DisableControlAction(0, 329, true) -- Attack
    DisableControlAction(0, 346, true) -- Attack
    DisableControlAction(0, 143, true)
end

DrawText3D2 = function(coords, text, size, font)
	coords = vector3(coords.x, coords.y, coords.z)

	local camCoords = GetGameplayCamCoords()
	local distance = #(coords - camCoords)

	if not size then size = 1 end
	if not font then font = 0 end

	local scale = (size / distance) * 2
	local fov = (1 / GetGameplayCamFov()) * 100
	scale = scale * fov

	SetTextScale(0.0 * scale, 0.55 * scale)
	SetTextFont(font)
	SetTextColour(255, 255, 255, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(true)

	SetDrawOrigin(coords, 0)
	BeginTextCommandDisplayText('STRING')
	AddTextComponentString(text)
	EndTextCommandDisplayText(0.0, 0.0)
	ClearDrawOrigin()
end
