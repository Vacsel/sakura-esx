-- [[ SERVER FUNCTION  ]] --
-- เปอเซนต์ที่โอกาศตีติดของไอเทมชนิดนั้นๆ
Config['rate_success'] = {
    [1] = {                                               -- หมวดบัตรมิ้นท์
        [1] = 100,  -- food_rice_eel
        [2] = 100,  -- food_melon_rice
        -- [12] = 100, 
        -- [13] = 100, 
        -- [14] = 100, 
    },
    [2] = {  -- หมวดอาวุธเริ่มต้น
        [1] = 100,  -- weapon_bottle
        [2] = 100,  -- weapon_bat
        [3] = 100,  -- weapon_bottle (cost 60000)
        [4] = 100,  -- weapon_bat (cost 60000)
    },
    [3] = {  -- หมวดอาวุธ
        [1] = 100,  -- weapon_knife
        [2] = 100,  -- weapon_dagger
        [3] = 100,  -- weapon_poolcue
        [4] = 100,  -- weapon_machete
        [5] = 100,  -- weapon_knuckle
    },
     [4] = {  -- หมวดคราฟทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 50,   -- vibranium
        [4] = 100,  -- platinum_gem
        [5] = 100,  -- silver_gem
        [6] = 100,  -- gold_gem
        [7] = 50,   -- sakura-crystal
        [8] = 50,   -- sakura-crystal (black-crystal)
        [9] = 100,  -- anti-potion
        [10] = 100, -- box_craft_weapon
        [11] = 100, -- take2_card
        [12] = 100, -- lockpick
        [13] = 100, -- key_ghost
        [14] = 100, -- gps_jam
        [15] = 100, -- ticket_blackmoney_10k
        [16] = 100, -- ticket_blackmoney_100k
        [17] = 100, -- grim_wood
        [18] = 100, -- grim_wood
        [19] = 100, -- grim_wood (black money 0)
        [20] = 100, -- grim_wood (black money 300)
        [21] = 100, -- grim_wood (black money 500)
    },
    [5] = {  -- หมวดทั่วไป
        [1] = 100,  -- create_gang_card
        [2] = 100,  -- join_gang_card
        [3] = 100,  -- leave_gang_card
        [4] = 100,  -- key_pink
        [5] = 100,  -- key_pink (family_card_c)
        [6] = 100,  -- radio
        [7] = 100,  -- cooldown_gang
        [8] = 100,  -- cooldown_job
        [9] = 100,  -- cooldown_job
        [10] = 100, -- key_pink [mc_card]
    },
    [6] = {  -- หมวดบลูปริ้น
        [1] = 50,  -- bp_knife
        [2] = 50,  -- bp_dagger
        [3] = 50,  -- bp_poolcue
        [4] = 50,  -- bp_machete
        [5] = 50,  -- bp_knuckle
    },
    [7] = {  -- หมวดทั่วไป (ยาเสพติด)
        [1] = 100,  -- drug_a
        [2] = 100,  -- drug_a_fam
        [3] = 100,  -- drug_a_fam (black_money = 0)
        [4] = 100,  -- drug_b
    },
      [8] = {  -- หมวดยา
        [1] = 100,  -- medikit
        [2] = 100,  -- painkiller_medic
    },
    [9] = {  -- หมวดทั่วไป
        [1] = 100,  -- radio_job
        [2] = 100,  -- fixkit_job
        [3] = 100,  -- painkiller_job
        [4] = 100,  -- aed_job
        [5] = 100,  -- armor_job
        [6] = 100,  -- snockle_job
        [7] = 100,  -- mre
    },
    [10] = {  -- หมวดทั่วไป (สำรอง)
        [1] = 100,  -- radio_job
        [2] = 100,  -- fixkit_job
        [3] = 100,  -- snockle_job
        [4] = 100,  -- painkiller_job
        [5] = 100,  -- armor_job
        [6] = 100,  -- aed_job
        [7] = 100,  -- mre
    },
    [11] = {  -- หมวดอาวุธ
        [1] = 100,  -- weapon_stungun
        [2] = 100,  -- weapon_pumpshotgun
        [3] = 100,  -- weapon_nightstick
        [4] = 100,  -- dynamite
    },
    [12] = {  -- หมวดกระสุน
        [1] = 100,  -- 12gauge
    },
    [13] = {  -- หมวดทั่วไป (สภา)
        [1] = 100,  -- contact_card
        [2] = 100,  -- painkiller_job
        [3] = 100,  -- aed_job
        [4] = 100,  -- armor_job
        [5] = 100,  -- gang_card
        [6] = 100,  -- mre
        [7] = 100,  -- fixkit_job
        [8] = 100,  -- box_pain
        [9] = 100,  -- box_pain_50
        [10] = 100, -- box_safe
        [11] = 100, -- box_armor_50
        [12] = 100, -- box_armor
        [13] = 100, -- bag_caracara
        [14] = 100, -- bag_garduian
        [15] = 100, -- radio_job
        [16] = 100, -- acc_a7_hks_armband_evo
        [17] = 100, -- family_card
        [18] = 100, -- family_card_c
        [19] = 100, -- box_aed
        [20] = 100, -- box_aed_50
        [21] = 100, -- bag_card_bp
        [22] = 100, -- mc_card
    },

    [14] = {  -- หมวดทั่วไป (สำหรับแก๊ง)
        [1] = 100,  -- painkiller
        [2] = 100,  -- armor
        [3] = 100,  -- box_craft_weapon
        [4] = 100,  -- aed
        [5] = 100,  -- bag_benefit_11
        [6] = 100,  -- bag_benefit_15
        [7] = 100,  -- bag_benefit_20
        [8] = 100,  -- box_set_25_gang
        [9] = 100,  -- box_set_30_gang

    },
    [15] = {  -- หมวดหัว
        [1] = 20,  -- hatunicorn
        [2] = 20,  -- blueunicorn
        [3] = 20,  -- whiteunicorn
        [4] = 20,  -- blueitim
        [5] = 20,  -- pinkitim
        [6] = 20,  -- rainbowitim
    },
    [16] = {  -- หมวดไหล่
        [1] = 20,  -- pinkunicorn
        [2] = 20,  -- purpleunicorn
        [3] = 20,  -- aidenta_sakurabodywing_fashion
        [4] = 20,  -- pinkunicorn
        [5] = 20,  -- purpleunicorn
        [6] = 20,  -- aidenta_sakurabodywing_fashion
        [7] = 20,  -- pinkunicorn
        [8] = 20,  -- purpleunicorn
        [9] = 20,  -- aidenta_sakurabodywing_fashion
        [10] = 20,  -- pinkunicorn
        [11] = 20,  -- purpleunicorn
        [12] = 20,  -- aidenta_sakurabodywing_fashion
        [13] = 20,  -- pinkunicorn
        [14] = 20,  -- purpleunicorn
        [15] = 20,  -- aidenta_sakurabodywing_fashion
        [16] = 20,  -- pinkunicorn
        [17] = 20,  -- purpleunicorn
        [18] = 20,  -- aidenta_sakurabodywing_fashion
    },
    [17] = {  -- หมวดมือ
        [1] = 20,  -- aidenta_sakurastar_fashion
        [2] = 20,  -- aidenta_sakuralion_fashion
    },
    [18] = {  -- หมวดหลัง
        [1] = 100,  -- bag
        [2] = 100,  -- aidenta_sakurawing_fashion
    },
    [19] = {  -- หมวดเท้า
        [1] = 100,  -- babyshop_fashion_shibe
    },
    [20] = {  -- หมวดแลกเหรียญ AFK
        [1] = 100,  -- box_craft_weapon
        [2] = 100,  -- gacha_newplayer
    },
    [21] = {  -- หมวดทั่วไป
        [1] = 100,  -- fashion_card
        [2] = 100,  -- box_craft_weapon
        [3] = 100,  -- gacha_newplayer
        [4] = 100,  -- elegy_bag
    },
     [22] = {  -- หมวดของซื้อขาย
        [1] = 100,  -- bandage_pack_50
        [2] = 100,  -- bandage_pack_100
        [3] = 100,  -- bandage_pack_100
        [4] = 100,
    },
    [23] = {  -- หมวดอาวุธ +1
        [1] = 20,  -- weapon_dagger+1
        [2] = 20,  -- weapon_knife+1
        [3] = 20,  -- weapon_poolcue+1
        [4] = 20,  -- weapon_machete+1
        [5] = 15,  -- weapon_knuckle+1
    },
    [24] = {  -- หมวดอาวุธ +2
        [1] = 10,  -- weapon_dagger+2
        [2] = 10,  -- weapon_knife+2
        [3] = 10,  -- weapon_poolcue+2
        [4] = 1,   -- weapon_machete+2
        [5] = 1,   -- weapon_knuckle+2
    },
    [25] = {  -- หมวดอาวุธ +3
        [1] = 1,   -- weapon_dagger+3
        [2] = 1,   -- weapon_knife+3
        [3] = 1,   -- weapon_poolcue+3
    },
    [26] = {  -- หมวดรถกิจกรรมโปรโมท
        [1] = 100,  -- box_tenf2
        [2] = 100,  -- bag_pr_ratloader2
    },
    [27] = {  -- หมวดบลูปริ้น (การ์ด)
        [1] = 50,  -- bp_knife
        [2] = 50,  -- bp_dagger
        [3] = 50,  -- bp_poolcue
        [4] = 50,  -- bp_machete
        [5] = 50,  -- bp_knuckle
    },
    [28] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [29] = {  -- หมวดกุญแจบ้าน
        [1] = 100,  -- house_key_1
        [2] = 100,  -- house_key_2
        [3] = 100,  -- house_key_3
        [4] = 100,  -- house_key_4
        [5] = 100,  -- house_key_5
        [6] = 100,  -- house_key_6
        [7] = 100,  -- house_key_7
        [8] = 100,  -- house_key_8
        [9] = 100,  -- house_key_9
        [10] = 100,  -- house_key_10
    },
    [30] = {  -- หมวดทั่วไป (สำรอง)
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [31] = {  -- หมวดรถประกอบ
        [1] = 100,  -- car_ss3_komoda_coupon
    },
    [32] = {  -- หมวดหัว
        [1] = 100,  -- reawx_cny_dragon_hat_00_prop
    },
    [33] = {  -- หมวดไหล่
        [1] = 100,  -- reawx_cny_dragon_dance_02_prop
        [2] = 100,  -- reawx_cny_dragon_dance_04_prop
    },
    [34] = {  -- หมวดแขน
    [1] = 100,  -- reawx_cny_lanterns_01_prop
    },
    [35] = {  -- หมวดหลัง
        [1] = 100,  -- reawx_cny_dragon_dance_05
    },
    [36] = {  -- หมวดเท้า
        [1] = 100,  -- reawx_cny_dragon_dance_01_prop
        [2] = 100,  -- reawx_cny_dragon_dance_03_prop
    },
    [37] = {  -- หมวดคูปองเกมมิ่งเกียร์
        [1] = 100,  -- bax_rd_aed_x2
        [2] = 100,  -- box_black_money_x2
    },
    [38] = {  -- หมวด Point Donate SS1
        [1] = 100,  -- box_rd_carparts
    },

    [39] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [40] = {  -- หมวดกูญแจอพาร์ทเม้นท์
        [1] = 100,  -- apartment_key_201
        [2] = 100,  -- apartment_key_202
        [3] = 100,  -- apartment_key_203
        [4] = 100,  -- apartment_key_204
        [5] = 100,  -- apartment_key_205
        [6] = 100,  -- apartment_key_206
        [7] = 100,  -- apartment_key_207
        [8] = 100,  -- apartment_key_208
        [9] = 100,  -- apartment_key_209
        [10] = 100,  -- apartment_key_210
        [11] = 100,  -- apartment_key_211
        [12] = 100,  -- apartment_key_212
        [13] = 100,  -- apartment_key_213

    },
    [41] = {  -- หมวดกล่องสุ่มชิ้นส่วนรถ
        [1] = 100,  -- box_rd_part_ss3_x2 (carpart_wheel_ss3)
        [2] = 100,  -- box_rd_part_ss3_x2 (carpart_steering_ss3)
        [3] = 100,  -- box_rd_part_ss3_x2 (carpart_engine_ss3)
        [4] = 100,  -- box_rd_part_ss3_x2 (carpart_body_ss3)
    },
    [42] = {  -- หมวดอาวุธ +1
        [1] = 60,   -- WEAPON_DAGGER+1
        [2] = 60,   -- WEAPON_KNIFE+1
        [3] = 60,   -- WEAPON_POOLCUE+1
        [4] = 25,   -- WEAPON_MACHETE+1
        [5] = 20,   -- WEAPON_KNUCKLE+1
    },
    [43] = {  -- หมวดอาวุธ +2
        [1] = 50,   -- WEAPON_DAGGER+2
        [2] = 50,   -- WEAPON_KNIFE+2
        [3] = 50,   -- WEAPON_POOLCUE+2
        [4] = 5,    -- WEAPON_MACHETE+2
        [5] = 5,    -- WEAPON_KNUCKLE+2
    },
    [44] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [45] = {  -- หมวดงานดำ (หมวดที่ 45)
        [1] = 100,  -- drug_a
        [2] = 100,  -- drug_b
    },
    [46] = {  -- หมวดงานดำ (หมวดที่ 46)
        [1] = 100,  -- drug_a
        [2] = 100,  -- drug_b
    },
    [47] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a
        [2] = 100,  -- drug_b
    },
     [48] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [49] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
        [2] = 100,  -- drug_a_fam (black money 0)
        [3] = 100,  -- drug_b
    },
    [50] = {  -- หมวดงานดำ (สำรอง)
        [1] = 100,  -- drug_a (black money 300)
        [2] = 100,  -- drug_b
    },
    [51] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [52] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a (black money 300)
        [2] = 100,  -- drug_b
    },
    [53] = {  -- หมวดแพ็คของ
        [1] = 100,  -- box_cement
        [2] = 100,  -- box_bonsai
        [3] = 100,  -- box_copper
        [4] = 100,  -- box_gold
        [5] = 100,  -- box_steel
        [6] = 100,  -- box_diamond
        [7] = 100,  -- box_tin
        [8] = 100,  -- box_blue-crystal
        [9] = 100,  -- box_black-crystal
        [10] = 100,  -- box_yellow-crystal
        [11] = 100,  -- box_yellow-crystal
    },
    [54] = {  -- หมวดทั่วไป (สำรอง)
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [55] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a (black money 300)
        [2] = 100,  -- drug_b
    },
    [56] = {  -- หมวด Point Donate SS2
        [1] = 100,  -- corsita
        [2] = 100,  -- jugular
        [3] = 100,  -- krieger
    },
    [57] = {  -- หมวดรถประกอบ
        [1] = 100,  -- car_ss4_car2_coupon
        [2] = 100,  -- car_ss4_car2_coupon
    },
    [58] = {  -- หมวดกล่องสุ่มชิ้นส่วนรถ
        [1] = 100,  -- box_rd_part_ss3_x2 (body)
        [2] = 100,  -- box_rd_part_ss3_x2 (engine)
        [3] = 100,  -- box_rd_part_ss3_x2 (steering)
        [4] = 100,  -- box_rd_part_ss3_x2 (wheel)
        [5] = 100,  -- box_rd_part_ss3_x2 (box)
    },
    [59] = {  -- หมวดไหล่
        [1] = 100,  -- bbg_corgi1
        [2] = 100,  -- bbg_corgi3
    },
    [60] = {  -- หมวดหลัง
        [1] = 100,  -- box_rd_part_ss3_x2 (body)
        [2] = 100,  -- box_rd_part_ss3_x2 (engine)
        [3] = 100,  -- box_rd_part_ss3_x2 (steering)
        [4] = 100,  -- box_rd_part_ss3_x2 (wheel)
    },
    [61] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [62] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a (black money 300)
        [2] = 100,  -- drug_b
    },
    [63] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [64] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
        [2] = 100,  -- drug_a_fam (black money 0)
        [3] = 100,  -- drug_b
    },
    [65] = {  -- หมวดอาวุธ
        [1] = 100,  -- weapon_bottle
        [2] = 100,  -- weapon_bat
        [3] = 100,  -- bag_weapon_dagger
        [4] = 100,  -- bag_weapon_knife
        [5] = 100,  -- bag_weapon_poolcue
    },
    [66] = {  -- หมวดชิ้นส่วน Mini6
        [1] = 100,  -- carpartsboxpromote (body)
        [2] = 100,  -- carpartsboxpromote (engine)
        [3] = 100,  -- carpartsboxpromote (streer)
        [4] = 100,  -- carpartsboxpromote (wheel)
    },
    [67] = {  -- หมวดชิ้นส่วน Ratloader
        [1] = 100,  -- box_car_promote (body)
        [2] = 100,  -- box_car_promote (engine)
        [3] = 100,  -- box_car_promote (steering)
        [4] = 100,  -- box_car_promote (wheel)
    },
    [68] = {  -- หมวดทั่วไป (สำหรับครอบครัว)
        [1] = 100,  -- bag_benefit_10
        [2] = 100,  -- bag_benefit_10
    },
    [69] = {  -- หมวดแลกTicket Support
        [1] = 100,  -- bag_cash
        [2] = 100,  -- event_gachapon (40)
        [3] = 100,  -- box_item_12
        [4] = 100,  -- box_rd_armor (15)
        [5] = 100,  -- bax_rd_aed (15)
        [6] = 100,  -- event_gachapon (300)
        [7] = 100,  -- box_craft_weapon (2)
        [8] = 100,  -- box_rd_armor (40)
        [9] = 100,  -- bax_rd_aed (40)
        [10] = 100,  -- box_rd_curby
        [11] = 100,  -- box_craft_vibrenium
        [12] = 100,  -- carpartsboxpromote
        [13] = 100,  -- box_car_promote
        [14] = 100,  -- twitter_sakura
        [15] = 100,  -- twitter_daruma
        [16] = 100,  -- starter_pack
        [17] = 100,  -- starter_pack
        [18] = 100,  -- starter_pack
        [19] = 100,  -- starter_pack
        [20] = 100,  -- starter_pack
    },
    [70] = {  -- หมวดกุญแจตู้บ้าน
        [1] = 100,  -- house_key_1_vault
        [2] = 100,  -- house_key_2_vault
        [3] = 100,  -- house_key_3_vault
        [4] = 100,  -- house_key_4_vault
        [5] = 100,  -- house_key_5_vault
        [6] = 100,  -- house_key_6_vault
        [7] = 100,  -- house_key_7_vault
        [8] = 100,  -- house_key_8_vault
        [9] = 100,  -- house_key_9_vault
        [10] = 100,  -- house_key_10_vault
    },
    [71] = {  -- หมวดกุญแจตู้อพาร์ทเม้นท์
        [1] = 100,  -- house_key_201_apartment
        [2] = 100,  -- house_key_202_apartment
        [3] = 100,  -- house_key_203_apartment
        [4] = 100,  -- house_key_204_apartment
        [5] = 100,  -- house_key_205_apartment
        [6] = 100,  -- house_key_206_apartment
        [7] = 100,  -- house_key_207_apartment
        [8] = 100,  -- house_key_208_apartment
        [9] = 100,  -- house_key_209_apartment
        [10] = 100,  -- house_key_210_apartment
        [11] = 100,  -- house_key_211_apartment
        [12] = 100,  -- house_key_212_apartment
      --  [13] = 100,  -- house_key_213_apartment
    },
    [72] = {  -- หมวดอาวุธ +3
        [1] = 10,  -- weapon_dagger+3
        [2] = 10,  -- weapon_knife+3
        [3] = 10,  -- weapon_poolcue+3
    },
    [73] = {  -- หมวดอาวุธ +3 (กันแตก)
        [1] = 10,  -- weapon_dagger+3 (กันแตก)
        [2] = 10,  -- weapon_knife+3 (กันแตก)
        [3] = 10,  -- weapon_poolcue+3 (กันแตก)
        [4] = 3,   -- weapon_machete+3
        [5] = 3,   -- weapon_knuckle+3
    },
    -- [74] = {  -- หมวด SAKURA FAIL
    --     [1] = 100,  -- weapon_dagger+3
    --     [2] = 100,  -- weapon_knife+3
    --     [3] = 100,  -- weapon_poolcue+3
    -- },
    [75] = {  -- หมวด SWEET SKIN
        [1] = 100,  -- sweet_skin_poolcue
        [2] = 100,  -- sweet_skin_dagger
        [3] = 100,  -- sweet_skin_knife
    },
    [76] = {  -- หมวดชิงบ้าน
        [1] = 100,  -- hammer
        [2] = 100,  -- shied
        [3] = 100,  -- ring
        [4] = 100,  -- scepter
    },
    [77] = {  -- หมวดเควส
        [1] = 100,  -- box_rd_cash
        [2] = 100,  -- event_gachapon
        [3] = 100,  -- box_rd_miner
        [4] = 100,  -- box_rd_sakura
        [5] = 100,  -- box_gem
        [6] = 100,  -- box_rd_armor
        [7] = 100,  -- bax_rd_aed
        [8] = 100,  -- box_black_money
        [9] = 100,  -- box_rd_general
        [10] = 100,  -- box_craft_vibrenium
    },
    [78] = {  -- หมวดเท้า
        [1] = 100,  -- bbg_corgi2
    },
    [79] = {  -- หมวด SAMURAI SKIN
        [1] = 100,  -- samurai_skin_poolcue
        [2] = 100,  -- samurai_skin_dagger
        [3] = 100,  -- samurai_skin_knife
    },
    [80] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [81] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a (black money 300)
        [2] = 100,  -- drug_b
    },
    [82] = {  -- หมวดบัตรประกัน
        [1] = 100,  -- insurance_weapon_card
        [2] = 100,  -- insurance_radio_card
        [3] = 100,  -- insurance_radio_card
    },
    [83] = {  -- หมวดอุปกรณ์สตอรี่
        [1] = 100,  -- chipset
        [2] = 100,  -- emp_citizen
        [3] = 100,  -- capsule_hyperloop
        [4] = 100,  -- door_fix
        [5] = 100,  -- door_fix
        [6] = 100,  -- dynamite_gang
    },
    [84] = {  -- หมวดอุปกรณ์สตอรี่
        [1] = 100,  -- chipset
        [2] = 100,  -- emp_citizen
        [3] = 100,  -- capsule_hyperloop
    },
    [85] = {  -- หมวดอุปกรณ์สตอรี่
        [1] = 100,  -- chipset
        [2] = 100,  -- emp_citizen
    },
    [86] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a
        [2] = 100,  -- drug_b
    },
    [87] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [88] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- box_craft_weapon
        [4] = 100,  -- box_craft_vibrenium
        [5] = 100,  -- box_craft_vibrenium
        [6] = 100,  -- box_craft_vibrenium
        [7] = 100,  -- box_craft_vibrenium
        [8] = 100
    },
    [89] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a
        [2] = 100,  -- drug_b
        [3] = 100,  -- drug_b
        [4] = 100,  -- drug_b
        [5] = 100,  -- drug_b
    },
    [90] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },

    [91] = {  -- หมวดทั่วไป
        [1] = 30,  -- armor
        [2] = 30,  -- aed
        [3] = 30,  -- aed
        [4] = 30,  -- aed
        [5] = 30,  -- aed
        [6] = 50,  -- aed
        [7] = 50,  -- aed
        [8] = 50,  -- aed
    },

    [92] = {  -- หมวดทั่วไป
        [1] = 30,  -- armor
        [2] = 30,  -- aed
        [3] = 30,  -- aed
        [4] = 30,  -- aed
        [5] = 30,  -- aed
        [6] = 50,  -- aed
        [7] = 50,  -- aed
        [8] = 50,  -- aed
    },

    [93] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,
        [4] = 100,
        [5] = 100,
        [6] = 100,
        [7] = 100,
        [8] = 100,
        [9] = 100,
        [10] = 100
    },

    [94] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100
    },
    
    [95] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
        [4] = 100,  -- aed
        [5] = 100,  -- aed
        [6] = 100
    },

    [96] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
        [4] = 100,  -- aed
        [5] = 100,  -- aed
        [6] = 100,  -- aed
        [7] = 100
    },

    [97] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
        [4] = 100,  -- aed
        [5] = 100,  -- aed
        [6] = 100,  -- aed
        [7] = 100,  -- aed
        [8] = 100
    },

    [98] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
        [4] = 100,  -- aed
        [5] = 100,  -- aed
        [6] = 100,  -- aed
        [7] = 100,  -- aed
        [8] = 100
    },

    [99] = {
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
        [4] = 100,  -- aed
    },
    [100] = {
        [1] = 100,  -- armor
    },
    [101] = {
        [1] = 50,  -- event_gachapon
        [2] = 50,  -- fashion_card
    },
    [102] = {
        [1] = 100,  -- WEAPON_DAGGER_AGENT+1
        [2] = 100,  -- WEAPON_DAGGER_AGENT+2
        [3] = 40,  -- WEAPON_DAGGER_AGENT+3
        [4] = 100,  -- WEAPON_KNIFE_AGENT+1
        [5] = 100,  -- WEAPON_KNIFE_AGENT+2
        [6] = 40,  -- WEAPON_KNIFE_AGENT+3
        [7] = 100,  -- WEAPON_POOLCUE_AGENT+1
        [8] = 100,  -- WEAPON_POOLCUE_AGENT+2
        [9] = 40,  -- WEAPON_POOLCUE_AGENT+3
    },
    [103] = {  -- หมวดทั่วไป
        [1] = 30,  -- armor
    },

    [104] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
        [4] = 100,  -- aed
        [5] = 100,  -- aed
        [6] = 100,  -- aed
        [7] = 100,  -- aed
        [8] = 100,  -- aed
        [9] = 100,  -- aed
        [10] = 100,  -- aed
        [11] = 100,  -- aed
        [12] = 100,  -- aed
    },

    [105] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
    },

    [106] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
    },

    [107] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
    },

    [108] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
    },

    [109] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
    },

    [110] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
        [4] = 100,  -- aed
        [5] = 100,  -- aed
    },
    
    [111] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
    },
    [112] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
    },
    [113] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- aed
    },
    [114] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
    },
    [115] = {  -- หมวดทั่วไป
        [1] = 4,  -- armor
    },
    [116] = {  -- หมวดทั่วไป
        [1] = 3,  -- armor
    },
    [117] = {  -- หมวดทั่วไป
        [1] = 2,  -- armor
    },
    [118] = {  -- หมวดทั่วไป
        [1] = 0,  -- armor
    },
    [119] = {  -- หมวดทั่วไป
        [1] = 0,  -- armor
    },
    [120] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
        [3] = 100,  -- armor
        [4] = 100,  -- armor
        [5] = 70,  -- armor
        [6] = 70,  -- armor
        [7] = 100,  -- armor
        [8] = 100,  -- armor
        [9] = 70,  -- armor
        [10] = 100,  -- armor
        [11] = 100,  -- armor
        [12] = 100,  -- armor
    },
    [121] = {  -- หมวดทั่วไป
        [1] = 50,  -- armor
        [2] = 100,  -- armor
        [3] = 100,  -- armor
        [4] = 100,  -- armor
        [5] = 100,  -- armor
        [6] = 100,  -- armor
        [7] = 100,  -- armor
        [8] = 100,  -- armor
        [9] = 100,  -- armor
    },
    [122] = {  -- หมวดทั่วไป
        [1] = 100,  -- amber
        [2] = 100,  -- grimwood
        [3] = 100,  -- lapisz
        [4] = 100,  -- netherit
        [5] = 100,  -- obisidian
        [6] = 100,  -- ruby

    },
    [123] = {  -- AgencyBonus
        [1] = 100,  -- AFKBonus

    },
    [124] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
    },
    [125] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
        [2] = 100,  -- drug_a_fam (black money 0)
        [3] = 100,  -- drug_b
    },
    [126] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
        [2] = 100,  -- drug_a_fam (black money 0)
        [3] = 100,  -- drug_b
        [4] = 100,  -- drug_b
        [5] = 100,  -- drug_b
        [6] = 100,  -- drug_b
        [7] = 100,  -- drug_b
        [8] = 100,  -- drug_b
    },
    [127] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
        [2] = 100,  -- drug_a_fam (black money 0)
        [3] = 100,  -- drug_b
        [4] = 100,  -- drug_b
        
    },
    [128] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
    },
    [129] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
    },
    [130] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
        [2] = 100,  -- drug_a_fam (black money 300)
    },
    [131] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
        [2] = 100,  -- drug_a_fam (black money 0)
        [3] = 100,  -- drug_b
        [4] = 100,  -- drug_b
        [5] = 100,  -- drug_b
        [6] = 100,  -- drug_b
        [7] = 100,  -- drug_b
        [8] = 100,  -- drug_b
    },
    [132] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
        [2] = 100,  -- drug_a_fam (black money 0)
        
    },
    [133] = {  -- หมวดงานดำ
        [1] = 50,  -- drug_a_fam (black money 300)
        [2] = 50,  -- drug_a_fam (black money 0)
        [3] = 50,  -- drug_b
        [4] = 50,  -- drug_b
        [5] = 50,  -- drug_b
        [6] = 50,  -- drug_b
        [7] = 50,  -- drug_b
        
    },
    [134] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
        [2] = 100,  -- drug_a_fam (black money 0)
        [3] = 100,  -- drug_b
        [4] = 100,  -- drug_b
        [5] = 100,  -- drug_b
        [6] = 100,  -- drug_b
    },
    [135] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
        [3] = 100,  -- armor
        [4] = 100,  -- armor
        [5] = 100,  -- armor
        [6] = 100,  -- armor
        
    },
    [136] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
        [3] = 100,  -- armor
        [4] = 100,  -- armor
        [5] = 100,  -- armor
        [6] = 100,  -- armor
        [7] = 100,  -- armor
        [8] = 100,  -- armor
        [9] = 100,  -- armor
        [10] = 100,  -- armor
        [11] = 100,  -- armor
        [12] = 100,  -- armor
        [13] = 100,  -- armor
        [14] = 100,  -- armor
        [15] = 100,  -- armor
        [16] = 100,  -- armor
        [17] = 100,  -- armor
        [18] = 100,  -- armor
        [19] = 100,  -- armor
       -- [20] = 100,  -- armor
    },
    [137] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
        [3] = 100,  -- armor
    },
    [138] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
        [3] = 100,  -- armor
        [4] = 100,  -- armor
        [5] = 100,  -- armor
        [6] = 100,  -- armor
    },
    [139] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
        [3] = 100,  -- armor
        [4] = 100,  -- armor
        [5] = 100,  -- armor
        [6] = 100,  -- armor
        [7] = 100,  -- armor
        [8] = 100,  -- armor
        [9] = 100,  -- armor
        [10] = 100,  -- armor
        [11] = 100,  -- armor
        [12] = 100,  -- armor
        [13] = 100,  -- armor
        [14] = 100,  -- armor
        [15] = 100,  -- armor
        [16] = 100,  -- armor
        [17] = 100,  -- armor
        [18] = 100,  -- armor
    },
    [140] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
    },
    [141] = {
        [1] = 100,
        [2] = 100,
        [3] = 100
    },
    [142] = {
        [1] = 5,
    },
    [143] = {
        [1] = 1,
    },
    [144] = {
        [1] = 100,
        [2] = 100,
        [3] = 100,
    },
    [145] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
        [3] = 100,  -- armor
        [4] = 100,  -- armor
        [5] = 100,  -- armor
        [6] = 100,  -- armor
        [7] = 100,  -- armor
        [8] = 100,  -- armor 
    },  

    [146] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
        [3] = 100,  -- armor
        [4] = 100,  -- armor
        [5] = 100,  -- armor
        [6] = 100,  -- armor
        [7] = 100,  -- armor
        [8] = 100,  -- armor                                                                                            
    },

    [147] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                                                                                       
    },
    [148] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
        [3] = 100,  -- armor
        [4] = 100,  -- armor
        [5] = 100,  -- armor
        [6] = 100,  -- armor
        [7] = 100,  -- armor
        [8] = 100,  -- armor
        [9] = 100,  -- armor
        [10] = 100,  -- armor
        [11] = 100,  -- armor
        [12] = 100,  -- armor
        [13] = 100,  -- armor
        [14] = 100,  -- armor
        [15] = 100,  -- armor
        [16] = 100,  -- armor
    },
    [149] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
        [3] = 100,  -- armor
        [4] = 100,  -- armor                                                                                       
    },
    [150] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor                      
        [5] = 100,  -- armor                                                                                       
    },
    [151] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor                      
    },
    [152] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor                      
    },
    [153] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                                           
    },
    [154] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor
        [4] = 100,  -- armor
        [5] = 100,  -- armor                                             
    },
    [155] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor
        [4] = 100,  -- armor                                                                                                           
    },
    [156] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor
        [4] = 100,  -- armor                                                                                                          
    },
    [157] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor
        [4] = 100,  -- armor                                                                                                        
    },
    [158] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor  
        [5] = 100,  -- armor  
        [6] = 100,  -- armor  
        [7] = 100,  -- armor  
        [8] = 100,  -- armor  
        [9] = 100,  -- armor  
        [10] = 100,  -- armor  
        [11] = 100,  -- armor  
        [12] = 100,  -- armor  
        [13] = 100,  -- armor  
        [14] = 100,  -- armor  
        [15] = 100,  -- armor  
        [16] = 100,  -- armor  
        [17] = 100,  -- armor  
        [18] = 100,  -- armor  
        [19] = 100,  -- armor  
        [20] = 100,  -- armor  
        [21] = 100,  -- armor  
        [22] = 100,  -- armor                      
    },
    [159] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor  
        [5] = 100,  -- armor  
        [6] = 100,  -- armor  
        [7] = 100,  -- armor  
        [8] = 100,  -- armor  
        [9] = 100,  -- armor  
        [10] = 100,  -- armor  
        [11] = 100,  -- armor  
        [12] = 100,  -- armor  
        [13] = 100,  -- armor  
        [14] = 100,  -- armor  
        [15] = 100,  -- armor  
        [16] = 100,  -- armor  
        [17] = 100,  -- armor  
        [18] = 100,  -- armor  
        [19] = 100,  -- armor  
        [20] = 100,  -- armor  
        [21] = 100,  -- armor  
        [22] = 100,  -- armor                      
    },
    [160] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                    
    },
    [161] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                                 
    },
    [162] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- armor
    },
    [163] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                                 
    },
    [164] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor 
        [2] = 100,  -- armor
    },
    [165] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor  
        [5] = 100,  -- armor  
        [6] = 100,  -- armor  
        [7] = 100,  -- armor  
        [8] = 100,  -- armor                                 
    },
    [166] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor  
        [5] = 100,  -- armor  
        [6] = 100,  -- armor                                  
    },
    [167] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor                                  
    },
    [168] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                                                       
    },
    [169] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor  
        [5] = 100,  -- armor  
        [6] = 100,  -- armor  
        [7] = 100,  -- armor  
        [8] = 100,  -- armor  
        [9] = 100,  -- armor  
        [10] = 100,  -- armor  
        [11] = 100,  -- armor  
        [12] = 100,  -- armor  
        [13] = 100,  -- armor                               
    },
    [170] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor  
        [5] = 100,  -- armor  
        [6] = 100,  -- armor  
        [7] = 100,  -- armor          
        [8] = 100,  -- armor  
        [9] = 100,  -- armor          
    },
    [171] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor  
        [5] = 100,  -- armor  
        [6] = 100,  -- armor          
        [7] = 100,  -- armor         
    },
    [172] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor
        [4] = 100,  -- armor  
        [5] = 100,  -- armor  
        [6] = 100,  -- armor                                            
    },
    [173] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor                      
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor
                                            
    },
    [174] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor 
        [2] = 100,  -- armor                      
        [3] = 100,  -- armor                      
        [4] = 100,  -- armor
        [5] = 100,  -- armor  
        [6] = 100,  -- armor  
        [7] = 100,  -- armor   
        [8] = 100,  -- armor                                                           
    },
    [175] = {  -- หมวดทั่วไป
        [1] = 100,  -- weapon_dagger+1                      
        [2] = 100,  -- weapon_knife+1                      
        [3] = 100,  -- weapon_poolcue+1
                                            
    },
    [176] = {  -- หมวดทั่วไป
        [1] = 100,  -- weapon_dagger+2                      
        [2] = 100,  -- weapon_knife+2                      
        [3] = 100,  -- weapon_poolcue+2
                                            
    },
    [177] = {  -- หมวดทั่วไป
    [1] = 100,  -- weapon_dagger+3                      
    [2] = 100,  -- weapon_knife+3                      
    [3] = 100,  -- weapon_poolcue+3
                                            
    },
    [178] = {  -- หมวดทั่วไป
    [1] = 100,  --                  
    [2] = 100,  --                 
    [3] = 100,  -- 
    [4] = 100,  --                  
    [5] = 100,  --                 
    [6] = 100,  -- 
    [7] = 100,  --                  
    [8] = 100,  --                 
    [9] = 100,  --  
    [10] = 100,  --

    }, 

    [179] = {  -- หมวดทั่วไป
        [1] = 100,  --                  
        [2] = 100,  --                 
        [3] = 100,  -- 
        [4] = 100,  --                  
        [5] = 100,  --                 
        [6] = 100,  -- 
    }, 

    [180] = {  -- หมวดทั่วไป
        [1] = 100,  --                  
        [2] = 100,  --                 
        [3] = 100,  -- 
        [4] = 100,  --                  
        [5] = 100,  --                 
        [6] = 100,  -- 
    }, 
    [181] = {  -- หมวดทั่วไป
        [1] = 100,  --                  
        [2] = 100,  --                 
        [3] = 100,  --             
    }, 

    [182] = {  -- หมวดทั่วไป
        [1] = 100,  --                  
        [2] = 100,  --                 
        [3] = 100,  -- 
        [4] = 100,  --     
    }, 

    [183] = {  -- หมวดทั่วไป
        [1] = 100,  --                  
        [2] = 100,  --                 
        [3] = 100,  -- 
    }, 

    [184] = {  -- หมวดทั่วไป
        [1] = 100,  --                  
        [2] = 100,  --                 
        [3] = 100,  -- 
        [4] = 100,  --     
        [5] = 100,  --     
        [6] = 100,  --     
    }, 

    [185] = {  -- หมวดทั่วไป
        [1] = 100,  --                  
        [2] = 100,  --                 
        [3] = 100,  -- 
        [4] = 100,  --     
        [5] = 100,  --     
        [6] = 100,  --     
    }, 

    [186] = {  -- หมวดทั่วไป
        [1] = 100,  --                  
        [2] = 100,  --                 
        [3] = 100,  -- 
        [4] = 100,  --     
        [5] = 100,  --     
        [6] = 100,  --     
    },
    [187] = {  -- หมวดทั่วไป
        [1] = 100,  --                  
        [2] = 100,  --                 
        [3] = 100,  --     
    }, 
    [188] = {  -- หมวดทั่วไป
        [1] = 100,  -- armor
        [2] = 100,  -- aed
        [3] = 100,  -- drug_b
        [4] = 100,  -- drug_b
        [5] = 100,  -- drug_b
    },
    [189] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
        [2] = 100,  -- drug_a_fam (black money 0)
        [3] = 100,  -- drug_b
    },
    [190] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
    },
    [191] = {  -- หมวดงานดำ
        [1] = 100,  -- drug_a_fam (black money 300)
    },
    [192] = {  -- หมวดงานดำ
        [1] = 60,  -- drug_a_fam (black money 300)
    },
    [193] = {  -- หมวดงานดำ
        [1] = 8,
        [2] = 6,  -- drug_a_fam (black money 0)
        [3] = 4,  -- drug_b
    },
    [194] = {  -- หมวดงานดำ
        [1] = 10,  -- drug_a_fam (black money 300)
        [2] = 2,  -- drug_a_fam (black money 0)
    },
    [195] = {  -- หมวดงานดำ
        [1] = 6,  -- drug_a_fam (black money 300)
        [2] = 6,  -- drug_a_fam (black money 0)
        
    },
}                                                                                                                                           


