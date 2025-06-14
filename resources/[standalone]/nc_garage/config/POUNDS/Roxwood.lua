return {
	title = 'Pound',
	type = 'car',
	spawner = {
		from = {
			{
				coords = vector3(-420.5826, 7685.8452, 6.4377),
				radius = 2.0
			}
		},
		to = {
			{
				coords = vector3(-420.5826, 7685.8452, 6.4377), 
				heading = 184.4520
			}
		}
	},
	options = {
		send_to_garage = {
			enable = true,											-- เปิดใช้งานระบบส่งยานพาหนะเข้าการาจ
			target = 'main',										-- ชื่อการาจที่ต้องการให้ส่งยานพาหนะไป
			duration = 2*1000,										-- ระยะเวลาในการส่งยานพาหนะเข้าการาจ
			price = { type = 'money', amount = 3000 },				-- ราคาสำหรับการส่งยานพาหนะเข้าการาจ
			engine_health = 100,									-- สภาพเครื่องยนต์ของยานพาหนะเมื่อพาวน์เสร็จ
			fuel = 100												-- ระดับเชื้อเพลงของยานพาหนะเมื่อพาวน์เสร็จ
		},
		spawn = {
			enable = true,											-- เปิดใช้งานระบบพาวน์ยานพาหนะ
			duration = 2*1000,											-- ระยะเวลาในการพาวน์ยานพาหนะ
			price = { type = 'money', amount = 4000 },			-- ราคาสำหรับการพาวน์ยานพาหนะ
			engine_health = 100,									-- สภาพเครื่องยนต์ของยานพาหนะเมื่อพาวน์เสร็จ
			fuel = 100												-- ระดับเชื้อเพลงของยานพาหนะเมื่อพาวน์เสร็จ
		}
	},
	others = {
		blip = {
			enable = false,											-- แสดง Blip ในแผนที่
			name="<font face='font4thai'>[~r~พาวน์~w~] </font>",											-- ชื่อของ Blip
			sprite = 289,											-- รูปแบบของ Blip (https://docs.fivem.net/docs/game-references/blips)
			color = 47,												-- สีของ Blip
			size = 0.7												-- ขนาดของ Blip
		},
		text = {
			enable = false,											-- แสดง 3DText
			distance = 15,											-- ระยะการมองเห็น Text
			title = '<font face="font4thai">พาวน์ - รถ</font>',										-- Title Text ที่ต้องการจะแสดง *เปลี่ยนขนาด Font โดยการใส่ '<font size="40">Text Here</font>'
			z_offset = 0.3,										-- ระยะที่ต้องการเพิ่มหรือลดลงในแนวแกน Z (+ เมื่อต้องการให้สูงขึ้น | - เมื่อต้องการให้ต่ำลง)
			outline = true,
			color = {
				idle = { r = 255, g = 255, b = 255 },				-- สีตัวอักษร ขณะ Idle (rgba)
				active = { r = 255, g = 255, b = 255 }				-- สีตัวอักษร ขณะเข้าใกล้ (rgba)
			}
		},
		marker = {
			enable = false,											-- แสดง Marker (true: แสดง | false: ไม่แสดง)
			turn = true,											-- หมุน Marker
			distance = 50,											-- ระยะการมองเห็น Marker
			sprite = 24,											-- รูปแบบของ Marker (https://docs.fivem.net/docs/game-references/markers)
			size = 1.0,												-- ขนาดของ Marker *หากต้องการแสดง Marker ให้เท่ากับ radius ให้ใส่ค่าเป็น 2 เท่า
			height = 1.0,											-- ความสูงของ Marker
			z_offset = -0.3,										-- ระยะที่ต้องการเพิ่มหรือลดลงในแนวแกน Z (+ เมื่อต้องการให้สูงขึ้น | - เมื่อต้องการให้ต่ำลง)
			color = {
				idle = { r = 139, g = 0, b = 0, a = 150 },		-- สีของ Marker ขณะ Idle (rgba)
				active = { r = 232, g = 0, b = 0, a = 150 },		-- สีของ Marker ขณะเข้าใกล้ (rgba)
			}
		},
		object = {
			enable = true,											-- แสดง Object ที่ต้องการ
			model = `pound_sakura`,						-- Model ของ Object
			heading = 29.37,										-- Heading ของ Object
			place_on_ground = false,									-- วาง Object ลงบนพื้น
			z_offset = 0.0,										-- ระยะที่ต้องการเพิ่มหรือลดลงในแนวแกน Z (+ เมื่อต้องการให้สูงขึ้น | - เมื่อต้องการให้ต่ำลง)
			collision = false										-- Collision ของ Object
		},
		ped = {
			enable = false,											-- แสดง Ped ที่ต้องการ
			model = `csb_chef2`,									-- Model ของ Ped (https://docs.fivem.net/docs/game-references/ped-models)
			heading = 212.15,										-- Heading ของ Ped
			z_offset = 0.0,											-- ระยะที่ต้องการเพิ่มหรือลดลงในแนวแกน Z (+ เมื่อต้องการให้สูงขึ้น | - เมื่อต้องการให้ต่ำลง)
			collision = false,										-- Collision ของ Ped
			animation = {
				enable = true,										-- เปิดใช้งาน Animation ของ Ped (สามารถผสม Animation ได้ โดยส่วนล่างจะต้องไปตั้งค่า fullbody)
				upper = { dict = 'anim@amb@nightclub@peds@', name = 'rcmme_amanda1_stand_loop_cop' },	-- Animation ส่วนบน
				fullbody = { dict = 'misslamar1leadinout', name = 'yoga_02_idle_b' }					-- Animation ทั้งตัว
				-- *หากไม่ต้องการใช้ Animation ส่วนไหนให้ใส่ค่าเป็น nil ไว้ เช่น upper = nil
			}
		}
	},
	allow_jobs = {													-- อาชีพที่อนุญาตให้ใช้งานพาวน์นี้ (หากไม่ใส่ ทุกอาชีพจะสามารถใช้งานพาวน์นี้ได้)
		-- ['police'] = true,
	}
}