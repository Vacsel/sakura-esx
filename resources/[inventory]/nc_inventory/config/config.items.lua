-- ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
-- ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

-- น้ำหนักของสิ่งของชนิดต่างๆต่อ 1 ชิ้น (หน่วยเป็น Kg) ** หากไม่ใส่ จะอิงตามน้ำหนักในระบบ es_extended หรือเบสอื่นๆ
Config.ItemsWeight = {
	-- ['bread'] = 500,
	-- ['water'] = 500,
}

-- Limit ของสิ่งของชนิดต่างๆ ** หากไม่ใส่ จะอิงตาม Limit ในระบบ es_extended หรือเบสอื่นๆ
Config.ItemsLimit = {
	-- ['bread'] = 5,
	-- ['water'] = 5,
}

-- ความหายากของสิ่งของชนิดต่างๆ ** หากไม่ใส่ จะอิงตาม Rarity ในระบบ es_extended หรือเบสอื่นๆ
Config.ItemsRarity = {
	-- ['bread'] = 1,
	-- ['water'] = 2,
}

-- ปิดกระเป๋าเมื่อใช้งานสิ่งของต่างๆ
Config.CloseInventoryOnUseItem = {
	'skin_card',
	'ipad',
	'card_afk',
	'gacha_01',
	'card_rental'
	-- 'water',
}

-- ปิดกระเป๋าเมื่อทิ้งสิ่งของต่างๆ
Config.CloseInventoryOnDropItem = {
	-- 'bread',
	-- 'water',
}

-- สิ่งของที่ต้องการให้เก็บอาวุธก่อนแล้วจึงใช้งาน
Config.PocketWeaponWhenUse = {
	-- 'bread',
	-- 'water',
}