-- Function นี้ จะ return ค่าเรท ที่มีโอกาศติด ไว้สำหรับCustomเพิ่มเรทเอง                                                                                           
-- type และ item จะส่งค่ามาเป็นตัวเลข ตามอันดับหมวดหมู่ใน Config['item_type']
Config['rate_success_function_modify'] = function(type, item)
   -- print(type, item)
   -- print(Config['rate_success'][type][item])
    return Config['rate_success'][type][item]
end


-- [[ Function นี้ทำงานหลังฝั่ง SERVER สุ่มค่าได้ สำเร็จ+++++]]
-- FUNCTION นี้ทำงานหลังจากคราฟไอเทมสุ่มสำเร็จ(ก่อนได้รับไอเทม)
----- result ผลลัพธ์จากการคราฟ แสดงผลเป็น success และ fail เท่านั้น
----- typeItem ชนิดของไอเทมที่คราฟได้ มี 4 ชนิด คือ item , money , black_money , weapon
----- item ไอเทมที่ทำการคราฟ
----- amount จำนวนไอเทมที่ผู้เล่นต้องคราฟ (ค่าที่ผู้เล่น Input มา)
----- count จำนวนไอเทมที่คราฟได้แต่ละครั้ง (จำนวนที่สิ่งที่ผู้เล่นคราฟได้ทั้งหมดเท่ากับ amount * count)
----- msgDelete ข้อความแสดงค่าไอเทมที่ถูก ได้รับไอเทมเฟล ไอเทมถูกป้องกัน (เพื่อนำไปใส่ใน LOG)
----- percent ค่าที่ที่ผู้เล่นสุ่มได้
----- percentsuccsess ค่าที่อยู่ภายในเงื่อนไขถึงจะติด
Config['action_willcraftSuccess'] = function(item, amount, count)
        -- print(result)
        -- print(typeItem)
        -- print(item)
        -- print(amount)
        -- print(count)
        -- print(msgDelete)
        -- print(percent)
        -- print(percentsuccess)
        return true -- return true เพื่อต้องการให้คราฟไอเทมสำเร็จ
