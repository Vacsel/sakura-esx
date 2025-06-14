-- ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
-- ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

Config.Locale = {
	UI = {
		garages = {
			['main'] = 'หลัก',
			['test'] = 'ทดสอบ',

			['police_block'] = 'ยึดโดยตำรวจ'
		},
		warning = {
			low = 'ยานพาหนะของคุณเสียหายและเชื้อเพลิงใกล้จะหมด',
			low_engine_health = 'ยานพาหนะของคุณเสียหายหนักมาก',
			low_fuel = 'ยานพาหนะนี้มีเชื้อเพลิงเหลือน้อย'
		},
		error = {
			in_town = 'ยานพาหนะของคุณยังอยู่ในเมือง',
			in_garage = 'ยานพาหนะของคุณอยู่ในการาจ'
		},
		details = {
			health = 'สภาพเครื่องยนต์',
			fuel = 'น้ำมัน / พลังงาน',
			speed = 'Speed (ความเร็ว)',
			acceleration = 'Acceleration (อัตราเร่ง)',
			braking = 'Braking (เบรค)',
			handling = 'Handling (ควบคุม)',
			storage = {
				inside = 'Inside',
				trunk = 'Trunk',
				slot = 'ช่อง',
				weight = 'น้ำหนัก',
				account = 'เงิน',
				item = 'สิ่งของ',
				weapon = 'อาวุธ'
			},
			buttons = {
				inside = 'Open Inside',
				trunk = 'Open Trunk',
				spawn = 'Spawn Vehicle',
				send_to_garage = 'Send to Garage'
			}
		},
		actions = {
			title = {
				spawn = 'กำลังเบิกยานพาหนะ',
				pound = 'กำลังเบิกยานพาหนะ',
				inside = 'กำลังเปิดช่องเก็บของยานพาหนะ',
				trunk = 'กำลังเปิดช่องเก็บของยานพาหนะ',
				send_to_garage = 'กำลังนำยานพาหนะเข้าการาจ'
			}
		},
		dialog = {
			change_name = 'เปลี่ยนชื่อยานพาหนะ',
			cancel = 'ยกเลิก',
			confirm = 'ยืนยัน'
		},
		others = {
			plate = 'ทะเบียน',
			no_vehicles = 'ไม่พบยานพาหนะของคุณ'
		}
	}
}

-- Config.Locale = {
-- 	UI = {
-- 		garages = {
-- 			['main'] = 'Main',
-- 			['test'] = 'Test'
-- 		},
-- 		error = {
-- 			in_town = 'Your vehicle is in town',
-- 			in_garage = 'Your vehicle is in garage'
-- 		},
-- 		details = {
-- 			health = 'Engine Health',
-- 			fuel = 'Fuel / Energy',
-- 			speed = 'Speed',
-- 			acceleration = 'Acceleration',
-- 			braking = 'Braking',
-- 			handling = 'Handling',
-- 			storage = {
-- 				inside = 'Inside',
-- 				trunk = 'Trunk',
-- 				slot = 'Slot',
-- 				weight = 'Weight',
-- 				account = 'Account',
-- 				item = 'Item',
-- 				weapon = 'Weapon'
-- 			}
-- 		},
-- 		buttons = {
-- 			inside = 'Open Inside',
-- 			trunk = 'Open Trunk',
-- 			spawn = 'Spawn Vehicle',
-- 			send_to_garage = 'Send to Garage'
-- 		},
-- 		dialog = {
-- 			change_name = 'Change vehicle name',
-- 			cancel = 'Cancel',
-- 			confirm = 'Confirm'
-- 		}
-- 	}
-- }