-- Blacklist ทิ้งของ/มอบของ
Config.ItemsActionList = {
	shortcut = {				-- การ Item ของเข้า Shortcuts
		type = 'blacklist',		-- ชนิดของ List ที่ต้องการ (whitelist|blacklist)
		list = {
			-- 'bread',
			-- 'water',
		}
	},
	use = {						-- การ "ใช้" สิ่งของต่างๆ
		type = 'blacklist',
		list = {
			'pangsakura',
			'team_black',
			'team_blue',
			'team_red',
			'team_white',
			'gold_letter',
			'red_letter',
			'cupid',
			'quest_card',
			'sakura_auction_card',
			'sakura_auction_card_fam',
			'ticketsupport',
			'house_key_1',
			'house_key_2',
			'house_key_3',
			'house_key_4',
			'house_key_5',
			'house_key_6',
			'house_key_7',
			'house_key_8',
			'house_key_9',
			'house_key_10',
			'point_sk_donate',
			'point_sk_donate_v2',
			'gaming_gear_coupon',
			'club_key_staff',
			'club_key_senior',
			'clubcard_vip',
			'clubcard',
			'sakura-failed',
			'car_ss3_komoda_coupon',
			'car_ss3_turismo_coupon',
			'car_ss3_zorrusso_coupon',
			'sweet_skin_dagger',
			'sweet_skin_poolcue',
			'sweet_skin_knife',
			'samurai_skin_dagger',
			'samurai_skin_knife',
			'samurai_skin_poolcue',
			'halloween_skin_dagger',
			'halloween_skin_knife',
			'halloween_skin_poolcue',
			'car_ss4_car1_coupon',
			'car_ss4_car2_coupon',
			'car_ss4_car3_coupon',
			'hammer',
			'shied',
			'foring',
			'coin_process_1',
			'coin_process_2',
			'halloween_skin_dagger_gc',
			'halloween_skin_knife_gc',
			'halloween_skin_poolcue_gc',
			'skinbtpss2',
			'car_ss5_10k_coupon',
			'car_ss5_15k_coupon',
			'card_gaming_ss5',
			'car_ss5_part_coupon',
			'milkshake_ticket',
			'codex',
			'winterfrost_skin_dagger',
			'winterfrost_skin_knife',
			'winterfrost_skin_poolcue',
			'golden_ticket',
			'vegan_skin_poolcue1',
			'vegan_skin_poolcue2',
			'vegan_skin_poolcue3',
			'vegan_skin_dagger',
			'vegan_skin_knife',
			'vegan_skin_knuckle',
			'vegan_skin_mechete',
			'vegan_skin_revolver',
			-- 'bread',
			-- 'water',
		}
	},
	drop = {					-- การ "ทิ้ง" สิ่งของต่างๆ
		type = 'whitelist',
		list = {
			
			-- '12gauge', -- กระสุนลูกซองยาง
			-- 'Kingboxs', -- King Box
			'Netherite', -- Netherite
			'Phone', -- โทรศัพท์
			'Reddot', -- Reddot
			'SteelScrap', -- เศษเหล็ก
			-- 'XMAS_BOX', -- [B] Xmas Box Green
			-- 'XMAS_BOX_RED', -- [B] Xmas Box Red
			-- 'acc_a1_hks_armband_evo', -- [F] Armband 1
			-- 'acc_a2_hks_armband_evo', -- [F] Armband 2
			-- 'acc_a3_hks_armband_evo', -- [F] Armband 3
			-- 'acc_a4_hks_armband_evo', -- [F] Armband 4
			-- 'acc_a5_hks_armband_evo', -- [F] Armband 5
			-- 'acc_a6_hks_armband_evo', -- [F] Armband 6
			-- 'acc_a7_hks_armband_evo', -- [F] Armband 7
			-- 'acc_a8_hks_armband_evo', -- [F] Armband 8
			-- 'admin_cloth', -- bypassชุดแอดมิน
			-- 'admin_prop', -- ADMIN PROP
			-- 'admin_skin', -- สูท ADMIN 3
			-- 'admin_skin_2', -- สูท ADMIN 4
			-- 'adminarmband1', -- armband ADMIN
			-- 'admincamera', -- Camera Admin
			'aed', -- AED
			'afk_bonus', -- AFK Bonus
			'afk_coin', -- AFK COIN
			'agen_coin', -- Agency Coin
			-- 'aidenta_summer_duck', -- [F] Summer Desk
			-- 'aidenta_summer_float', -- [F] Summer Float
			-- 'aidenta_summer_flower', -- [F] Summer Flower
			-- 'aidenta_summer_shoes_l', -- [F] Summer Shoes {Left)
			-- 'aidenta_summer_shoes_r', -- [F] Summer Shoes {Right)
			'alpaca_baby', -- ลูกหมูเด้ง
			'alpaca_father', -- พ่อหมูเด้ง
			'alpaca_feed', -- อาหารหมูเด้ง
			'amber', -- Amber
			'ammo', -- Ammo
			'anti-potion', -- Anti-potion
			-- 'anti_dead', -- บัตรประกันอาวุธ
			'apartment_key_201', -- อพาร์ทเม้นท์ 105
			'apartment_key_202', -- อพาร์ทเม้นท์ 106
			'apartment_key_203', -- อพาร์ทเม้นท์ 301
			'apartment_key_204', -- อพาร์ทเม้นท์ 202
			'apartment_key_205', -- อพาร์ทเม้นท์ 101
			'apartment_key_206', -- อพาร์ทเม้นท์ 203
			'apartment_key_207', -- อพาร์ทเม้นท์ 104
			'apartment_key_208', -- อพาร์ทเม้นท์ 204
			'apartment_key_209', -- อพาร์ทเม้นท์ 201
			'apartment_key_210', -- อพาร์ทเม้นท์ 205
			'apartment_key_211', -- อพาร์ทเม้นท์ 102
			'apartment_key_212', -- อพาร์ทเม้นท์ 206
			'apartment_key_213', -- อพาร์ทเม้นท์ 103
			'armor', -- Armor
			-- 'b_bag_allnew', -- Allnew ถาวร
			-- 'b_bag_gokart', -- Gokart ถาวร
			-- 'b_bag_khomloy', -- รถโคม ถาวร
			-- 'b_bag_tuktuk', -- รถตุ๊กๆ ถาวร
			-- 'b_bag_wave', -- รถมอไซค์ 125 ถาวร
			-- 'b_bag_wave125', -- รถมอไซค์ 110s ถาวร
			-- 'bag_allnew', -- รถ Allnew
			-- 'bag_benefit_10', -- [B] ถุงสวัสดิการครอบครัว 10  คน
			-- 'bag_benefit_10_new', -- [B] ถุงครอบครัว 10 คน
			-- 'bag_benefit_11', -- [B] ถุงสวัสดิการแก๊ง 11 คน {เลิกใช้)
			-- 'bag_benifit_15', -- [B] ถุงสวัสดิการแก๊ง 15 คน {เลิกใช้)
			-- 'bag_benifit_20', -- [B] ถุงสวัสดิการแก๊ง 20 คน {เลิกใช้)
			-- 'bag_caracara', -- [B] Caracara 200KG 30 วัน
			-- 'bag_card_bp', -- [B] ซองการ์ดบลูปริ้น
			-- 'bag_cash', -- [B] เงิน 10k Yen
			-- 'bag_garduian', -- [B] Guardian 100KG 30 วัน
			-- 'bag_gokart', -- รถ Gokart
			-- 'bag_horse', -- ถุงม้า
			-- 'bag_khomloy', -- รถโคมลอย
			-- 'bag_lynx', -- [B] Lynx
			-- 'bag_pariah', -- [B] Pariah
			-- 'bag_pr_ratloader2', -- [B]  Ratloader 300 KG
			-- 'bag_sugoi', -- [B] Sugoi
			-- 'bag_tesla', -- [B] Tesla Roadster
			-- 'bag_tuktuk', -- รถตุ๊กๆ
			-- 'bag_wave', -- รถมอไซค์ 125
			-- 'bag_wave125', -- รถมอไซค์ 110s
			-- 'bag_weapon_dagger', -- [B] ซองอาวุธ มีด DAGGER
			-- 'bag_weapon_knife', -- [B] ซองอาวุธ มีด M9
			-- 'bag_weapon_poolcue', -- [B] ซองอาวุธ ไม้พลู
			'bandage', -- Bandage
			'bank_bomb', -- C4
			'bank_drill', -- Bank's Drill
			'barrel', -- Barrel
			-- 'bax_rd_aed', -- [B] กล่องสุ่มAED
			-- 'bax_rd_aed_x2', -- [B] กล่องสุ่มAED  x2
			'bits', -- Bits
			'black-crystal', -- Black Crystal
			'black_powder', -- Black Powder
			'black_vibranium', -- Black Viberium
			'blue-crystal', -- Blue Crystal
			'boat_trade_card', -- บัตรโอนเรือ
			'bodybag', -- ถุงห่อศพ
			-- 'boombox', -- ลำโพง
			-- 'box_aed', -- [B] กล่อง AED x100
			-- 'box_aed_50', -- [B] กล่อง AED x50
			-- 'box_armor', -- [B] กล่องเกราะ x100
			-- 'box_armor_50', -- [B] กล่องเกราะ x50
			-- 'box_black_money', -- [B] กล่องสุ่มเงินแดง
			-- 'box_black_money_x2', -- [B] กล่องสุ่มเงินแดง x2
			-- 'box_blue-crystal', -- [B] Blue Crystal Pack
			-- 'box_bonsai', -- [B] กล่องไม้บอนไซ
			-- 'box_car_promote', -- [B] Car Promote {300 KG)
			-- 'box_car_rent_3_a', -- กล่องรถ Surano 3 Day
			-- 'box_car_rent_3_b', -- กล่องรถ Novak 3 Day
			-- 'box_carpart_train', -- [B] กล่องสุ่มชิ้นส่วนรถไฟปู๊นปู๊น
			-- 'box_cement', -- [B] กล่องแพ็คปูน
			-- 'box_comet', -- [B] Comet {7 Days)
			-- 'box_copper', -- [B] กล่องคอปเปอร์
			-- 'box_craft_vibrenium', -- [B] กล่องชุดตีไวเบ
			-- 'box_craft_weapon', -- [B] กล่องตีอาวุธ
			-- 'box_diamond', -- [B] กล่องแพ็คเพชร
			-- 'box_farm_x2', -- [B] กล่องฟาร์ม x2
			-- 'box_gem', -- [B] Gems Box
			-- 'box_gold', -- [B] กล่องแพ็คทอง
			-- 'box_gravel', -- [B] กล่องแพ็คกรวด
			-- 'box_item_12', -- [B] กล่องรวมมิตร
			-- 'box_mc', -- [B] กล่อง MC
			-- 'box_pain', -- [B] กล่องเพน x100
			-- 'box_pain_50', -- [B] กล่องเพน x50
			-- 'box_part_bugatimini', -- [B] กล่องสุ่มชิ้นส่วนรถซิ่งบูกาติมินิ
			-- 'box_rd_aed_ss3_x2', -- [B] กล่องสุ่ม AED
			-- 'box_rd_aed_ss4_x2', -- [B] กล่องสุ่ม AED
			-- 'box_rd_aed_ss5_x2', -- [B] กล่องสุ่ม AED
			-- 'box_rd_aed_v2', -- [B] กล่องสุ่มAED SS2
			-- 'box_rd_aed_v2_x2', -- [B] กล่องสุ่มAED SS2
			-- 'box_rd_afk', -- [B] กล่องสุ่มเหรียญ AFK
			-- 'box_rd_afk_2', -- [B] กล่องสุ่มเหรียญ AFK SS2
			-- 'box_rd_afk_2_x2', -- [B] กล่องสุ่มเหรียญ AFK SS2
			-- 'box_rd_afk_ss3_x2', -- [B] กล่องสุ่มเหรียญ AFK
			-- 'box_rd_afk_ss4_x2', -- [B] กล่องสุ่มเหรียญ AFK
			-- 'box_rd_afk_ss5_x2', -- [B] กล่องสุ่มเหรียญ AFK
			-- 'box_rd_afk_x2', -- [B] กล่องสุ่มเหรียญ AFK x2
			-- 'box_rd_armor', -- [B] กล่องสุ่มเกราะ
			-- 'box_rd_armor_ss3_x2', -- [B] กล่องสุ่มของ Story
			-- 'box_rd_armor_ss4_x2', -- [B] กล่องสุ่มของ Story
			-- 'box_rd_armor_ss5_x2', -- [B] กล่องสุ่มของ Story
			-- 'box_rd_armor_ss6_x2', -- [B] กล่องสุ่มเกราะ x2
			-- 'box_rd_armor_v2', -- [B] กล่องสุ่มเกราะ SS2
			-- 'box_rd_armor_v2_x2', -- [B] กล่องสุ่มเกราะ SS2
			-- 'box_rd_armor_x2', -- [B] กล่องสุ่มเกราะ x2
			-- 'box_rd_black_money_v2', -- [B] กล่องสุ่มเงินแดง SS2
			-- 'box_rd_black_money_v2_x2', -- [B] กล่องสุ่มเงินแดง SS2
			-- 'box_rd_blackjob', -- [B] กล่องสุ่มงานดำ
			-- 'box_rd_blackjob_ss3_x2', -- [B] กล่องสุ่มงานดำ
			-- 'box_rd_blackjob_ss4_x2', -- [B] กล่องสุ่มงานดำ
			-- 'box_rd_blackjob_ss5_x2', -- [B] กล่องสุ่มงานดำ
			-- 'box_rd_blackjob_ss6_x2', -- [B] กล่องสุ่มงานดำ x2
			-- 'box_rd_blackjob_v2_x2', -- [B] กล่องสุ่มงานดำ SS2
			-- 'box_rd_blackjob_x2', -- [B] กล่องสุ่มงานดำ x2
			-- 'box_rd_blackmoney_ss3_x2', -- [B] กล่องสุ่มเงินแดง
			-- 'box_rd_blackmoney_ss4_x2', -- [B] กล่องสุ่มเงินแดง
			-- 'box_rd_blackmoney_ss5_x2', -- [B] กล่องสุ่มเงินแดง
			-- 'box_rd_blackmoney_ss6_x2', -- [B] กล่องสุ่มเงินแดง x2
			-- 'box_rd_carparts', -- [B] กล่องสุ่มชิ้นส่วนรถ
			-- 'box_rd_carparts_v2', -- [B] สุ่มชิ้นส่วนรถ SS2
			-- 'box_rd_cash', -- [B] กล่องสุ่มเงินเขียว
			-- 'box_rd_cash_ss3_x2', -- [B] สุ่มเงินเขียว
			-- 'box_rd_cash_ss4_x2', -- [B] สุ่มเงินเขียว
			-- 'box_rd_cash_ss5_x2', -- [B] สุ่มเงินเขียว
			-- 'box_rd_cash_ss6_x2', -- [B] กล่องสุ่มเงินเขียว x2
			-- 'box_rd_cash_v2_x2', -- [B] สุ่มเงินเขียว SS2
			-- 'box_rd_cash_x2', -- [B] กล่องสุ่มเงินเขียว x2
			-- 'box_rd_curby', -- [B] กล่องสุ่มแฟชั่นเคอร์บี้
			-- 'box_rd_drill_ss6_x2', -- [B] กล่องสุ่มสว่าน x2
			-- 'box_rd_fashion_dn', -- [B] กล่องสุ่มบัตรแฟชั่น
			-- 'box_rd_fashion_ss3_x2', -- [B] สุ่มบัตรแฟชั่น
			-- 'box_rd_fashion_ss4_x2', -- [B] สุ่มบัตรแฟชั่น
			-- 'box_rd_fashion_ss5_x2', -- [B] สุ่มบัตรแฟชั่น
			-- 'box_rd_fashion_ss6_x2', -- [B] สุ่มบัตรแฟชั่น
			-- 'box_rd_fashion_v2', -- [B] สุ่มบัตรแฟชั่น SS2
			-- 'box_rd_fashion_v2_x2', -- [B] สุ่มบัตรแฟชั่น SS2
			-- 'box_rd_fashion_veget', -- [B] กล่องสุ่มแฟชั่น
			-- 'box_rd_general', -- [B] กล่องสุ่ม General
			-- 'box_rd_general_ss3_x2', -- [B] สุ่ม General
			-- 'box_rd_general_ss4_x2', -- [B] สุ่ม General
			-- 'box_rd_general_ss5_x2', -- [B] สุ่ม General
			-- 'box_rd_general_ss6_x2', -- [B] กล่องสุ่ม general x2
			-- 'box_rd_general_v2_x2', -- [B] สุ่มแรร์ไอเท็ม SS2
			-- 'box_rd_general_x2', -- [B] กล่องสุ่ม General x2
			-- 'box_rd_gravel', -- [B] กล่องสุ่มกรวด
			-- 'box_rd_job', -- [B] กล่องสุ่มงานขาว
			-- 'box_rd_job_black_v2', -- [B] กล่องสุ่มงานดำ SS2
			-- 'box_rd_job_ss3_x2', -- [B] กล่องสุ่มงานขาว
			-- 'box_rd_job_ss4_x2', -- [B] กล่องสุ่มงานขาว
			-- 'box_rd_job_ss5_x2', -- [B] กล่องสุ่มงานขาว
			-- 'box_rd_job_ss6_x2', -- [B] กล่องสุ่มงานขาว x2
			-- 'box_rd_job_v2', -- [B] กล่องสุ่มงานขาว SS2
			-- 'box_rd_job_v2_x2', -- [B] กล่องสุ่มงานขาว SS2
			-- 'box_rd_job_x2', -- [B] กล่องสุ่มงานขาว x2
			-- 'box_rd_miner', -- [B] กล่องสุ่มแร่
			-- 'box_rd_miner_new', -- [B] กล่องสุ่มแร่ใหม่
			-- 'box_rd_miner_ss3_x2', -- [B] กล่องสุ่มแร่
			-- 'box_rd_miner_ss4_x2', -- [B] กล่องสุ่มแร่
			-- 'box_rd_miner_ss5_x2', -- [B] กล่องสุ่มแร่
			-- 'box_rd_miner_ss6_x2', -- [B] กล่องสุ่มแร่ x2
			-- 'box_rd_miner_v2', -- [B] กล่องสุ่มแร่ SS2
			-- 'box_rd_miner_v2_x2', -- [B] กล่องสุ่มแร่ SS2
			-- 'box_rd_miner_x2', -- [B] กล่องสุ่มแร่ x2
			-- 'box_rd_money_v2', -- [B] สุ่มเงินเขียว SS2
			-- 'box_rd_pain', -- [B] Painkiller Box
			-- 'box_rd_pain_x2', -- [B] Painkiller Box x2
			-- 'box_rd_part_ss3_x2', -- [B] กล่องสุ่มชิ้นส่วนรถ SS3
			-- 'box_rd_part_ss4_x2', -- [B] กล่องสุ่มชิ้นส่วนรถ SS4
			-- 'box_rd_part_ss5_x2', -- [B] กล่องสุ่มชิ้นส่วนรถ SS5
			-- 'box_rd_part_ss6_x2', -- [B] กล่องสุ่มชิ้นส่วนรถ x2
			-- 'box_rd_rare_ss3_x2', -- [B] กล่องสุ่มแรร์ไอเท็ม
			-- 'box_rd_rare_ss4_x2', -- [B] กล่องสุ่มแรร์ไอเท็ม
			-- 'box_rd_rare_ss5_x2', -- [B] กล่องสุ่มแรร์ไอเท็ม
			-- 'box_rd_sakura', -- [B] กล่องสุ่มซากุระ
			-- 'box_rd_sakura_ss3_x2', -- [B] กล่องสุ่มสว่าน
			-- 'box_rd_sakura_ss4_x2', -- [B] กล่องสุ่มสว่าน
			-- 'box_rd_sakura_ss5_x2', -- [B] กล่องสุ่มสว่าน
			-- 'box_rd_sakura_v2', -- [B] กล่องสุ่มซากุระ SS2
			-- 'box_rd_sakura_v2_x2', -- [B] กล่องสุ่มซากุระ SS2
			-- 'box_rd_sakura_x2', -- [B] กล่องสุ่มซากุระ x2
			-- 'box_rd_sakuracoin_ss6_x2', -- [B] กล่องสุ่มซากุระ x2
			-- 'box_red-crystal', -- [B] Red Crystal Pack
			-- 'box_safe', -- [B] กล่อง Safe Key
			-- 'box_set_1', -- [B] กล่องผู้เล่น 1 คน
			-- 'box_set_10', -- [B] กล่องผู้เล่น 10 คน
			-- 'box_set_11', -- [B] กล่องแก๊ง 11 คน
			-- 'box_set_11_gang', -- [B] ถุงสวัสดิการแก๊ง 11 คน
			-- 'box_set_15', -- [B] กล่องแก๊ง 15 คน 
			-- 'box_set_15_gang', -- [B] ถุงสวัสดิการแก๊ง 15 คน
			-- 'box_set_20', -- [B] กล่องแก๊ง 20 คน 
			-- 'box_set_20_gang', -- [B] ถุงสวัสดิการแก๊ง 20 คน
			-- 'box_set_3', -- [B] เซ็ตผู้เล่น 3 คน
			-- 'box_set_5', -- [B] เซ็ตผู้เล่น 5 คน
			-- 'box_set_begine', -- [B] Guardian {7days)
			-- 'box_set_vault', -- [B] กล่องชุดตีตู้
			-- 'box_steel', -- [B] กล่องแพ็คเหล็ก
			-- 'box_tenf2', -- [B] Miniren60 Promote
			-- 'box_tin', -- [B] กล่องเจด
			-- 'box_vip_fashion', -- [B] Fashion VIP Box
			-- 'box_vision', -- [B] Visione
			-- 'box_warset', -- [B] กล่องพร้อมรบ
			-- 'box_yellow-crystal', -- [B] Yellow Crystal Pack
			-- 'brawler_part', -- กล่องสุ่มชิ้นส่วน Brawler
			'bronze_gem', -- Bronze Gems
			-- 'btp_card_ss4', -- Battle Pass SS4
			-- 'btp_level_up_ss4', -- บ่ได้ใช้
			-- 'bugatti_box', -- [B] Bugatti Mini 300KG
			'busker', -- เปิดหมวก
			'bypasskeycard', -- Bypass Card
			'camera', -- Camera
			'candy', -- ลูกกวาด
			-- 'cap_x', -- CAP X
			-- 'cap_y', -- CAP Y
			-- 'cap_z', -- CAP Z
			-- 'car_part_body', -- โครงรถ Mini6
			-- 'car_part_engine', -- เครื่องยนต์ Mini6
			-- 'car_part_streer', -- พวงมาลัย Mini6
			-- 'car_part_wheel', -- ล้อ Mini6
			-- 'car_pr_body', -- โครงรถ Ratloader
			-- 'car_pr_engine', -- เครื่อง Ratloader
			-- 'car_pr_steering', -- พวงมาลัย  Ratloader
			-- 'car_pr_wheel', -- ล้อ  Ratloader
			-- 'car_shabudeercar', -- Deer Xmas
			-- 'car_shabuminixmas', -- Mini Xmas
			-- 'card_afk', -- [C] บัตร AFK
			-- 'card_brawler', -- บัตรแลกรถ Brawler
			-- 'card_craft_blueprint', -- [BP] บัตรตีบลูปริ้น
			-- 'card_fight_de', -- [C] ทำลายการ์ดนับไฟต์
			-- 'card_fight_up', -- [C] การ์ดนับไฟต์
			'card_rental', -- บัตรเช่ารถ
			-- 'card_rsx', -- บัตรแลกรถ RSX
			-- 'carpart_body_brawler', -- ชิ้นส่วน โครงรถ Brawler
			-- 'carpart_body_horse', -- ชิ้นส่วนหัวรถม้าซิ่ง {รถคอนเทนต์)
			-- 'carpart_body_rsx', -- ชิ้นส่วน โครงรถ RSX
			-- 'carpart_body_ss1', -- ชิ้นส่วน โครงรถ SS1
			-- 'carpart_body_ss2', -- ชิ้นส่วน โครงรถ SS2
			-- 'carpart_body_ss3', -- ชิ้นส่วน โครงรถ SS3
			-- 'carpart_body_ss4', -- ชิ้นส่วน โครงรถ SS4
			-- 'carpart_body_ss5', -- ชิ้นส่วน โครงรถ SS5
			-- 'carpart_body_ss6', -- ชิ้นส่วน โครงรถ SS6
			-- 'carpart_bugatimini_1', -- Jigsaw Bugatti 1
			-- 'carpart_bugatimini_2', -- Jigsaw Bugatti 2
			-- 'carpart_bugatimini_3', -- Jigsaw Bugatti 3
			-- 'carpart_bugatimini_4', -- Jigsaw Bugatti 4
			-- 'carpart_engine_brawler', -- ชิ้นส่วน เครื่องยนต์ Brawler
			-- 'carpart_engine_horse', -- ชิ้นส่วนเครื่องรถม้าซิ่ง {รถคอนเทนต์)
			-- 'carpart_engine_rsx', -- ชิ้นส่วน เครื่องยนต์ RSX
			-- 'carpart_engine_ss1', -- ชิ้นส่วน เครื่องยนต์ SS1
			-- 'carpart_engine_ss2', -- ชิ้นส่วน เครื่องยนต์ SS2
			-- 'carpart_engine_ss3', -- ชิ้นส่วน เครื่องยนต์ SS3
			-- 'carpart_engine_ss4', -- ชิ้นส่วน เครื่องยนต์ SS4
			-- 'carpart_engine_ss5', -- ชิ้นส่วน เครื่องยนต์ SS5
			-- 'carpart_engine_ss6', -- ชิ้นส่วน เครื่องยนต์ SS6
			-- 'carpart_steering_horse', -- ชิ้นส่วนแฮนด์รถม้าซิ่ง {รถคอนเทนต์)
			-- 'carpart_steering_ss2', -- ชิ้นส่วน พวงมาลัย SS2
			-- 'carpart_steering_ss3', -- ชิ้นส่วน พวงมาลัย SS3
			-- 'carpart_steering_ss4', -- ชิ้นส่วน พวงมาลัย SS4
			-- 'carpart_steering_ss5', -- ชิ้นส่วน พวงมาลัย SS5
			-- 'carpart_steering_ss6', -- ชิ้นส่วน พวงมาลัย SS6
			-- 'carpart_streering_brawler', -- ชิ้นส่วน พวงมาลัย Brawler
			-- 'carpart_streering_rsx', -- ชิ้นส่วน พวงมาลัย RSX
			-- 'carpart_streering_ss1', -- ชิ้นส่วน พวงมาลัย SS1
			-- 'carpart_train_1', -- Jigsaw Train  1
			-- 'carpart_train_2', -- Jigsaw Train 2
			-- 'carpart_train_3', -- Jigsaw Train  3
			-- 'carpart_train_4', -- Jigsaw Train  4
			-- 'carpart_wheel_brawler', -- ชิ้นส่วน ล้อ Brawler
			-- 'carpart_wheel_horse', -- ชิ้นส่วนล้อรถม้าซิ่ง {รถคอนเทนต์)
			-- 'carpart_wheel_rsx', -- ชิ้นส่วน ล้อ RSX
			-- 'carpart_wheel_ss1', -- ชิ้นส่วน ล้อ SS1
			-- 'carpart_wheel_ss2', -- ชิ้นส่วน ล้อ SS2
			-- 'carpart_wheel_ss3', -- ชิ้นส่วน ล้อ SS3
			-- 'carpart_wheel_ss4', -- ชื่นส่วน ล้อ SS4
			-- 'carpart_wheel_ss5', -- ชื่นส่วน ล้อ SS5
			-- 'carpart_wheel_ss6', -- ชื่นส่วน ล้อ SS6
			-- 'carpartsboxpromote', -- [B] Car Promote
			'cat_24_box', -- กล่องสุ่มแมว 24 ตัว
			-- 'cc_meeting', -- [C] CC meeting
			--'cement', -- ปูน
			'champagne', -- แชมเปญ
			-- 'check_500k_tr', -- เช็คแลกเงินเขียว 500,000
			'chipset', -- Chipset
			'chipset_shard', -- เศษ Chipset
			'coal', -- Coal
			'coil', -- Coil
			-- 'compensate_loss_bomber', -- กล่องชดเชย Bomber
			-- 'compensate_miner_1', -- กล่องชดเชยเศษแร่ [1]
			-- 'compensate_miner_20', -- กล่องชดเชยเศษแร่ [20]
			'contact_card', -- [C] บัตรโอนรถ
			'coo_katana_2', -- Coo Katana 2
			'cooldown_gang', -- [C] คูลดาวน์แก๊ง
			'cooldown_job', -- [C] คูลดาวน์หน่วยงาน
			'copper_gem', -- Cpper Gem
			'copperrod', -- คอปเปอร์
			'coreA', -- Core A
			'coreB', -- Core B
			'coreC', -- Core C
			'corsita', -- [B] Corsita
			'cotton', -- ฝ้าย
			'create_gang_card', -- [C] บัตรสร้างแก๊ง
			'create_vault_key', -- [C] บัตรสร้างตู้
			'crystal', -- Crystal
			'ctp_lose', -- CTP LOSE
			'ctp_win', -- CTP WIN
			'custom_box', -- กล่องแต่งรถ
			'cylinder', -- Cylinder
			'dango', -- ดังโงะ
			-- 'daruma_skin_shard', -- เศษสกินอาวุธดารุมะ
			-- 'dc_points', -- 5 Point
			'devil_key', -- Devil Key
			'diamond', -- เพชร
			'disbaned_card', -- [C] บัตรยุบแก๊ง
			'doll1', -- หมีฝ้าย
			-- 'door_fix', -- Door Fixed
			-- 'drill', -- Drill
			-- 'drill_gold', -- Drill Gold
			-- 'drug_a', -- ATP DRUGS {GANG)
			-- 'drug_a_fam', -- ATP DRUGS {FAM)
			-- 'drug_b', -- BNK DRUGS
			'e_beer', -- Beer
			--'elegy_bag', -- Elegy
			'emp_agen', -- EMP หน่วยงาน
			'emp_citizen', -- EMP
			'emp_shard', -- เศษ EMP
			'ev_a', -- A {Green)
			'ev_m', -- M {Green)
			'ev_s', -- S {Green)
			'ev_x', -- X {Green)
			--'family_card', -- [F] Family Armband
			-- 'fashion_card', -- [F] บัตรแฟชั่น
			-- 'fashion_card_donate', -- [F] บัตรแฟชั่นกาชา SS1
			-- 'fashion_card_donate_v2', -- [F] บัตรแฟชั่นกาชา SS2
			-- 'fashion_card_ss3', -- [F] บัตรแฟชั่น SS3
			-- 'fashion_card_ss4', -- [F] บัตรแฟชั่น SS4
			-- 'fashion_card_ss5', -- [F] บัตรแฟชั่น SS5
			-- 'fashion_card_ss6', -- [F] บัตรแฟชั่น SS6
			-- 'fashion_set_box', -- [B] Fashion Set Box
			-- 'fashion_t_card', -- [F] บัตรโอนแฟชั่น
			-- 'fashionbox', -- [B] Fashion Box
			-- 'fashionbox_ss2', -- [B] กล่อง Powerpuff Girl
			-- 'fashionbox_ss3', -- [B] Fashion SS3
			-- 'fashionbox_ss4', -- [B] Fashion SS4
			-- 'firework_1', -- ประทัดขนาดเล็ก
			-- 'firework_2', -- ประทัดขนาดกลาง
			-- 'firework_3', -- ประทัดขนาดใหญ่
			-- 'firework_4', -- ประทัดขนาดพิเศษ
			'pangsakura',
			'holy_water_bowl_songkran', -- น้ำมนต์
			'offerings_songkran',
			'cupid',
			'mat_songkran',
			'fish_bait', -- เหยื่อตกปลา
			'fish_eel', -- ปลาไหล
			'fish_rod_deep', -- เบ็ดตกปลาน้ำลึก
			'fish_saba', -- ปลาซาบะ
			'fish_salmon', -- ปลาแซลม่อน
			'fish_taro', -- ปลาทูน่า
			'fishingrod', -- เบ็ดตกปลา
			'fixkit', -- กล่องซ่อม
			'fontain_4', -- ประทัดขนาดพิเศษ2
			'food_melon_rice', -- ราเม็ง
			'food_rice_eel', -- กล่องอาหารเบนโตะ
			'fragment_amber', -- เศษ Amber
			'fragment_grimwood', -- เศษ Grimwood
			'gold_letter',
			'red_letter',
			'fragment_lapisz', -- เศษ Lapisz
			'fragment_netherite', -- เศษ Netherite
			'fragment_obisidian', -- เศษ Obisidian
			'fragment_ruby', -- เศษ Ruby
			'frame', -- Frame
			-- 'gacha_01', -- [B] Gachapong SS.1
			-- 'gacha_02', -- [B] Gachapon StarterPack
			-- 'gacha_03', -- [B] Gacha 03
			-- 'gacha_04', -- [B] Gacha 04
			-- 'gacha_05', -- [B] Gacha 05
			-- 'gacha_newplayer', -- [B] กาชาผู้เล่นใหม่
			-- 'gachapon_sakura_ss2', -- [B] Gachapon SS2
			-- 'gachapon_sakura_starter_ss2', -- [B] Gachapon StarterPack SS2
			-- 'gachapon_ss3_prirate', -- [B] Gachapon Pirate
			-- 'gachapon_ss4_prirate', -- [B] Gachapon Bento
			-- 'gachapon_ss5_halloween', -- [B] Gachapon Halloween
			-- 'gachapon_ss6_xmas', -- Gachapon Xmas
			-- 'gang_story', -- [F] Gang Story
			'gear', -- Gear
			'gold_gem', -- Gold Gems
			'goldbar', -- แท่งทองคำ
			'golduni', -- Gold Uni
			'gps_jam', -- GPS Jammer
			'grap', -- รังผึ้ง
			'gravel', -- กรวด
			'green_tea', -- น้ำฟักทอง
			'grim_wood', -- Grimwood
			'grip', -- Grip
			'guntrigger', -- Gun Trigger
			'gypsum', -- ยิปซั่ม
			-- 'horse', -- ม้า
			-- 'house_key_10_vault', -- Safe House 10
			-- 'house_key_1_vault', -- Safe House 1
			'house_key_201_apartment', -- Safe Apartment 105
			'house_key_202_apartment', -- Safe Apartment 106
			'house_key_203_apartment', -- Safe Apartment 301
			'house_key_204_apartment', -- Safe Apartment 202
			'house_key_205_apartment', -- Safe Apartment 101
			'house_key_206_apartment', -- Safe Apartment 203
			'house_key_207_apartment', -- Safe Apartment 104
			'house_key_208_apartment', -- Safe Apartment 204
			'house_key_209_apartment', -- Safe Apartment 201
			'house_key_211_apartment', -- Safe Apartment 102
			'house_key_212_apartment', -- Safe Apartment 206
			'house_key_213_apartment', -- Safe Apartment 103
			-- 'house_key_2_vault', -- Safe House 2
			-- 'house_key_3_vault', -- Safe House 3
			-- 'house_key_4_vault', -- Safe House 4
			-- 'house_key_5_vault', -- Safe House 5
			-- 'house_key_6_vault', -- Safe House 6
			-- 'house_key_7_vault', -- Safe House 7
			-- 'house_key_8_vault', -- Safe House 8
			-- 'house_key_9_vault', -- Safe House 9
			'hyperloop_shard', -- เศษ Hyperloop
			'ipad', -- iPad
			'ipad_ambulance', -- Ambulance Manage
			'ipad_council', -- iPad Council
			'ipad_police', -- iPad Police
			'job_pack_a', -- แพ็คน้ำผลไม้
			'join_gang_card', -- [C] บัตรเข้าแก๊ง
			'jugular', -- Jugular
			'katom', -- กระท่อม
			'katom_pro', -- กระท่อมแพ็ค
			'key_ghost', -- คีมงัดร้าน
			'khom', -- โคม
			'krathong', -- กระทง
			'krieger', -- Krieger
			'lapis', -- Lapis
			'leave_gang_card', -- บัตรออกแก๊ง
			'lockpick', -- ที่ปลดกุญแจมือ
			'marble', -- ลูกแก้ว
			'medic_pass', -- Medic Pass
			'medic_ticket', -- Medic Ticket
			'card_revive', -- Card Revive
			'medicarmband1', -- ผู้อำนวยการ
			'medicarmband2', -- เลขา
			'medicarmband3', -- รองผู้อำนวยการ
			'medicarmband4', -- หัวหน้ากะ
			'medicarmband5', -- แพทย์ชำนาญการ
			'medicarmband6', -- แพทย์
			'medicarmband7', -- นักเรียนแพทย์
			'medicarmband8', -- แพทย์ฝึกหัด
			'medikit', -- กล่องปฐมพยาบาล
			'melon', -- น้ำเมล่อน
			'melon_tree', -- เมล่อน
			'milkshake_ticket', -- Ticket Milkshake
			'milkshake_ticketx5', -- Ticket Milkshake x5 {กดใช้)
			--'moodengbox', -- กล่องสุ่มหมูเด้ง
			'mre', -- MRE
			'msmap', -- MS Map
			'mushroom', -- เห็ดชิทาเกะ
			'mushroom_c', -- Mushroom
			'mushroomprocess', -- Mushroom Process
			'mutcha', -- ฟักทองแพ็ค
			'muzzle', -- Muzzle
			'needle', -- เข็ม
			'nitrogen', -- Nitrogen
			'obsidian', -- Obsidian
			'octopus_bait', -- เหยื่อหมึก
			--'offerings', -- เครื่องเซ่นไหว้
			--'open_fmj', -- FMJ { 15 วัน ) 
			'painkiller', -- Painkiller
			'painkiller_medic', -- เข็มฉีดยาหมอ
			'part_veget_1', -- เห็ด
			'part_veget_2', -- กะหล่ำปลี
			'part_veget_3', -- แครอท
			--'paycheck_card', -- [C] Paycheck Card
			-- 'piggydoll', -- [F] piggydoll
			-- 'piggyhead', -- [F] piggyhead
			-- 'piggyshoesleft', -- [F] piggyshoesleft
			-- 'piggyshoesright', -- [F] piggyshoesright
			'platinum_gem', -- Platinum Gems
			-- 'point_donate_ss3', -- Point Donate SS3
			-- 'police_armband_1', -- [F] ปลอกแขนจ่า
			-- 'police_armband_10', -- [F] ปลอกแขนหมวด
			-- 'police_armband_2', -- [F] ปลอกแขนดาบ
			-- 'police_armband_3', -- [F] ปลอกแขนนักเรียนตำรวจ
			-- 'police_armband_4', -- [F] ปลอกแขนนายสิบ
			-- 'police_armband_5', -- [F] ปลอกแขนผู้กอง
			-- 'police_armband_6', -- [F] ปลอกแขนผู้กำกับ
			-- 'police_armband_7', -- [F] ปลอกแขนรองผบและผบ
			-- 'police_armband_8', -- [F] ปลอกแขนรองผู้กำกับ
			-- 'police_armband_9', -- [F] ปลอกแขนสารวัตร
			-- 'policearmband1', -- police Master
			-- 'policearmband2', -- police STAFF
			-- 'policearmband3', -- police TRAINNEE
			-- 'policearmband4', -- police SPECIAL
			-- 'policearmband5', -- police LEADER
			-- 'policearmband6', -- police SENOIR
			-- 'pony_box', -- [B] รถมอไซค์ Pony
			-- 'preview', -- PREVIEW
			'pumpkin', -- ฟักทอง
			'quick', -- พอต
			'radio_job', -- วอหน่วยงาน
			'red-crystal', -- Red Crystal
			'red_a', -- A {Red)
			'red_m', -- M {Red)
			'red_s', -- S {Red)
			'red_x', -- X {Red)
			'rename_card', -- บัตรเปลี่ยนชื่อ
			'rice', -- ข้าวญี่ปุ่น
			'ricepro', -- น้ำข้าว
			'ring', -- แหวน
			'rsx_part', -- กล่องสุ่มชิ้นส่วน RSX
			'ruby', -- Ruby
			'sakura-crystal', -- Sakura Crystal
			-- 'sakura-wisdom-gold-ss5-twbox', -- Wisdom Gold  Twitter BOX
			-- 'sakura-wisdom-silver-ss5-twbox', -- Wisdom Silver  Twitter BOX
			'sakura_coin', -- SAKURA
			'sakura_skin_shard', -- เศษสกินอาวุธ Sakura
			'sakura_war_set', -- Sakura War Set
			'sandymap', -- Sandy Mission
			'sapphire', -- Sapphire
			'scancard', -- บัตรสแกน
			'scel', -- กล่องซ่อมตู้ไฟฟ้า
			--'scepter', -- คทา
			--'set_blueprint', -- [B] กล่องชุดตีบลูปริ้นท์
			--'seven70_box', -- [B] Seven70 Box
			'shrimp', -- กุ้งแดง
			--'silver_gem', -- Silver Gems
			--'skateboard', -- สเก็ตบอร์ด
			--'skin_rd_part_veget', -- [B] กล่องสุ่มชิ้นส่วนสกินผัก
			'snockle_job', -- เครื่องดำน้ำหน่วยงาน
			-- 'starterpack_fashion_ss3', -- [SP] Starter Fashion SS3
			-- 'starterpack_fashion_ss4', -- [SP] Starter Fashion SS4
			-- 'starterpack_fashion_ss5', -- [SP] Starter Fashion SS5
			-- 'starterpack_fashion_ss6_l', -- [SP] Starter Fashion SS6 L
			-- 'starterpack_fashion_ss6_xl', -- [SP] Starter Fashion SS6 XL
			-- 'starterpack_fashion_ss7', -- [SP] Starter Fashion SS7
			'steel', -- เหล็ก
			'stone_p', -- หิน
			'strawberry', -- สตอเบอรี่
			'take2_card', -- บัตร Take 2
			-- 'team_a', -- ปลอกแขน A
			-- 'team_b', -- ปลอกแขน B
			-- 'ticket_blackmoney_100k', -- ตั๋วแลกเงินแดง 100,000
			-- 'ticket_blackmoney_10k', -- ตั๋วแลกเงินแดง 10,000
			-- 'ticket_blackmoney_1k', -- ตั๋วแลกเงินแดง 1,000
			'tin', -- เจด
			'tofu', -- พริก
			--'train_box', -- [B] Train Mini 300KG 
			'treebon', -- ต้นบอนไซ
			--'trophytruck', -- Trophy Truck
			--'twitter_fuji', -- [TW] Fuji Twitter
			'uni', -- Unii
	
			'vibranium', -- ไวเบรเนี่ยม

			'wakamei_seaweed', -- น้ำมะเขือเทศ
			'wakamei_tree', -- มะเขือเทศ
			'wasabi', -- น้ำแครอท
			'wasabi_tree', -- แครอท

			'weed', -- กัญชา
			'weed_pro', -- กัญชาแพ็ค
			'wizard_book', -- คัมภีร์พ่อมด
			'wood_bon', -- แท่งไม้บอนไซ
			'yellow-crystal', -- Yellow Crystal
			'yuzu_orange', -- ส้ม
			'chipset',
			'cupid',
			'cracker',


		}
	},
	give = {					-- การ "มอบ" สิ่งของต่างๆ
		type = 'whitelist',
		list = {
			'color_blue',
			'color_green',
			'color_orange',
			'color_purple',
			'color_red',
			'color_yellow',
			'box_part_ring_rainbow',
			'box_part_skin_panda',
			'box_part_skin_swag',
			'skin_ambulance',
			'bandage_pack_30',
			'pangsakura',
			'paper',
			'starterpack_fashion_ss10',
			'hakuchoupart4',
			'hakuchoupart3',
			'hakuchoupart2',
			'hakuchoupart1',
			'truckpart4',
			'truckpart3',
			'truckpart2',
			'truckpart1',
			'sakubox',
			'snoopybox',
			'hakuchourandomparts',
			'shorttruckrandomparts',
			'dynamite_gang',
			'starterpack_fashion_ss9',
			'cupid',
			'gold_letter',
			'red_letter',
			-- '12gauge', -- กระสุนลูกซองยาง
			'Kingboxs', -- King Box
			'Netherite', -- Netherite
			'Phone', -- โทรศัพท์
			'Reddot', -- Reddot
			'SteelScrap', -- เศษเหล็ก
			'XMAS_BOX', -- [B] Xmas Box Green
			'XMAS_BOX_RED', -- [B] Xmas Box Red
			-- 'acc_a1_hks_armband_evo', -- [F] Armband 1
			-- 'acc_a2_hks_armband_evo', -- [F] Armband 2
			-- 'acc_a3_hks_armband_evo', -- [F] Armband 3
			-- 'acc_a4_hks_armband_evo', -- [F] Armband 4
			-- 'acc_a5_hks_armband_evo', -- [F] Armband 5
			-- 'acc_a6_hks_armband_evo', -- [F] Armband 6
			'acc_a7_hks_armband_evo', -- [F] Armband 7
			-- 'acc_a8_hks_armband_evo', -- [F] Armband 8
			-- 'admin_cloth', -- bypassชุดแอดมิน
			-- 'admin_prop', -- ADMIN PROP
			-- 'admin_skin', -- สูท ADMIN 3
			-- 'admin_skin_2', -- สูท ADMIN 4
			-- 'adminarmband1', -- armband ADMIN
			-- 'admincamera', -- Camera Admin
			'aed', -- AED
			'afk_bonus', -- AFK Bonus
			'afk_coin', -- AFK COIN
			'agen_coin', -- Agency Coin
			-- 'aidenta_summer_duck', -- [F] Summer Desk
			-- 'aidenta_summer_float', -- [F] Summer Float
			-- 'aidenta_summer_flower', -- [F] Summer Flower
			-- 'aidenta_summer_shoes_l', -- [F] Summer Shoes {Left)
			-- 'aidenta_summer_shoes_r', -- [F] Summer Shoes {Right)
			'alpaca_baby', -- ลูกหมูเด้ง
			'alpaca_father', -- พ่อหมูเด้ง
			'alpaca_feed', -- อาหารหมูเด้ง
			'amber', -- Amber
			'ammo', -- Ammo
			'anti-potion', -- Anti-potion
			'anti_dead', -- บัตรประกันอาวุธ
			'apartment_key_201', -- อพาร์ทเม้นท์ 105
			'apartment_key_202', -- อพาร์ทเม้นท์ 106
			'apartment_key_203', -- อพาร์ทเม้นท์ 301
			'apartment_key_204', -- อพาร์ทเม้นท์ 202
			'apartment_key_205', -- อพาร์ทเม้นท์ 101
			'apartment_key_206', -- อพาร์ทเม้นท์ 203
			'apartment_key_207', -- อพาร์ทเม้นท์ 104
			'apartment_key_208', -- อพาร์ทเม้นท์ 204
			'apartment_key_209', -- อพาร์ทเม้นท์ 201
			'apartment_key_210', -- อพาร์ทเม้นท์ 205
			'apartment_key_211', -- อพาร์ทเม้นท์ 102
			'apartment_key_212', -- อพาร์ทเม้นท์ 206
			'apartment_key_213', -- อพาร์ทเม้นท์ 103
			'armor', -- Armor
			'b_bag_allnew', -- Allnew ถาวร
			'b_bag_gokart', -- Gokart ถาวร
			'b_bag_khomloy', -- รถโคม ถาวร
			'b_bag_tuktuk', -- รถตุ๊กๆ ถาวร
			'b_bag_wave', -- รถมอไซค์ 125 ถาวร
			'b_bag_wave125', -- รถมอไซค์ 110s ถาวร
			'bag_allnew', -- รถ Allnew
			'bag_benefit_10', -- [B] ถุงสวัสดิการครอบครัว 10  คน
			'bag_benefit_10_new', -- [B] ถุงครอบครัว 10 คน
			-- 'bag_benefit_11', -- [B] ถุงสวัสดิการแก๊ง 11 คน {เลิกใช้)
			-- 'bag_benifit_15', -- [B] ถุงสวัสดิการแก๊ง 15 คน {เลิกใช้)
			-- 'bag_benifit_20', -- [B] ถุงสวัสดิการแก๊ง 20 คน {เลิกใช้)
			'bag_caracara', -- [B] Caracara 200KG 30 วัน
			'bag_card_bp', -- [B] ซองการ์ดบลูปริ้น
			'bag_cash', -- [B] เงิน 10k Yen
			'bag_garduian', -- [B] Guardian 100KG 30 วัน
			'bag_gokart', -- รถ Gokart
			'bag_horse', -- ถุงม้า
			'bag_khomloy', -- รถโคมลอย
			'bag_lynx', -- [B] Lynx
			'bag_pariah', -- [B] Pariah
			'bag_pr_ratloader2', -- [B]  Ratloader 300 KG
			'bag_sugoi', -- [B] Sugoi
			'bag_tesla', -- [B] Tesla Roadster
			'bag_tuktuk', -- รถตุ๊กๆ
			'bag_wave', -- รถมอไซค์ 125
			'bag_wave125', -- รถมอไซค์ 110s
			'bag_weapon_dagger', -- [B] ซองอาวุธ มีด DAGGER
			'bag_weapon_knife', -- [B] ซองอาวุธ มีด M9
			'bag_weapon_poolcue', -- [B] ซองอาวุธ ไม้พลู
			'bandage', -- Bandage
			'bank_bomb', -- C4
			'bank_drill', -- Bank's Drill
			'barrel', -- Barrel
			'bax_rd_aed', -- [B] กล่องสุ่มAED
			'bax_rd_aed_x2', -- [B] กล่องสุ่มAED  x2
			'bits', -- Bits
			'black-crystal', -- Black Crystal
			'black_powder', -- Black Powder
			'black_vibranium', -- Black Viberium
			'blue-crystal', -- Blue Crystal
			'boat_trade_card', -- บัตรโอนเรือ
			'bodybag', -- ถุงห่อศพ
			-- 'boombox', -- ลำโพง
			'box_aed', -- [B] กล่อง AED x100
			'box_aed_50', -- [B] กล่อง AED x50
			'box_armor', -- [B] กล่องเกราะ x100
			'box_armor_50', -- [B] กล่องเกราะ x50
			'box_black_money', -- [B] กล่องสุ่มเงินแดง
			'box_black_money_x2', -- [B] กล่องสุ่มเงินแดง x2
			'box_blue-crystal', -- [B] Blue Crystal Pack
			'box_bonsai', -- [B] กล่องไม้บอนไซ
			'box_car_promote', -- [B] Car Promote {300 KG)
			'box_car_rent_3_a', -- กล่องรถ Surano 3 Day
			'box_car_rent_3_b', -- กล่องรถ Novak 3 Day
			'box_carpart_train', -- [B] กล่องสุ่มชิ้นส่วนรถไฟปู๊นปู๊น
			'box_cement', -- [B] กล่องแพ็คปูน
			'box_comet', -- [B] Comet {7 Days)
			'box_copper', -- [B] กล่องคอปเปอร์
			'box_craft_vibrenium', -- [B] กล่องชุดตีไวเบ
			'box_craft_weapon', -- [B] กล่องตีอาวุธ
			'box_diamond', -- [B] กล่องแพ็คเพชร
			'box_farm_x2', -- [B] กล่องฟาร์ม x2
			'box_gem', -- [B] Gems Box
			'box_gold', -- [B] กล่องแพ็คทอง
			'box_gravel', -- [B] กล่องแพ็คกรวด
			'box_item_12', -- [B] กล่องรวมมิตร
			'box_mc', -- [B] กล่อง MC
			'box_pain', -- [B] กล่องเพน x100
			'box_pain_50', -- [B] กล่องเพน x50
			'box_part_bugatimini', -- [B] กล่องสุ่มชิ้นส่วนรถซิ่งบูกาติมินิ
			'box_rd_aed_ss3_x2', -- [B] กล่องสุ่ม AED
			'box_rd_aed_ss4_x2', -- [B] กล่องสุ่ม AED
			'box_rd_aed_ss5_x2', -- [B] กล่องสุ่ม AED
			'box_rd_aed_v2', -- [B] กล่องสุ่มAED SS2
			'box_rd_aed_v2_x2', -- [B] กล่องสุ่มAED SS2
			'box_rd_afk', -- [B] กล่องสุ่มเหรียญ AFK
			'box_rd_afk_2', -- [B] กล่องสุ่มเหรียญ AFK SS2
			'box_rd_afk_2_x2', -- [B] กล่องสุ่มเหรียญ AFK SS2
			'box_rd_afk_ss3_x2', -- [B] กล่องสุ่มเหรียญ AFK
			'bandage_pack_30',
			'box_rd_afk_ss4_x2', -- [B] กล่องสุ่มเหรียญ AFK
			'box_rd_afk_ss5_x2', -- [B] กล่องสุ่มเหรียญ AFK
			'box_rd_afk_x2', -- [B] กล่องสุ่มเหรียญ AFK x2
			'box_rd_armor', -- [B] กล่องสุ่มเกราะ
			'box_rd_armor_ss3_x2', -- [B] กล่องสุ่มของ Story
			'box_rd_armor_ss4_x2', -- [B] กล่องสุ่มของ Story
			'box_rd_armor_ss5_x2', -- [B] กล่องสุ่มของ Story
			'box_rd_armor_ss6_x2', -- [B] กล่องสุ่มเกราะ x2
			'box_rd_armor_v2', -- [B] กล่องสุ่มเกราะ SS2
			'box_rd_armor_v2_x2', -- [B] กล่องสุ่มเกราะ SS2
			'box_rd_armor_x2', -- [B] กล่องสุ่มเกราะ x2
			'box_rd_black_money_v2', -- [B] กล่องสุ่มเงินแดง SS2
			'box_rd_black_money_v2_x2', -- [B] กล่องสุ่มเงินแดง SS2
			'box_rd_blackjob', -- [B] กล่องสุ่มงานดำ
			'box_rd_blackjob_ss3_x2', -- [B] กล่องสุ่มงานดำ
			'box_rd_blackjob_ss4_x2', -- [B] กล่องสุ่มงานดำ
			'box_rd_blackjob_ss5_x2', -- [B] กล่องสุ่มงานดำ
			'box_rd_blackjob_ss6_x2', -- [B] กล่องสุ่มงานดำ x2
			'box_rd_blackjob_v2_x2', -- [B] กล่องสุ่มงานดำ SS2
			'box_rd_blackjob_x2', -- [B] กล่องสุ่มงานดำ x2
			'box_rd_blackmoney_ss3_x2', -- [B] กล่องสุ่มเงินแดง
			'box_rd_blackmoney_ss4_x2', -- [B] กล่องสุ่มเงินแดง
			'box_rd_blackmoney_ss5_x2', -- [B] กล่องสุ่มเงินแดง
			'box_rd_blackmoney_ss6_x2', -- [B] กล่องสุ่มเงินแดง x2
			'box_rd_carparts', -- [B] กล่องสุ่มชิ้นส่วนรถ
			'box_rd_carparts_v2', -- [B] สุ่มชิ้นส่วนรถ SS2
			'box_rd_cash', -- [B] กล่องสุ่มเงินเขียว
			'box_rd_cash_ss3_x2', -- [B] สุ่มเงินเขียว
			'box_rd_cash_ss4_x2', -- [B] สุ่มเงินเขียว
			'box_rd_cash_ss5_x2', -- [B] สุ่มเงินเขียว
			'box_rd_cash_ss6_x2', -- [B] กล่องสุ่มเงินเขียว x2
			'box_rd_cash_v2_x2', -- [B] สุ่มเงินเขียว SS2
			'box_rd_cash_x2', -- [B] กล่องสุ่มเงินเขียว x2
			'box_rd_curby', -- [B] กล่องสุ่มแฟชั่นเคอร์บี้
			'box_rd_drill_ss6_x2', -- [B] กล่องสุ่มสว่าน x2
			'box_rd_fashion_dn', -- [B] กล่องสุ่มบัตรแฟชั่น
			'box_rd_fashion_ss3_x2', -- [B] สุ่มบัตรแฟชั่น
			'box_rd_fashion_ss4_x2', -- [B] สุ่มบัตรแฟชั่น
			'box_rd_fashion_ss5_x2', -- [B] สุ่มบัตรแฟชั่น
			'box_rd_fashion_ss6_x2', -- [B] สุ่มบัตรแฟชั่น
			'box_rd_fashion_v2', -- [B] สุ่มบัตรแฟชั่น SS2
			'box_rd_fashion_v2_x2', -- [B] สุ่มบัตรแฟชั่น SS2
			'box_rd_fashion_veget', -- [B] กล่องสุ่มแฟชั่น
			'box_rd_general', -- [B] กล่องสุ่ม General
			'box_rd_general_ss3_x2', -- [B] สุ่ม General
			'box_rd_general_ss4_x2', -- [B] สุ่ม General
			'box_rd_general_ss5_x2', -- [B] สุ่ม General
			'box_rd_general_ss6_x2', -- [B] กล่องสุ่ม general x2
			'box_rd_general_v2_x2', -- [B] สุ่มแรร์ไอเท็ม SS2
			'box_rd_general_x2', -- [B] กล่องสุ่ม General x2
			'box_rd_gravel', -- [B] กล่องสุ่มกรวด
			'box_rd_job', -- [B] กล่องสุ่มงานขาว
			'box_rd_job_black_v2', -- [B] กล่องสุ่มงานดำ SS2
			'box_rd_job_ss3_x2', -- [B] กล่องสุ่มงานขาว
			'box_rd_job_ss4_x2', -- [B] กล่องสุ่มงานขาว
			'box_rd_job_ss5_x2', -- [B] กล่องสุ่มงานขาว
			'box_rd_job_ss6_x2', -- [B] กล่องสุ่มงานขาว x2
			'box_rd_job_v2', -- [B] กล่องสุ่มงานขาว SS2
			'box_rd_job_v2_x2', -- [B] กล่องสุ่มงานขาว SS2
			'box_rd_job_x2', -- [B] กล่องสุ่มงานขาว x2
			'box_rd_miner', -- [B] กล่องสุ่มแร่
			'box_rd_miner_new', -- [B] กล่องสุ่มแร่ใหม่
			'box_rd_miner_ss3_x2', -- [B] กล่องสุ่มแร่
			'box_rd_miner_ss4_x2', -- [B] กล่องสุ่มแร่
			'box_rd_miner_ss5_x2', -- [B] กล่องสุ่มแร่
			'box_rd_miner_ss6_x2', -- [B] กล่องสุ่มแร่ x2
			'box_rd_miner_v2', -- [B] กล่องสุ่มแร่ SS2
			'box_rd_miner_v2_x2', -- [B] กล่องสุ่มแร่ SS2
			'box_rd_miner_x2', -- [B] กล่องสุ่มแร่ x2
			'box_rd_money_v2', -- [B] สุ่มเงินเขียว SS2
			'box_rd_pain', -- [B] Painkiller Box
			'box_rd_pain_x2', -- [B] Painkiller Box x2
			'box_rd_part_ss3_x2', -- [B] กล่องสุ่มชิ้นส่วนรถ SS3
			'box_rd_part_ss4_x2', -- [B] กล่องสุ่มชิ้นส่วนรถ SS4
			'box_rd_part_ss5_x2', -- [B] กล่องสุ่มชิ้นส่วนรถ SS5
			'box_rd_part_ss6_x2', -- [B] กล่องสุ่มชิ้นส่วนรถ x2
			'box_rd_rare_ss3_x2', -- [B] กล่องสุ่มแรร์ไอเท็ม
			'box_rd_rare_ss4_x2', -- [B] กล่องสุ่มแรร์ไอเท็ม
			'box_rd_rare_ss5_x2', -- [B] กล่องสุ่มแรร์ไอเท็ม
			'box_rd_sakura', -- [B] กล่องสุ่มซากุระ
			'box_rd_sakura_ss3_x2', -- [B] กล่องสุ่มสว่าน
			'box_rd_sakura_ss4_x2', -- [B] กล่องสุ่มสว่าน
			'box_rd_sakura_ss5_x2', -- [B] กล่องสุ่มสว่าน
			'box_rd_sakura_v2', -- [B] กล่องสุ่มซากุระ SS2
			'box_rd_sakura_v2_x2', -- [B] กล่องสุ่มซากุระ SS2
			'box_rd_sakura_x2', -- [B] กล่องสุ่มซากุระ x2
			'box_rd_sakuracoin_ss6_x2', -- [B] กล่องสุ่มซากุระ x2
			'box_red-crystal', -- [B] Red Crystal Pack
			'box_safe', -- [B] กล่อง Safe Key
			'box_set_1', -- [B] กล่องผู้เล่น 1 คน
			'box_set_10', -- [B] กล่องผู้เล่น 10 คน
			'box_set_11', -- [B] กล่องแก๊ง 11 คน
			'box_set_11_gang', -- [B] ถุงสวัสดิการแก๊ง 11 คน
			'box_set_15', -- [B] กล่องแก๊ง 15 คน 
			'box_set_15_gang', -- [B] ถุงสวัสดิการแก๊ง 15 คน
			'box_set_20', -- [B] กล่องแก๊ง 20 คน 
			'box_set_20_gang', -- [B] ถุงสวัสดิการแก๊ง 20 คน
			'box_set_3', -- [B] เซ็ตผู้เล่น 3 คน
			'box_set_5', -- [B] เซ็ตผู้เล่น 5 คน
			'box_set_begine', -- [B] Guardian {7days)
			'box_set_vault', -- [B] กล่องชุดตีตู้
			'box_steel', -- [B] กล่องแพ็คเหล็ก
			'box_tenf2', -- [B] Miniren60 Promote
			'box_tin', -- [B] กล่องเจด
			'box_vip_fashion', -- [B] Fashion VIP Box
			'box_vision', -- [B] Visione
			'box_warset', -- [B] กล่องพร้อมรบ
			'box_yellow-crystal', -- [B] Yellow Crystal Pack
			'brawler_part', -- กล่องสุ่มชิ้นส่วน Brawler
			'bronze_gem', -- Bronze Gems
			'squid_coupon', -- คูปองปลาหมึก
			'square', -- Square
			'triangle', -- Triangle
			'round', -- Round
			'buff_potion',
			-- 'btp_card_ss4', -- Battle Pass SS4
			-- 'btp_level_up_ss4', -- บ่ได้ใช้
			'bugatti_box', -- [B] Bugatti Mini 300KG
			'busker', -- เปิดหมวก
			'bypasskeycard', -- Bypass Card
			'camera', -- Camera
			'candy', -- ลูกกวาด
			'cap_x', -- CAP X
			'cap_y', -- CAP Y
			'cap_z', -- CAP Z
			'car_part_body', -- โครงรถ Mini6
			'car_part_engine', -- เครื่องยนต์ Mini6
			'car_part_streer', -- พวงมาลัย Mini6
			'car_part_wheel', -- ล้อ Mini6
			'car_pr_body', -- โครงรถ Ratloader
			'car_pr_engine', -- เครื่อง Ratloader
			'car_pr_steering', -- พวงมาลัย  Ratloader
			'car_pr_wheel', -- ล้อ  Ratloader
			'car_shabudeercar', -- Deer Xmas
			'car_shabuminixmas', -- Mini Xmas
			'card_afk', -- [C] บัตร AFK
			'card_brawler', -- บัตรแลกรถ Brawler
			'card_craft_blueprint', -- [BP] บัตรตีบลูปริ้น
			'card_fight_de', -- [C] ทำลายการ์ดนับไฟต์
			'card_fight_up', -- [C] การ์ดนับไฟต์
			'card_rental', -- บัตรเช่ารถ
			'card_rsx', -- บัตรแลกรถ RSX
			'carpart_body_brawler', -- ชิ้นส่วน โครงรถ Brawler
			'carpart_body_horse', -- ชิ้นส่วนหัวรถม้าซิ่ง {รถคอนเทนต์)
			'carpart_body_rsx', -- ชิ้นส่วน โครงรถ RSX
			'carpart_body_ss1', -- ชิ้นส่วน โครงรถ SS1
			'carpart_body_ss2', -- ชิ้นส่วน โครงรถ SS2
			'carpart_body_ss3', -- ชิ้นส่วน โครงรถ SS3
			'carpart_body_ss4', -- ชิ้นส่วน โครงรถ SS4
			'carpart_body_ss5', -- ชิ้นส่วน โครงรถ SS5
			'carpart_body_ss6', -- ชิ้นส่วน โครงรถ SS6
			'carpart_bugatimini_1', -- Jigsaw Bugatti 1
			'carpart_bugatimini_2', -- Jigsaw Bugatti 2
			'carpart_bugatimini_3', -- Jigsaw Bugatti 3
			'carpart_bugatimini_4', -- Jigsaw Bugatti 4
			'carpart_engine_brawler', -- ชิ้นส่วน เครื่องยนต์ Brawler
			'carpart_engine_horse', -- ชิ้นส่วนเครื่องรถม้าซิ่ง {รถคอนเทนต์)
			'carpart_engine_rsx', -- ชิ้นส่วน เครื่องยนต์ RSX
			'carpart_engine_ss1', -- ชิ้นส่วน เครื่องยนต์ SS1
			'carpart_engine_ss2', -- ชิ้นส่วน เครื่องยนต์ SS2
			'carpart_engine_ss3', -- ชิ้นส่วน เครื่องยนต์ SS3
			'carpart_engine_ss4', -- ชิ้นส่วน เครื่องยนต์ SS4
			'carpart_engine_ss5', -- ชิ้นส่วน เครื่องยนต์ SS5
			'carpart_engine_ss6', -- ชิ้นส่วน เครื่องยนต์ SS6
			'carpart_steering_horse', -- ชิ้นส่วนแฮนด์รถม้าซิ่ง {รถคอนเทนต์)
			'carpart_steering_ss2', -- ชิ้นส่วน พวงมาลัย SS2
			'carpart_steering_ss3', -- ชิ้นส่วน พวงมาลัย SS3
			'carpart_steering_ss4', -- ชิ้นส่วน พวงมาลัย SS4
			'carpart_steering_ss5', -- ชิ้นส่วน พวงมาลัย SS5
			'carpart_steering_ss6', -- ชิ้นส่วน พวงมาลัย SS6
			'carpart_streering_brawler', -- ชิ้นส่วน พวงมาลัย Brawler
			'carpart_streering_rsx', -- ชิ้นส่วน พวงมาลัย RSX
			'carpart_streering_ss1', -- ชิ้นส่วน พวงมาลัย SS1
			'carpart_train_1', -- Jigsaw Train  1
			'carpart_train_2', -- Jigsaw Train 2
			'carpart_train_3', -- Jigsaw Train  3
			'carpart_train_4', -- Jigsaw Train  4
			'carpart_wheel_brawler', -- ชิ้นส่วน ล้อ Brawler
			'carpart_wheel_horse', -- ชิ้นส่วนล้อรถม้าซิ่ง {รถคอนเทนต์)
			'carpart_wheel_rsx', -- ชิ้นส่วน ล้อ RSX
			'carpart_wheel_ss1', -- ชิ้นส่วน ล้อ SS1
			'carpart_wheel_ss2', -- ชิ้นส่วน ล้อ SS2
			'carpart_wheel_ss3', -- ชิ้นส่วน ล้อ SS3
			'carpart_wheel_ss4', -- ชื่นส่วน ล้อ SS4
			'carpart_wheel_ss5', -- ชื่นส่วน ล้อ SS5
			'carpart_wheel_ss6', -- ชื่นส่วน ล้อ SS6
			'carpartsboxpromote', -- [B] Car Promote
			'cat_24_box', -- กล่องสุ่มแมว 24 ตัว
			'cc_meeting', -- [C] CC meeting
			'cement', -- ปูน
			'champagne', -- แชมเปญ
			'check_500k_tr', -- เช็คแลกเงินเขียว 500,000
			--'chipset', -- Chipset
			'chipset_shard', -- เศษ Chipset
			'coal', -- Coal
			'coil', -- Coil
			'compensate_loss_bomber', -- กล่องชดเชย Bomber
			'compensate_miner_1', -- กล่องชดเชยเศษแร่ [1]
			'compensate_miner_20', -- กล่องชดเชยเศษแร่ [20]
			'contact_card', -- [C] บัตรโอนรถ
			--'coo_katana_2', -- Coo Katana 2
			'cooldown_gang', -- [C] คูลดาวน์แก๊ง
			'cooldown_job', -- [C] คูลดาวน์หน่วยงาน
			'copper_gem', -- Cpper Gem
			'copperrod', -- คอปเปอร์
			'coreA', -- Core A
			'coreB', -- Core B
			'coreC', -- Core C
			--'corsita', -- [B] Corsita
			'cotton', -- ฝ้าย
			'create_gang_card', -- [C] บัตรสร้างแก๊ง
			'create_vault_key', -- [C] บัตรสร้างตู้
			'crystal', -- Crystal
			'ctp_lose', -- CTP LOSE
			'ctp_win', -- CTP WIN
			'custom_box', -- กล่องแต่งรถ
			'cylinder', -- Cylinder
			'dango', -- ดังโงะ
			'daruma_skin_shard', -- เศษสกินอาวุธดารุมะ
			'dc_points', -- 5 Point
			'devil_key', -- Devil Key
			'diamond', -- เพชร
			'disbaned_card', -- [C] บัตรยุบแก๊ง
			'doll1', -- หมีฝ้าย
			'door_fix', -- Door Fixed
			'drill', -- Drill
			'drill_gold', -- Drill Gold
			'drug_a', -- ATP DRUGS {GANG)
			'drug_a_fam', -- ATP DRUGS {FAM)
			'drug_b', -- BNK DRUGS
			'e_beer', -- Beer
			'elegy_bag', -- Elegy
			'emp_agen', -- EMP หน่วยงาน
			'emp_citizen', -- EMP
			'emp_shard', -- เศษ EMP
			'ev_a', -- A {Green)
			'ev_m', -- M {Green)
			'ev_s', -- S {Green)
			'ev_x', -- X {Green)
			--'family_card', -- [F] Family Armband
			'fashion_card', -- [F] บัตรแฟชั่น
			'fashion_card_donate', -- [F] บัตรแฟชั่นกาชา SS1
			'fashion_card_donate_v2', -- [F] บัตรแฟชั่นกาชา SS2
			'fashion_card_ss3', -- [F] บัตรแฟชั่น SS3
			'fashion_card_ss4', -- [F] บัตรแฟชั่น SS4
			'fashion_card_ss5', -- [F] บัตรแฟชั่น SS5
			'fashion_card_ss6', -- [F] บัตรแฟชั่น SS6
			'fashion_set_box', -- [B] Fashion Set Box
			'fashion_t_card', -- [F] บัตรโอนแฟชั่น
			'fashionbox', -- [B] Fashion Box
			'fashionbox_ss2', -- [B] กล่อง Powerpuff Girl
			'fashionbox_ss3', -- [B] Fashion SS3
			'fashionbox_ss4', -- [B] Fashion SS4
			-- 'firework_1', -- ประทัดขนาดเล็ก
			-- 'firework_2', -- ประทัดขนาดกลาง
			-- 'firework_3', -- ประทัดขนาดใหญ่
			-- 'firework_4', -- ประทัดขนาดพิเศษ
			'fish_bait', -- เหยื่อตกปลา
			'fish_eel', -- ปลาไหล
			'fish_rod_deep', -- เบ็ดตกปลาน้ำลึก
			'fish_saba', -- ปลาซาบะ
			'fish_salmon', -- ปลาแซลม่อน
			'fish_taro', -- ปลาทูน่า
			'fishingrod', -- เบ็ดตกปลา
			'fixkit', -- กล่องซ่อม
			'fontain_4', -- ประทัดขนาดพิเศษ2
			'food_melon_rice', -- ราเม็ง
			'food_rice_eel', -- กล่องอาหารเบนโตะ
			'fragment_amber', -- เศษ Amber
			'fragment_grimwood', -- เศษ Grimwood
			'fragment_lapisz', -- เศษ Lapisz
			'fragment_netherite', -- เศษ Netherite
			'fragment_obisidian', -- เศษ Obisidian
			'fragment_ruby', -- เศษ Ruby
			'frame', -- Frame
			'gacha_01', -- [B] Gachapong SS.1
			'gacha_02', -- [B] Gachapon StarterPack
			'gacha_03', -- [B] Gacha 03
			'gacha_04', -- [B] Gacha 04
			'gacha_05', -- [B] Gacha 05
			'gacha_newplayer', -- [B] กาชาผู้เล่นใหม่
			'gachapon_sakura_ss2', -- [B] Gachapon SS2
			'gachapon_sakura_starter_ss2', -- [B] Gachapon StarterPack SS2
			'gachapon_ss3_prirate', -- [B] Gachapon Pirate
			'gachapon_ss4_prirate', -- [B] Gachapon Bento
			'gachapon_ss5_halloween', -- [B] Gachapon Halloween
			'gachapon_ss6_xmas', -- Gachapon Xmas
			'gachapon_ss8_valentine', -- [B] Gachapon Valentine
			'carpart_body_ss9',
			'carpart_engine_ss9',
			'carpart_steering_ss9',
			'carpart_wheel_ss9',
			'fashion_card_ss9',
			'gachapon_ss9_thug',
			'gang_story', -- [F] Gang Story
			'gear', -- Gear
			'gold_gem', -- Gold Gems
			'goldbar', -- แท่งทองคำ
			'golduni', -- Gold Uni
			'gps_jam', -- GPS Jammer
			'grap', -- รังผึ้ง
			'gravel', -- กรวด
			'green_tea', -- น้ำฟักทอง
			'grim_wood', -- Grimwood
			'grip', -- Grip
			'guntrigger', -- Gun Trigger
			'gypsum', -- ยิปซั่ม
			-- 'horse', -- ม้า
			'house_key_10_vault', -- Safe House 10
			'house_key_1_vault', -- Safe House 1
			'house_key_201_apartment', -- Safe Apartment 105
			'house_key_202_apartment', -- Safe Apartment 106
			'house_key_203_apartment', -- Safe Apartment 301
			'house_key_204_apartment', -- Safe Apartment 202
			'house_key_205_apartment', -- Safe Apartment 101
			'house_key_206_apartment', -- Safe Apartment 203
			'house_key_207_apartment', -- Safe Apartment 104
			'house_key_208_apartment', -- Safe Apartment 204
			'house_key_209_apartment', -- Safe Apartment 201
			'house_key_211_apartment', -- Safe Apartment 102
			'house_key_212_apartment', -- Safe Apartment 206
			'house_key_213_apartment', -- Safe Apartment 103
			'house_key_2_vault', -- Safe House 2
			'house_key_3_vault', -- Safe House 3
			'house_key_4_vault', -- Safe House 4
			'house_key_5_vault', -- Safe House 5
			'house_key_6_vault', -- Safe House 6
			'house_key_7_vault', -- Safe House 7
			'house_key_8_vault', -- Safe House 8
			'house_key_9_vault', -- Safe House 9
			'hyperloop_shard', -- เศษ Hyperloop
			'ipad', -- iPad
			'ipad_ambulance', -- Ambulance Manage
			'ipad_council', -- iPad Council
			'ipad_police', -- iPad Police
			'job_pack_a', -- แพ็คน้ำผลไม้
			'join_gang_card', -- [C] บัตรเข้าแก๊ง
			'jugular', -- Jugular
			'katom', -- กระท่อม
			'katom_pro', -- กระท่อมแพ็ค
			'key_ghost', -- คีมงัดร้าน
			'khom', -- โคม
			'krathong', -- กระทง
			'krieger', -- Krieger
			'lapis', -- Lapis
			'leave_gang_card', -- บัตรออกแก๊ง
			'lockpick', -- ที่ปลดกุญแจมือ
			'marble', -- ลูกแก้ว
			'medic_pass', -- Medic Pass
			'medic_ticket', -- Medic Ticket
			'medicarmband1', -- ผู้อำนวยการ
			'medicarmband2', -- เลขา
			'medicarmband3', -- รองผู้อำนวยการ
			'medicarmband4', -- หัวหน้ากะ
			'medicarmband5', -- แพทย์ชำนาญการ
			'medicarmband6', -- แพทย์
			'medicarmband7', -- นักเรียนแพทย์
			'medicarmband8', -- แพทย์ฝึกหัด
			'medikit', -- กล่องปฐมพยาบาล
			'melon', -- น้ำเมล่อน
			'melon_tree', -- เมล่อน
			'milkshake_ticket', -- Ticket Milkshake
			'milkshake_ticketx5', -- Ticket Milkshake x5 {กดใช้)
			'moodengbox', -- กล่องสุ่มหมูเด้ง
			'mre', -- MRE
			'msmap', -- MS Map
			'mushroom', -- เห็ดชิทาเกะ
			'mushroom_c', -- Mushroom
			'mushroomprocess', -- Mushroom Process
			'mutcha', -- ฟักทองแพ็ค
			'muzzle', -- Muzzle
			'needle', -- เข็ม
			'nitrogen', -- Nitrogen
			'obsidian', -- Obsidian
			'octopus_bait', -- เหยื่อหมึก
			'offerings', -- เครื่องเซ่นไหว้
			'open_fmj', -- FMJ { 15 วัน ) 
			'painkiller', -- Painkiller
			'painkiller_medic', -- เข็มฉีดยาหมอ
			'part_veget_1', -- เห็ด
			'part_veget_2', -- กะหล่ำปลี
			'part_veget_3', -- แครอท
			--'paycheck_card', -- [C] Paycheck Card
			-- 'piggydoll', -- [F] piggydoll
			-- 'piggyhead', -- [F] piggyhead
			-- 'piggyshoesleft', -- [F] piggyshoesleft
			-- 'piggyshoesright', -- [F] piggyshoesright
			'platinum_gem', -- Platinum Gems
			-- 'point_donate_ss3', -- Point Donate SS3
			-- 'police_armband_1', -- [F] ปลอกแขนจ่า
			-- 'police_armband_10', -- [F] ปลอกแขนหมวด
			-- 'police_armband_2', -- [F] ปลอกแขนดาบ
			-- 'police_armband_3', -- [F] ปลอกแขนนักเรียนตำรวจ
			-- 'police_armband_4', -- [F] ปลอกแขนนายสิบ
			-- 'police_armband_5', -- [F] ปลอกแขนผู้กอง
			-- 'police_armband_6', -- [F] ปลอกแขนผู้กำกับ
			-- 'police_armband_7', -- [F] ปลอกแขนรองผบและผบ
			-- 'police_armband_8', -- [F] ปลอกแขนรองผู้กำกับ
			-- 'police_armband_9', -- [F] ปลอกแขนสารวัตร
			-- 'policearmband1', -- police Master
			-- 'policearmband2', -- police STAFF
			-- 'policearmband3', -- police TRAINNEE
			-- 'policearmband4', -- police SPECIAL
			-- 'policearmband5', -- police LEADER
			-- 'policearmband6', -- police SENOIR
			-- 'pony_box', -- [B] รถมอไซค์ Pony
			-- 'preview', -- PREVIEW
			'pumpkin', -- ฟักทอง
			'quick', -- พอต
			-- 'radio_job', -- วอหน่วยงาน
			'red-crystal', -- Red Crystal
			-- 'red_a', -- A {Red)
			-- 'red_m', -- M {Red)
			-- 'red_s', -- S {Red)
			-- 'red_x', -- X {Red)
			--'rename_card', -- บัตรเปลี่ยนชื่อ
			'rice', -- ข้าวญี่ปุ่น
			'ricepro', -- น้ำข้าว
			'ring', -- แหวน
			'rsx_part', -- กล่องสุ่มชิ้นส่วน RSX
			'ruby', -- Ruby
			'sakura-crystal', -- Sakura Crystal
			-- 'sakura-wisdom-gold-ss5-twbox', -- Wisdom Gold  Twitter BOX
			-- 'sakura-wisdom-silver-ss5-twbox', -- Wisdom Silver  Twitter BOX
			'sakura_coin', -- SAKURA
			'sakura_skin_shard', -- เศษสกินอาวุธ Sakura
			-- 'sakura_war_set', -- Sakura War Set
			'sandymap', -- Sandy Mission
			'sapphire', -- Sapphire
			'scancard', -- บัตรสแกน
			'scel', -- กล่องซ่อมตู้ไฟฟ้า
			--'scepter', -- คทา
			'set_blueprint', -- [B] กล่องชุดตีบลูปริ้นท์
			'seven70_box', -- [B] Seven70 Box
			'shrimp', -- กุ้งแดง
			'silver_gem', -- Silver Gems
			'skateboard', -- สเก็ตบอร์ด
			'skin_rd_part_veget', -- [B] กล่องสุ่มชิ้นส่วนสกินผัก
			'snockle_job', -- เครื่องดำน้ำหน่วยงาน
			-- 'starterpack_fashion_ss3', -- [SP] Starter Fashion SS3
			-- 'starterpack_fashion_ss4', -- [SP] Starter Fashion SS4
			-- 'starterpack_fashion_ss5', -- [SP] Starter Fashion SS5
			-- 'starterpack_fashion_ss6_l', -- [SP] Starter Fashion SS6 L
			-- 'starterpack_fashion_ss6_xl', -- [SP] Starter Fashion SS6 XL
			-- 'starterpack_fashion_ss7', -- [SP] Starter Fashion SS7
			'steel', -- เหล็ก
			'stone_p', -- หิน
			'strawberry', -- สตอเบอรี่
			'take2_card', -- บัตร Take 2
			'team_a', -- ปลอกแขน A
			'team_b', -- ปลอกแขน B
			-- 'ticket_blackmoney_100k', -- ตั๋วแลกเงินแดง 100,000
			-- 'ticket_blackmoney_10k', -- ตั๋วแลกเงินแดง 10,000
			-- 'ticket_blackmoney_1k', -- ตั๋วแลกเงินแดง 1,000
			'tin', -- เจด
			'tofu', -- พริก
			'train_box', -- [B] Train Mini 300KG 
			'treebon', -- ต้นบอนไซ
			--'trophytruck', -- Trophy Truck
			-- 'twitter_fuji', -- [TW] Fuji Twitter
			'uni', -- Unii
			'up_slot_card', -- บัตรเพิ่ม Slot
			'vibranium', -- ไวเบรเนี่ยม
			-- 'vip_auto_farm_v2', -- [C] AUTO FISHING CARD
			-- 'vip_card_ss2', -- [C] VIP CARD SS2
			-- 'vipx2_card', -- [C] VIP X2 CARD {ยกเลิกการใช้งาน)
			'wakamei_seaweed', -- น้ำมะเขือเทศ
			'wakamei_tree', -- มะเขือเทศ
			'wasabi', -- น้ำแครอท
			'wasabi_tree', -- แครอท
			-- 'weapon_skin_card', -- [C] Weapon Skin Card
			-- 'weapon_skin_card_ss4', -- [C] Weapon Skin Card SS4
			-- 'weapon_skin_card_ss5', -- [C] Weapon Skin Card SS5
			'weed', -- กัญชา
			'weed_pro', -- กัญชาแพ็ค
			'wizard_book', -- คัมภีร์พ่อมด
			'wood_bon', -- แท่งไม้บอนไซ
			'yellow-crystal', -- Yellow Crystal
			'yuzu_orange', -- ส้ม
			-- 'zindearcat_arm_brown', -- [F] Earcat Arm Brown
			-- 'zintoothless_bla_1', -- Black Fury {head)
			-- 'zintoothless_bla_2', -- Black Fury {Right)
			-- 'zintoothless_bla_3', -- Black Fury {Left)
			'chipset',
			'Radiant',
			'weapon_skin_card',
			'carpart_steering_ss7',
			'carpart_wheel_ss7',
			'carpart_engine_ss7',
			'carpart_body_ss7',
			'starterpack_fashion_ss8',

			-- gacha ss7
			'box_rd_story_ss7_x2',
			'box_rd_cash_ss7_x2',
			'box_rd_blackmoney_ss7_x2',
			'box_rd_general_ss7_x2',
			'box_rd_job_ss7_x2',
			'box_rd_miner_ss7_x2',
			'box_rd_drill_ss7_x2',
			'box_rd_fashion_ss7_x2',
			'box_rd_part_ss7_x2',
			'box_rd_blackjob_ss7_x2',
			'box_rd_sakuracoin_ss7_x2',
			'box_rd_miner_new_x2',
			'fashion_card_ss7',	
			'gachapon_ss7_Chinese',
			'bandage_pack_100',
			'bandage_pack_50',
			'hirono_card',
			'Crybaby_Skin_Card',
			-- gacha ss8
			'carpart_steering_ss8',
			'carpart_wheel_ss8',
			'carpart_engine_ss8',
			'carpart_body_ss8',
			'box_rd_story_ss8_x2',
			'box_rd_cash_ss8_x2',
			'box_rd_blackmoney_ss8_x2',
			'box_rd_general_ss8_x2',
			'box_rd_job_ss8_x2',
			'box_rd_miner_ss8_x2',
			'box_rd_drill_ss8_x2',
			'box_rd_fashion_ss8_x2',
			'box_rd_part_ss8_x2',
			'box_rd_blackjob_ss8_x2',
			'box_rd_sakuracoin_ss8_x2',
			'box_rd_miner_new_x2',
			'fashion_card_ss8',	
			'gypsum_broke',
			'gachapon_ss10_songkran',
			'box_rd_drill_ss10_x2',
			'box_rd_general_ss10_x2',
			'box_rd_story_ss10_x2',
			'box_rd_job_ss10_x2',
			'box_rd_blackjob_ss10_x2',
			'box_rd_part_ss10_x2',
			'box_rd_sakuracoin_ss10_x2',
			'box_rd_fashion_ss10_x2',
			'box_rd_cash_ss10_x2',
			'box_rd_blackmoney_ss10_x2',
			'box_rd_miner_ss10_x2',
			'box_rd_miner_new_ss10_x2',
			'fashion_card_ss10',
			'carpart_steering_ss10',
			'carpart_wheel_ss10',
			'carpart_engine_ss10',
			'carpart_body_ss10',
			'mc_key_1_vault',
			'mc_key_2_vault',
			'mc_key_3_vault',
			'mc_key_4_vault',
			'ap_key_vault_101',
			'ap_key_vault_102',
			'ap_key_vault_103',
			'ap_key_vault_104',
			'ap_key_vault_105',
			'ap_key_vault_106',
			'ap_key_vault_107',
			'ap_key_vault_108',
			'ap_key_vault_109',
			'ap_key_vault_110',
			'ap_key_vault_111',
			'ap_key_vault_112',
			'ap_key_vault_113',
			'ap_key_vault_114',
			'ap_key_vault_115',
			'ap_key_vault_116',
			'ap_key_vault_117',
			'ap_key_vault_118',
			'ap_key_vault_119',
			'ap_key_vault_120',
			'ap_key_vault_121',
			'ap_key_vault_122'

		}
	},
	search = {					-- การ "โยกย้าย" สิ่งของต่างๆเมื่อเปิดกระเป๋าผู้เล่น
		type = 'blacklist',
		list = {
		}
	}
}
-- การตั้งค่า Action ต่างๆ
-- 'whitelist'	=> Items ต่างๆที่อยู่ใน List จะ "อนุญาต" ให้ทำการกระทำนั้นๆ
--				=> โดยที่ Items ที่ไม่อยู่ใน List จะ "ไม่อนุญาต" ให้ทำการกระทำนั้นๆ
-- 'blacklist'	=> Items ต่างๆที่อยู่ใน List จะ "ไม่อนุญาต" ให้ทำการกระทำนั้นๆ
--				=> โดยที่ Items ที่ไม่อยู่ใน List จะ "อนุญาต" ให้ทำการกระทำนั้นๆ