end
-- FUNCTION นี้ทำงานหลังจากคราฟไอเทมสุ่มสำเร็จ(หลังได้รับไอเทม)
-- ค่าตัวแปรที่ส้งมาหลังจากสุ่มสำเร็จ
----- result ผลลัพธ์จากการคราฟ แสดงผลเป็น success และ fail เท่านั้น
----- typeItem ชนิดของไอเทมที่คราฟได้ มี 4 ชนิด คือ item , money , black_money , weapon
----- item ไอเทมที่ทำการคราฟ
----- amount จำนวนไอเทมที่ผู้เล่นต้องคราฟ (ค่าที่ผู้เล่น Input มา)
----- count จำนวนไอเทมที่คราฟได้แต่ละครั้ง (จำนวนที่สิ่งที่ผู้เล่นคราฟได้ทั้งหมดเท่ากับ amount * count)
----- msgDelete ข้อความแสดงค่าไอเทมที่ถูก ได้รับไอเทมเฟล ไอเทมถูกป้องกัน (เพื่อนำไปใส่ใน LOG)
----- percent ค่าที่ที่ผู้เล่นสุ่มได้
----- percentsuccsess ค่าที่อยู่ภายในเงื่อนไขถึงจะติด
Config['action_aftercraft'] = function(result, typeItem, item, amount, count, msgDelete, percent, percentsuccess, xPlayer)
        
    if result == 'success' then
        result = 'สำเร็จ'
        if typeItem == 'weapon' then
            local sendToDiscord = '' .. xPlayer.name .. ' คราฟ ' .. result .. ' ' .. item .. ' จำนวน ' .. count .. ' โอกาสที่ติด ' .. percentsuccess .. ' > ' .. percent .. '\nวัสดุที่ใช้ \n'..msgDelete
            -- TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'Craftingweaponsuccess', sendToDiscord, xPlayer.source, '^2')
            pcall(function()
                -- exports.nc_discordlogs:Discord({
                --     webhook = 'Craftingweaponsuccess',
                --     xPlayer = xPlayer,
                --     title = '',
                --     message = '',
                    
                --     description = sendToDiscord,
                    
                --     color = '05FF00',
                --     screenshot = true
                -- })
                exports['azael_dc-serverlogs']:insertData({
                    event = 'discord_weapon',
                    content = sendToDiscord,
                    source = xPlayer.source,
                    coords = GetEntityCoords(GetPlayerPed(xPlayer.source)),
                    color = 7,
                })
            end)

            if xPlayer.job.name == 'council' then
                pcall(function()

                    exports['azael_dc-serverlogs']:insertData({
                        event = 'craft_council',
                        content = sendToDiscord,
                        source = xPlayer.source,
                        coords = GetEntityCoords(GetPlayerPed(xPlayer.source)),
                        color = 7,
                    })
                end)
            end
        else
            local xItem = xPlayer.getInventoryItem(item)
            local sendToDiscord = '' .. xPlayer.name .. ' คราฟ ' .. result .. ' ' .. xItem.label .. ' จำนวน ' .. count .. ' โอกาสที่ติด ' .. percentsuccess .. ' > ' .. percent .. '\nวัสดุที่ใช้ \n'..msgDelete
            -- TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'Craftingsuccess', sendToDiscord, xPlayer.source, '^2')
            pcall(function()
                -- exports.nc_discordlogs:Discord({
                --     webhook = 'Craftingsuccess',
                --     xPlayer = xPlayer,
                --     title = '',
                --     message = '',
                    
                --     description = sendToDiscord,
                    
                --     color = '05FF00',
                --     screenshot = true
                -- })
                exports['azael_dc-serverlogs']:insertData({
                    event = 'discord_item',
                    content = sendToDiscord,
                    source = xPlayer.source,
                    coords = GetEntityCoords(GetPlayerPed(xPlayer.source)),
                    color = 7,
                })
            end)
            if xPlayer.job.name == 'council' then
                pcall(function()

                    exports['azael_dc-serverlogs']:insertData({
                        event = 'craft_council',
                        content = sendToDiscord,
                        source = xPlayer.source,
                        coords = GetEntityCoords(GetPlayerPed(xPlayer.source)),
                        color = 7,
                    })
                end)
            end
        end
    else
        result = 'แตก'
        if typeItem == 'weapon' then
            local sendToDiscord = '' .. xPlayer.name .. ' คราฟ ' .. result .. ' ' .. item .. ' จำนวน ' .. count .. ' โอกาสที่ติด ' .. percentsuccess .. ' > ' .. percent .. '\nวัสดุที่ใช้ \n'..msgDelete
            --TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'discord_fail_weapon', sendToDiscord, xPlayer.source, '^2')
            pcall(function()
                -- exports.nc_discordlogs:Discord({
                --     webhook = 'Craftingweaponfail',
                --     xPlayer = xPlayer,
                --     title = '',
                --     message = '',
                    
                --     description = sendToDiscord,
                    
                --     color = 'FF0F0F',
                --     screenshot = true
                -- })
                exports['azael_dc-serverlogs']:insertData({
                    event = 'discord_fail_weapon',
                    content = sendToDiscord,
                    source = xPlayer.source,
                    coords = GetEntityCoords(GetPlayerPed(xPlayer.source)),
                    color = 7,
                })
            end)
            if xPlayer.job.name == 'council' then
                pcall(function()

                    exports['azael_dc-serverlogs']:insertData({
                        event = 'craft_council',
                        content = sendToDiscord,
                        source = xPlayer.source,
                        coords = GetEntityCoords(GetPlayerPed(xPlayer.source)),
                        color = 7,
                    })
                end)
            end
        else
            local xItem = xPlayer.getInventoryItem(item)
            local sendToDiscord = '' .. xPlayer.name .. ' คราฟ ' .. result .. ' ' .. xItem.label .. ' จำนวน ' .. count .. ' โอกาสที่ติด ' .. percentsuccess .. ' > ' .. percent .. '\nวัสดุที่ใช้ \n'..msgDelete
           -- TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'discord_fail_item', sendToDiscord, xPlayer.source, '^2')
            pcall(function()
                -- exports.nc_discordlogs:Discord({
                --     webhook = 'Craftingfail',
                --     xPlayer = xPlayer,
                --     title = '',
                --     message = '',
                    
                --     description = sendToDiscord,
                    
                --     color = 'FF0F0F',
                --     screenshot = true
                -- })
                exports['azael_dc-serverlogs']:insertData({
                    event = 'discord_fail_item',
                    content = sendToDiscord,
                    source = xPlayer.source,
                    coords = GetEntityCoords(GetPlayerPed(xPlayer.source)),
                    color = 7,
                })
            end)

            if xPlayer.job.name == 'council' then
                pcall(function()
                    exports['azael_dc-serverlogs']:insertData({
                        event = 'craft_council',
                        content = sendToDiscord,
                        source = xPlayer.source,
                        coords = GetEntityCoords(GetPlayerPed(xPlayer.source)),
                        color = 7,
                    })
                end)
            end
        end
    end
-- print(result)
-- print(typeItem)
-- print(item)
-- print(amount)
-- print(count)
-- print(msgDelete)
-- print(percent)
-- print(percentsuccess)
end
