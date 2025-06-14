return {
	title = 'House Garage',
	type = 'car',
	target = {														-- ชนิดของการาจที่ต้องการให้เบิกยานพาหนะได้ (หากไม่ใส่จะสามารถเบิกยานพาหนะได้จากทุกการาจ)
		'House_5',
	},
	spawner = {
		from = {
			{
				coords = vector3(1092.4841, 1506.3022, 177.5084),
				radius = 1.5
			},			
		},
		to = {
			{
				coords = vector3(1085.43, 1501.21, 177.51), 
				heading = 123.8881
			},
			
		}
	},
	options = {
		inside = {
			enable = false,											-- เปิดใช้งานระบบเปิดช่องเก็บของภายในยานพาหนะ
			duration = 2*1000,										-- ระยะเวลาในการเปิดช่องเก็บของภายในยานพาหนะ
			price = { type = 'money', amount = 0 }					-- ราคาสำหรับเปิดช่องเก็บของภายในยานพาหนะ
		},
		trunk = {
			enable = true,											-- เปิดใช้งานระบบเปิดช่องเก็บของท้ายยานพาหนะ
			duration = 2*1000,										-- ระยะเวลาในการเปิดช่องเก็บของท้ายยานพาหนะ
			price = { type = 'money', amount = 0 }					-- ราคาสำหรับเปิดช่องเก็บของท้ายยานพาหนะ
		},
		spawn = {
			enable = true,											-- เปิดใช้งานระบบเบิกยานพาหนะ
			duration = 2*1000,										-- ระยะเวลาในการเบิกยานพาหนะ
			price = { type = 'money', amount = 0 }				-- ราคาสำหรับเบิกยานพาหนะ
		},
		show_vehicle_storage_data_only_in_garage = false				-- แสดงข้อมูลช่องเก็บของยานพาหนะ (ต้องมี nc_vehiclestorage)
	},
	others = {
		blip = {
			enable = false,											-- แสดง Blip ในแผนที่
			name = '<font face="font4thai">Main Garage</font>',									-- ชื่อของ Blip
			sprite = 289,											-- รูปแบบของ Blip (https://docs.fivem.net/docs/game-references/blips)
			color = 3,												-- สีของ Blip
			size = 0.7												-- ขนาดของ Blip
		},
		text = {
			enable = false,											-- แสดง 3DText
			distance = 15,											-- ระยะการมองเห็น Text
			title = '<font face="font4thai">การาจ - รถ</font>',									-- Title Text ที่ต้องการจะแสดง *เปลี่ยนขนาด Font โดยการใส่ '<font size="40">Text Here</font>'
			z_offset = 0.1,											-- ระยะที่ต้องการเพิ่มหรือลดลงในแนวแกน Z (+ เมื่อต้องการให้สูงขึ้น | - เมื่อต้องการให้ต่ำลง)
			outline = true,
			color = {
				idle = { r = 255, g = 255, b = 255 },				-- สีตัวอักษร ขณะ Idle (rgba)
				active = { r = 255, g = 255, b = 255 }				-- สีตัวอักษร ขณะเข้าใกล้ (rgba)
			}
		},
		marker = {
			enable = false,											-- แสดง Marker (true: แสดง | false: ไม่แสดง)
			turn = true,											-- หมุน Marker
			distance = 40,											-- ระยะการมองเห็น Marker
			sprite = 36,											-- รูปแบบของ Marker (https://docs.fivem.net/docs/game-references/markers)
			size = 1.0,												-- ขนาดของ Marker *หากต้องการแสดง Marker ให้เท่ากับ radius ให้ใส่ค่าเป็น 2 เท่า
			height = 1.0,											-- ความสูงของ Marker
			z_offset = -0.2,										-- ระยะที่ต้องการเพิ่มหรือลดลงในแนวแกน Z (+ เมื่อต้องการให้สูงขึ้น | - เมื่อต้องการให้ต่ำลง)
			color = {
				idle = { r = 0, g = 80, b = 250, a = 80 },		-- สีของ Marker ขณะ Idle (rgba)
				active = { r = 0, g = 80, b = 250, a = 150 }	-- สีของ Marker ขณะเข้าใกล้ (rgba)
			}
		},
		object = {
			enable = false,											-- แสดง Object ที่ต้องการ
			model = `logo_garage`,				-- Model ของ Object
			heading = 123.8881-180,											-- Heading ของ Object
			place_on_ground = false,									-- วาง Object ลงบนพื้น
			z_offset = 0.0,										-- ระยะที่ต้องการเพิ่มหรือลดลงในแนวแกน Z (+ เมื่อต้องการให้สูงขึ้น | - เมื่อต้องการให้ต่ำลง)
			collision = false,										-- Collision ของ Object
			on_spawned = function(entity)							-- Function นี้จะถูกเรียกใช้เมื่อสร้าง Object สำเร็จ
				return {}
			end,
			on_removed = function(storage)							-- Function นี้จะถูกเรียกใช้เมื่อลบ Object สำเร็จ
				
			end
		},
		ped = {
			enable = false,											-- แสดง Ped ที่ต้องการ
			model = `csb_chef2`,									-- Model ของ Ped (https://docs.fivem.net/docs/game-references/ped-models)
			heading = 212.15,										-- Heading ของ Ped
			z_offset = 0.0,										-- ระยะที่ต้องการเพิ่มหรือลดลงในแนวแกน Z (+ เมื่อต้องการให้สูงขึ้น | - เมื่อต้องการให้ต่ำลง)
			collision = false,										-- Collision ของ Ped
			animation = {
				enable = true,										-- เปิดใช้งาน Animation ของ Ped (สามารถผสม Animation ได้ โดยส่วนล่างจะต้องไปตั้งค่า fullbody)
				upper = { dict = 'anim@amb@nightclub@peds@', name = 'rcmme_amanda1_stand_loop_cop' },	-- Animation ส่วนบน
				fullbody = { dict = 'misslamar1leadinout', name = 'yoga_02_idle_b' }					-- Animation ทั้งตัว
				-- *หากไม่ต้องการใช้ Animation ส่วนไหนให้ใส่ค่าเป็น nil ไว้ เช่น upper = nil
			},
			on_spawned = function(entity)							-- Function นี้จะถูกเรียกใช้เมื่อสร้าง Ped สำเร็จ
				return {}		-- return ค่า storage กลับไปใช้งานใน on_removed
			end,
			on_removed = function(storage)							-- Function นี้จะถูกเรียกใช้เมื่อลบ Ped สำเร็จ
				
			end
		}
	},
	allow_jobs = {													-- อาชีพที่อนุญาตให้ใช้งานการาจนี้ (หากไม่ใส่ ทุกอาชีพจะสามารถใช้งานการาจนี้ได้)
		--['scott_will'] = true,
	}
}