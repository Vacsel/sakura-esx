-- ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
-- ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

-- เปิดใช้งาน NC Extensions ต่างๆ
Config.Extensions = {
	nc_vehiclestorage = {				-- ใช้งาน Extension NC Vehicle Storage (1.0.1 ขึ้นไป)
		enable = false
	},
	nc_notify = {						-- ใช้งาน Extension NC Notify
		enable = false,
		options = {
			spawned = {
				enable = true,
				title = 'เบิกยานพาหนะสำเร็จ',
				description = {
					normal = 'ยานพาหนะทะเบียน %s',
					paid = 'จากการเบิกยานพาหนะทะเบียน %s'
				},
				icon = 'car',
				duration = 4000
			},
			stored = {
				enable = true,
				title = 'เก็บยานพาหนะสำเร็จ',
				description = {
					normal = 'ยานพาหนะทะเบียน %s เข้าการาจ %s',
					paid = 'จากการเก็บยานพาหนะทะเบียน %s เข้าการาจ %s'
				},
				icon = 'car',
				duration = 4000
			},
			pounded = {
				enable = true,
				title = 'กู้ยานพาหนะสำเร็จ',
				description = {
					normal = 'ยานพาหนะทะเบียน %s',
					paid = 'จากการกู้ยานพาหนะทะเบียน %s'
				},
				icon = 'car',
				duration = 4000
			},
			inside = {
				enable = true,
				title = 'เปิดช่องเก็บของภายในยานพาหนะสำเร็จ',
				description = {
					normal = 'ยานพาหนะทะเบียน %s',
					paid = 'จากการเปิดช่องเก็บของภายในยานพาหนะทะเบียน %s'
				},
				icon = 'car',
				duration = 4000
			},
			trunk = {
				enable = true,
				title = 'เปิดช่องเก็บของท้ายยานพาหนะสำเร็จ',
				description = {
					normal = 'ยานพาหนะทะเบียน %s',
					paid = 'จากการเปิดช่องเก็บของท้ายยานพาหนะทะเบียน %s'
				},
				icon = 'car',
				duration = 4000
			},
			sent_to_garage = {
				enable = true,
				title = 'เคลื่อนย้ายยานพาหนะเข้าการาจสำเร็จ',
				description = {
					normal = 'ยานพาหนะทะเบียน %s เข้าการาจ %s',
					paid = 'จากการเคลื่อนย้ายยานพาหนะทะเบียน %s เข้าการาจ %s'
				},
				icon = 'car',
				duration = 4000
			},
			error = {
				enable = true,
				title = {
					spawn = 'ไม่สามารถเบิกยานพาหนะได้',
					store = 'ไม่สามารถเก็บยานพาหนะได้',
					inside = 'ไม่สามารถเปิดช่องเก็บของภายในยานพาหนะได้',
					trunk = 'ไม่สามารถเปิดช่องเก็บของท้ายยานพาหนะได้',
					send_to_garage = 'ไม่สามารถเคลื่อนย้ายยานพาหนะเข้าการาจได้',
					capture_mode = 'ไม่สามารถเปิดโหมดถ่ายรูปยานพาหนะได้'
				},
				description = {
					outside_range = {
						error	= 'คุณไม่อยู่ในระยะที่กำหนด'
					},
					vehicle_not_found = {
						error	= 'ไม่พบยานพาหนะของคุณ'
					},
					source_account_not_enough = {
						error	= 'คุณมี %s ในกระเป๋าไม่เพียงพอ'
					},
					already_in_garage = {
						error	= 'พบยานพาหนะของคุณอยู่ในการาจอยู่แล้ว'
					},
					not_in_a_vehicle = {
						error	= 'คุณไม่ได้อยู่บนยานพาหนะ'
					},
					invalid_vehicle_model = {
						error	= 'ไม่พบโมเดลยานพาหนะ %s'
					},
					someone_driving_your_vehicle = {
						error	= 'มีใครบางคนกำลังขับยานพาหนะของคุณอยู่'
					}
				},
				icon = 'car',
				duration = 4000
			}
		}
	},
	nc_discordlogs = {					-- ใช้งาน Extension NC Discord Logs
		enable = false,
		options = {
			spawned = {
				enable = true,
				webhook = '',						-- Webhook Name ที่ใส่ไว้ใน nc_discordlogs' config
				title = 'เบิกยานพาหนะ',
				description = 'ทะเบียน %s จาก %s',
				color = '67b1ba'
			},
			stored = {
				enable = true,
				webhook = '',						-- Webhook Name ที่ใส่ไว้ใน nc_discordlogs' config
				title = 'เก็บยานพาหนะเข้าการาจ',
				description = 'ทะเบียน %s เข้าการาจ %s',
				color = '9fdf4c'
			},
			pounded = {
				enable = true,
				webhook = '',						-- Webhook Name ที่ใส่ไว้ใน nc_discordlogs' config
				title = 'กู้ยานพาหนะ',
				description = 'ทะเบียน %s',
				color = 'af63f0'
			},
			sent_to_garage = {
				enable = true,
				webhook = '',						-- Webhook Name ที่ใส่ไว้ใน nc_discordlogs' config
				title = 'เคลื่อนย้ายยานพาหนะเข้าการาจ',
				description = 'ทะเบียน %s เข้าการาจ %s',
				color = 'f0ae3b'
			}
		}
	}
}