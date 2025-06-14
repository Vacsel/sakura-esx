return {
	title = 'Remover',
	type = 'car',
	target = 'boat',
	price = { type = 'money', amount = 0 },							-- ราคาสำหรับการส่งยานพาหนะเข้าการาจ
	auto_mode = {
		enable = false,
		force = false
	},
	-- out_coords = vector3(-313.2000122070313, -964.8599853515624, 31.07999992370605),	-- หากไม่ตั้งค่า ยานพาหนะจะถูกลบจากจุดที่อยู่ปัจจุบัน
	remover = {
		{
			coords = vector3(-1782.7590, -1169.2874, 13.0178),
			radius = 4.0
		}
	},
	others = {
		blip = {
			enable = false,											-- แสดง Blip ในแผนที่
			name = 'Remover',										-- ชื่อของ Blip
			color = 15,												-- สีของ Blip
			sprite = 267,											-- รูปแบบของ Blip (https://docs.fivem.net/docs/game-references/blips)
			size = 0.9												-- ขนาดของ Blip
		},
		text = {
			enable = false,											-- แสดง 3DText
			distance = 15,											-- ระยะการมองเห็น Text
			title = 'Remover',										-- Title Text ที่ต้องการจะแสดง *เปลี่ยนขนาด Font โดยการใส่ '<font size="40">Text Here</font>'
			z_offset = 0.1,											-- ระยะที่ต้องการเพิ่มหรือลดลงในแนวแกน Z (+ เมื่อต้องการให้สูงขึ้น | - เมื่อต้องการให้ต่ำลง)
			outline = true,
			color = {
				idle = { r = 199, g = 102, b = 44 },				-- สีตัวอักษร ขณะ Idle (rgba)
				active = { r = 199, g = 55, b = 44 }				-- สีตัวอักษร ขณะเข้าใกล้ (rgba)
			}
		},
		marker = {
			enable = true,											-- แสดง Marker (true: แสดง | false: ไม่แสดง)
			turn = true,											-- หมุน Marker
			distance = 40,											-- ระยะการมองเห็น Marker
			sprite = 1,											-- รูปแบบของ Marker (https://docs.fivem.net/docs/game-references/markers)
			size = 10.0,												-- ขนาดของ Marker *หากต้องการแสดง Marker ให้เท่ากับ radius ให้ใส่ค่าเป็น 2 เท่า
			height = 1.5,											-- ความสูงของ Marker
			z_offset = -1.0,										-- ระยะที่ต้องการเพิ่มหรือลดลงในแนวแกน Z (+ เมื่อต้องการให้สูงขึ้น | - เมื่อต้องการให้ต่ำลง)
			color = {
				idle = { r = 255, g = 0, b = 0, a = 150 },		-- สีของ Marker ขณะ Idle (rgba)
				active = { r = 199, g = 55, b = 44, a = 180 }		-- สีของ Marker ขณะเข้าใกล้ (rgba)
			}
		}
	},
	allow_jobs = {													-- อาชีพที่อนุญาตให้ใช้งานจุดเก็บยานพาหนะนี้ (หากไม่ใส่ ทุกอาชีพจะสามารถใช้งานจุดเก็บยานพาหนะนี้ได้)
		--['scott_will'] = true,
	}
}