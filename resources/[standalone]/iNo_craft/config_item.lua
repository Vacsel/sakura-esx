    -- รายละเอียดไอเทม TYPE และของภายใน TYPE นั้นๆ
Config['item_type'] = {
    [1] = {                                                         -- เลขหมวดหมู่ ห้ามซ้ำกัน
        Name = 'ข้าว',                                           -- หมวดหมู่
        Item = {
    
            {
                name = 'food_rice_eel',                                 -- ชื่อไอเท็ม
                rarecount = false,                                  -- จำกัดจำนวนในการคราฟท์ ต้องปรับเป็น ture และต้องไปตั้งใน SQL ino_craft_rarecount // type คือหมวดหมู่ // item // count
                count = 1,                                          -- จะนวนที่จะได้รับต่อการคราฟท์
                cost = 500,                                       -- เงินเขียว
                -- black_money = 100,                               -- เงินแดง // เงินผิดกฎหมาย
                rate = 100,                                         -- rate ที่แสดงบน UI (ไม่เกี่ยวข้องกับเรทจริงแค่เพียงโชว์ในUI)
                duration = 5,                                    -- เวลาในการคราฟท์
                maxCount = 100,                                       -- จำนวนการกดคราฟท์ได้สูงสุด
                -- protect = {                                      -- Use = ไอเทมที่ใช้ป้องกันแตก , name = item ที่ถูกป้องกัน(ถ้ามีในส่วนผสม)
                --     {use = 'Admin' , name = 'weapon_bottle'}
                -- },
                failItem = {                                     -- ไอเทมที่ได้ (เมื่อคราฟท์ล้มเหลว 1 ครั้ง)
                    -- {name = 'p_silverbars', amount =100},
                    -- {name = 'p_silverbars', amount =30},
                    -- {name = '', amount =12},
                    -- {name = '', amount =11}    
                },
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'p_silverbars', amount =100},
                    -- {name = 'p_silverbars', amount =30},
                },
                itemNeed = {                                        -- ส่วนประกอบ (คราฟแล้วหายไป)
                    {name = 'ricepro', amount =3},
                    {name = 'fish_eel', amount =3},
                    {name = 'wasabi', amount =3},
                    {name = 'wakamei_seaweed', amount =3},

                }
            },
        
            {
                name = 'food_melon_rice',
                rarecount = false,
                count = 1,
                cost = 300,
                rate = 100,                              -- rate ที่แสดงบน UI (ไม่เกี่ยวข้องกับเรทจริงแค่เพียงโชว์ในUI)
                duration = 5,
                maxCount = 100,
                itemNeed = {
                    {name = 'ricepro', amount = 1},
                    {name = 'wasabi', amount = 1},
                    {name = 'wakamei_seaweed', amount = 1},
                },
            },

        

        }
    },

	[2] = {
        Name = "อาวุธเริ่มต้น", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_bottle"),
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                maxCount = 1,
                itemNeed = {
                    {name = "card_weapon_free", amount = 1},
                },
            },
            {
                name = string.upper("weapon_bat"),
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
              
                itemNeed = {
                    {name = "card_weapon_free", amount = 1},
                },
            },
            {
                name = string.upper("weapon_bottle"),
                duration = 5,
                rate = 100,
                count = 1,
                cost = 60000,
               
                itemNeed = {
                    {name = "vibranium", amount = 1},
                    {name = "bronze_gem", amount = 400},
                    {name = "silver_gem", amount = 300},
                    {name = "gold_gem", amount = 200},
                },
            },
            {
                name = string.upper("weapon_bat"),
                duration = 5,
                rate = 100,
                count = 1,
                cost = 60000,
              
                itemNeed = {
                    {name = "vibranium", amount = 1},
                    {name = "bronze_gem", amount = 400},
                    {name = "silver_gem", amount = 300},
                    {name = "gold_gem", amount = 200},
                },
            },
        }
    },
	[3] = {
        Name = "อาวุธ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_knife"),
                duration = 10,
                rate = 100,
                count = 1,
                cost = 100000,
              
                equipment = {
                    {name = 'bp_knife', amount =1},
        
                },
                itemNeed = {
                    {name = "vibranium", amount = 5},
                    {name = "box_craft_weapon", amount = 30},
                    {name = "sakura_coin", amount = 200},
                    {name = "WEAPON_BOTTLE", amount = 1},
                },
            },
            {
                name = string.upper("weapon_dagger"),
                duration = 10,
                rate = 100,
                count = 1,
                cost = 100000,
               
                equipment = {
                    { name = 'bp_dagger', amount =1},
                },
                itemNeed = {
                    {name = "vibranium", amount = 5},
                    {name = "box_craft_weapon", amount = 30},
                    {name = "sakura_coin", amount = 200},
                    {name = "WEAPON_BOTTLE", amount = 1},
                },
            },
            {
                name = string.upper("weapon_poolcue"),
                duration = 10,
                rate = 100,
                count = 1,
                cost = 100000,
              
                equipment = {
                    { name = 'bp_poolcue', amount =1},
                },
                itemNeed = {
                    {name = "vibranium", amount = 5},
                    {name = "box_craft_weapon", amount = 50},
                    {name = "sakura_coin", amount = 200},
                    {name = "WEAPON_BAT", amount = 1},
                },
            },
            {
                name = string.upper("weapon_machete"),
                duration = 10,
                rate = 100,
                count = 1,
                cost = 100000,
              
                equipment = {
                    { name = 'bp_machete', amount =1},
                },
                itemNeed = {
                    {name = "vibranium", amount = 5},
                    {name = "box_craft_weapon", amount = 30},
                    {name = "sakura_coin", amount = 200},
                },
            },
            {
                name = string.upper("weapon_knuckle"),
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
               
                equipment = {
                    { name = 'bp_knuckle', amount =1},
                },
                itemNeed = {
                    {name = "vibranium", amount = 5},
                    {name = "box_craft_weapon", amount = 30},
                    {name = "sakura_coin", amount = 200},
                },
            },
        }
    },
    [4] = {
        Name = "คราฟทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 2000,
              
                itemNeed = {
                    {name = "steel", amount = 20},
                    {name = "goldbar", amount = 10},
                    {name = "sakura_coin", amount = 20},
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 3000,
               
                itemNeed = {
                    {name = "sakura_coin", amount = 50},
                },
            },
            {
                name = "vibranium",
                duration = 5,
                rate = 50,
                count = 1,
                black_money = 2000,
       
                itemNeed = {
                    {name = "diamond", amount = 20},
                    {name = "tin", amount = 20},
                    {name = "cement", amount = 10},
                    {name = "sakura_coin", amount = 20},
                },
            },
            {
                name = "platinum_gem",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    {name = "bronze_gem", amount = 4000},
                    {name = "silver_gem", amount = 3000},
                    {name = "gold_gem", amount = 2000},
                    {name = "sakura_coin", amount = 20},
                },
            },
            {
                name = "silver_gem",
                duration = 5,
                rate = 100,
                count = 100,
                cost = 100,
             
                itemNeed = {
                    {name = "bronze_gem", amount = 2000},
                },
            },
            {
                name = "gold_gem",
                duration = 5,
                rate = 100,
                count = 100,
                cost = 100,

                itemNeed = {
                    {name = "silver_gem", amount = 500},
                },
            },
            {
                name = "sakura-crystal",
                duration = 5,
                rate = 50,
                count = 1,
                cost = 30000,
  
                itemNeed = {
                    {name = "blue-crystal", amount = 30},
                    {name = "red-crystal", amount = 30},
                    {name = "yellow-crystal", amount = 30},
                    {name = "sakura_coin", amount = 200},
                },
            },
            {
                name = "sakura-crystal",
                duration = 5,
                rate = 50,
                count = 1,
                cost = 30000,
         
                itemNeed = {
                    {name = "black-crystal", amount = 5},
                    {name = "sakura_coin", amount = 200},
                },
            },
            {
                name = "anti-potion",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
          
                itemNeed = {
                    {name = "steel", amount = 100},
                    {name = "copperrod", amount = 100},
                    {name = "goldbar", amount = 100},
                    {name = "sakura_coin", amount = 100},
                },
            },
            {
                name = 'box_craft_weapon',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 2000,
               
                itemNeed = {
                    {name = "cement", amount = 10},
                    {name = "goldbar", amount = 10},
                    {name = "steel", amount = 20},
                    {name = "wood_bon", amount = 20},
                    {name = "copperrod", amount = 30},
                    {name = "sakura_coin", amount = 50},
                },
            },
            {
                name = 'take2_card',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 5000,
          
                itemNeed = {
                    {name = "sakura_coin", amount = 50},
                },
            },
            {
                name = "lockpick",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    {name = "steel", amount = 20},
                    {name = "sakura_coin", amount = 20},
                },
            },
            {
                name = "key_ghost",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
          
                itemNeed = {
                    {name = "steel", amount = 10},
                    {name = "sakura_coin", amount = 20},
                },
            },
            {
                name = "bypasskeycard",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 10000,
                itemNeed = {
                    {name = "devil_key", amount = 2},
                    {name = "obsidian", amount = 2},
                    {name = "diamond", amount = 50},
                    {name = "tin", amount = 50},
                    {name = "sakura_coin", amount = 200},
                },
            },
            {
                name = "gps_jam",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 1000,
                --maxCount = 10,
                itemNeed = {
                    {name = "steel", amount = 40},
                    {name = "copperrod", amount = 40},
                    {name = "sakura_coin", amount = 50},
                },
            },
            {
                name = "ticket_blackmoney_10k",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    {name = "ticket_blackmoney_1k", amount = 12},
                },
            },
            {
                name = "ticket_blackmoney_100k",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    {name = "ticket_blackmoney_10k", amount = 12},
                },
            },
            {
                name = "scancard",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 2000,
                itemNeed = {
                    {name = "goldbar", amount = 30},
                    {name = "yellow-crystal", amount = 10},
                    {name = "blue-crystal", amount = 10},
                    {name = "red-crystal", amount = 10},
                    {name = "sakura_coin", amount = 100},
            
                },
            },
            {
                name = "mc_item",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'mc_card', amount =1},
                },    
                itemNeed = {
                    { name = "sakura_coin", amount = 40 },
                    { name = "bronze_gem", amount = 1000 },
                    { name = "silver_gem", amount = 1000 },
                    { name = "gold_gem", amount = 1000 },
                    { name = "steel", amount = 30 }
                },
            },
            {
                name = "card_clubhouse",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 100000,
                equipment = {
                    { name = 'mc_card', amount =1},
                },    
                itemNeed = {
                    { name = "broke_patch_1_per", amount = 50 },
                },
            },
            {
                name = "aed_npc",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                equipment = {},    
                itemNeed = {
                    { name = "sakura_coin", amount = 50 },
                },
            },
        }
    },
	[5] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "create_gang_card",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    {name = "copperrod", amount = 200},
                    {name = "goldbar", amount = 100},
                    {name = "steel", amount = 200},
                    {name = "diamond", amount = 100},
                    {name = "wood_bon", amount = 200},
                    {name = "sakura_coin", amount = 500},
                    {name = "tin", amount = 100},
                },
            },
            {
                name = "join_gang_card",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    {name = "copperrod", amount = 40},
                    {name = "goldbar", amount = 40},
                    {name = "diamond", amount = 20},
                    {name = "wood_bon", amount = 40},
                    {name = "steel", amount = 50},
                    {name = "tin", amount = 20},
                    {name = "sakura_coin", amount = 100},
                },
            },
            {
                name = "leave_gang_card",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    {name = "copperrod", amount = 40},
                    {name = "goldbar", amount = 40},
                    {name = "diamond", amount = 20},
                    {name = "wood_bon", amount = 40},
                    {name = "steel", amount = 50},
                    {name = "tin", amount = 20},
                    {name = "sakura_coin", amount = 100},
                },
            },
            {
                name = "up_slot_card",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 100000,
                itemNeed = {
                    {name = "gypsum", amount = 20},
                    {name = "sakura_coin", amount = 20000},
                },
            },
            {
                name = "key_pink",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                equipment = {
                    { name = 'gang_card', amount =1},
                },
                itemNeed = {
                    {name = "diamond", amount = 20},
                    {name = "tin", amount = 20},
                    {name = "steel", amount = 20},
                    {name = "sakura_coin", amount = 20},
                },
            },
            {
                name = "key_pink",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                equipment = {
                    { name = 'family_card_c', amount =1},
                },
                itemNeed = {
                    {name = "diamond", amount = 20},
                    {name = "tin", amount = 20},
                    {name = "steel", amount = 20},
                    {name = "sakura_coin", amount = 20},
                },
            },
            {
                name = "key_pink",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                equipment = {
                    { name = 'mc_card', amount =1},
                },
                itemNeed = {
                    {name = "diamond", amount = 20},
                    {name = "tin", amount = 20},
                    {name = "steel", amount = 20},
                    {name = "sakura_coin", amount = 20},
                },
            },
            {
                name = "radio",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                equipment = {
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    {name = "silver_gem", amount = 300},
                    {name = "tin", amount = 50},
                    {name = "sakura_coin", amount = 100},
                },
            },
            {
                name = "cooldown_gang",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {},
            },
            {
                name = "cooldown_job",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500000,
                itemNeed = {},
            },
        }
    },
	[6] = {
        Name = "บลูปริ้น", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'bp_knife',
                duration = 10,
                rate = 50,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "vibranium", amount = 3},
                    {name = "cement", amount = 10},
                    {name = "gold_gem", amount = 100},
                    {name = "silver_gem", amount = 200},
                    {name = "bronze_gem", amount = 300},
                    {name = "sakura_coin", amount = 200},
                },
            },
            {
                name = 'bp_dagger',
                duration = 10,
                rate = 50,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "vibranium", amount = 3},
                    {name = "cement", amount = 10},
                    {name = "gold_gem", amount = 100},
                    {name = "silver_gem", amount = 200},
                    {name = "bronze_gem", amount = 300},
                    {name = "sakura_coin", amount = 200},
                },
            },
            {
                name = 'bp_poolcue',
                duration = 10,
                rate = 50,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "vibranium", amount = 3},
                    {name = "cement", amount = 10},
                    {name = "gold_gem", amount = 100},
                    {name = "silver_gem", amount = 200},
                    {name = "bronze_gem", amount = 300},
                    {name = "sakura_coin", amount = 200},
                },
            },
            {
                name = 'bp_machete',
                duration = 10,
                rate = 50,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "vibranium", amount = 3},
                    {name = "cement", amount = 10},
                    {name = "gold_gem", amount = 100},
                    {name = "silver_gem", amount = 200},
                    {name = "bronze_gem", amount = 300},
                    {name = "sakura_coin", amount = 200},
                },
            },
            {
                name = 'bp_knuckle',
                duration = 10,
                rate = 50,
                count = 1,
                cost = 20000,
           
                itemNeed = {
                    {name = "vibranium", amount = 3},
                    {name = "cement", amount = 10},
                    {name = "gold_gem", amount = 100},
                    {name = "silver_gem", amount = 200},
                    {name = "bronze_gem", amount = 300},
                    {name = "sakura_coin", amount = 200},
                },
            },
        }
    },
	[7] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "drug_a",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 500,
                equipment = {
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    {name = "cap_z", amount = 1},
                    {name = "cap_y", amount = 1},
                    {name = "weed_pro", amount = 1},
                    {name = "katom_pro", amount = 1},
                    {name = "sakura_coin", amount = 40},
                },
            },
            {
                name = "drug_a_fam",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 500,
                equipment = {
                    { name = 'family_card_c', amount =1},
                },
                itemNeed = {
                    {name = "cap_z", amount = 1},
                    {name = "cap_y", amount = 1},
                    {name = "weed_pro", amount = 1},
                    {name = "katom_pro", amount = 1},
                    {name = "sakura_coin", amount = 40},
                },
            },
            {
                name = "drug_a_fam",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 0,
                equipment = {
                    { name = 'family_card_c', amount =1},
                },
                itemNeed = {
                    {name = "drug_a", amount = 1},
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 1000,
                itemNeed = {
                    {name = "cap_x", amount = 1},
                    {name = "cap_y", amount = 1},
                    {name = "weed_pro", amount = 1},
                    {name = "katom_pro", amount = 1},
                    {name = "sakura_coin", amount = 20},
                },
            },
        }
    },
	[8] = {
        Name = "ยา", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "medikit",
                duration = 1,
                rate = 100,
                count = 1,
                cost = 250,
            
                itemNeed = {},
            },
            {
                name = "painkiller_medic",
                duration = 1,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {},
            }
        }
    },
    [9] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "radio_job",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
           
                itemNeed = {},
            },
            {
                name = "fixkit_job",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
            
                itemNeed = {},
            },
            {
                name = "painkiller_job",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = "aed_job",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = "armor_job",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = "snockle_job",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = "mre",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100,
                itemNeed = {},
            },
        }
    },
	[10] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "radio_job",
                duration = 1,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = "fixkit_job",
                duration = 1,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = "snockle_job",
                duration = 1,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = "painkiller_job",
                duration = 1,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = "armor_job",
                duration = 1,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = "aed_job",
                duration = 1,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = "mre",
                duration = 1,
                rate = 100,
                count = 1,
                cost = 100,
                itemNeed = {},
            },
        }
    },
    [11] = {
        Name = "อาวุธ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_stungun"),
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = string.upper("weapon_pumpshotgun"),
                count = 250,
                duration = 5,
                rate = 100,
                cost = 30000,
                itemNeed = {
                    -- {name = "police_ticket", amount = 20},
                },
            },
            {
                name = string.upper("weapon_nightstick"),
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
            {
                name = "dynamite",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {},
            },
        }
    },
    [12] = {
        Name = "กระสุน", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "12gauge",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100,
                itemNeed = {
                    -- {name = "police_ticket", amount = 20},
                },
            },
        }
    },
	[13] = {
        Name = "ทั่วไป (สภา)", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "contact_card",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 1000,                  
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "painkiller_job",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 0,                  
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "aed_job",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 0,          
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },                
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "armor_job",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 0,              
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },            
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "gang_card",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "mre",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 1000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "fixkit_job",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 500,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_pain",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 10000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_pain_50",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 5000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_safe",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 100,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_armor_50",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 50000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_armor",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 50000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "bag_caracara",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 1000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "bag_garduian",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 1000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "radio_job",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 10000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "acc_a7_hks_armband_evo",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 20000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "family_card",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 1000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "family_card_c",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_aed",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 25000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_aed_50",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 25000,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "bag_card_bp",
                duration = 5,
                rate = 100,	
                count = 1,
                rate_show = true,
                -- cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount = 1 },
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "mc_card",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 0,                  
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            
        }
    },
    
	[14] = {
        Name = "ทั่วไป (สำหรับแก๊ง)", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "painkiller",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 300,           
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },            
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "armor",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 500,               
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },            
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_craft_weapon",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 200,              
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },            
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 500,            
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },            
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_set_11_gang",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 300,           
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },            
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_set_15_gang",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 300,             
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },            
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_set_20_gang",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 300,            
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },            
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "box_set_25_gang",
                duration = 5,
                rate = 100,    
                count = 1,
                -- cost = 300,            
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },            
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            -- {
            --     name = "box_set_30_gang",
            --     duration = 5,
            --     rate = 100,    
            --     count = 1,
            --     cost = 300,            
            --     equipment = {
            --         { name = 'keycard_cc', amount =1},
            --     },            
            --     itemNeed = {
            --         -- { name = "police_ticket", amount = 20 },
            --     },
            -- },
        }
    },
    
	[15] = {
        Name = "ลำตัว", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "katana_japan_1",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "katana_japan_2",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "katana_japan_3",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "ots_bag_cat_1",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "ots_bag_cat_2",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "ots_bag_cat_3",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },      
        }
    },
    [16] = {
        Name = "หัว", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "kitsune_mask_1",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            }, 
            {
                name = "kitsune_mask_2",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            }, 
            {
                name = "meow_ots_1",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "meow_ots_2",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "meow_ots_3",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "meow_ots_4",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "ninja_neko_1",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "ninja_neko_2",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "ots_oni_mask_1",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "ots_oni_mask_2",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "ots_oni_mask_3",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "ots_oni_mask_4",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "ots_oni_mask_5",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "scroll_ninja_1",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "scroll_ninja_2",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "tengu_mask",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "coo_katana_1",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "coo_katana_3",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
        }
    },
    [17] = {
        Name = "มือ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "wagasa_umbella_1",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
            {
                name = "wagasa_umbella_2",
                duration = 5,
                rate = 20,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
        }
    },
    [18] = {
        Name = "หลัง", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "bag",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                       
                itemNeed = {
                    { name = "fashion_card", amount = 8 },
                },
            },
            {
                name = "aidenta_sakurawing_fashion",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 8 },
                },
            },
        }
    },
    [19] = {
        Name = "เท้า", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "babyshop_fashion_shibe",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card", amount = 5 },
                },
            },
        }
    },
    [20] = {
        Name = "แลกเหรียญ AFK", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "box_craft_weapon",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 1000,                          
                itemNeed = {
                    { name = "afk_coin", amount = 5 },
                },
            },
            {
                name = "gacha_newplayer",
                duration = 5,
                count = 10,
                rate = 100,    
                cost = 100,                          
                itemNeed = {
                    { name = "afk_coin", amount = 3 },
                },
            },
        }
    },
    
	[21] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "fashion_card",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 2000,                          
                itemNeed = {
                    { name = "afk_coin", amount = 5 },
                },
            },
            {
                name = "box_craft_weapon",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 1000,                         
                itemNeed = {
                    { name = "afk_coin", amount = 5 },
                },
            },
            {
                name = "gacha_newplayer",
                duration = 5,
                count = 10,
                rate = 100,    
                cost = 100,                         
                itemNeed = {
                    { name = "afk_coin", amount = 3 },
                },
            },
            {
                name = "seven70_box",
                duration = 5,
                count = 1,
                rate = 100,    
                cost = 200000,                       
                itemNeed = {
                    { name = "afk_coin", amount = 500 },
                },
            },
        }
    },
    [22] = {
        Name = "ของซื้อขาย", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "bandage_pack_30",
                duration = 1,
                rate = 100,    
                count = 1,
                cost = 6500,
                itemNeed = {
                    -- { name = "afk_coin", amount = 5 },
                },
            },
            {
                name = "bandage_pack_50",
                duration = 1,
                rate = 100,    
                count = 1,
                cost = 10000,
                itemNeed = {
                    -- { name = "afk_coin", amount = 5 },
                },
            },
            {
                name = "bandage_pack_100",
                duration = 1,
                rate = 100,    
                count = 1,
                cost = 20000,                         
                itemNeed = {
                    -- { name = "afk_coin", amount = 5 },
                },
            },
            {
                name = "skin_ambulance",
                duration = 1,
                rate = 100,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    -- { name = "afk_coin", amount = 5 },
                },
            },
            
        }
    },
    [23] = {
        Name = "อาวุธ +1", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_dagger+1"),
                duration = 5,
                rate = 40,    
                count = 1,
                cost = 20000,
                failItem = {
                    {name = string.upper('weapon_dagger'), amount = 1},
                },
                itemNeed = {
                    { name = "platinum_gem", amount = 3 },
                    { name = "sakura_coin", amount = 100 },
                    { name = "vibranium", amount = 1 },
                    { name = "box_craft_weapon", amount = 10 },
                    { name = string.upper('weapon_dagger'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knife+1"),
                duration = 5,
                rate = 40,    
                count = 1,
                cost = 20000,
                failItem = {
                    { name = string.upper('weapon_knife'), amount = 1},
                 
                },
                itemNeed = {
                    { name = "platinum_gem", amount = 3 },
                    { name = "sakura_coin", amount = 100 },
                    { name = "vibranium", amount = 1 },
                    { name = "box_craft_weapon", amount = 10 },
                    { name = string.upper('weapon_knife'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_poolcue+1"),
                duration = 5,
                rate = 40,    
                count = 1,
                cost = 20000,
                failItem = {
                    { name = string.upper('weapon_poolcue'), amount = 1},
                   
                },
                itemNeed = {
                    { name = "platinum_gem", amount = 3 },
                    { name = "sakura_coin", amount = 100 },
                    { name = "vibranium", amount = 1 },
                    { name = "box_craft_weapon", amount = 10 },
                    { name = string.upper('weapon_poolcue'), amount = 1 },
                },
            },
            {
                name = 'WEAPON_MACHETE+1',
                duration = 5,
                count = 1,
                rate = '?',    
                rate_show = false,
                cost = 20000,         
                failItem = {
               
                    { name = string.upper('WEAPON_MACHETE'), amount = 1},
                },
                itemNeed = {
                    { name = "platinum_gem", amount = 3 },
                    { name = "sakura_coin", amount = 100 },
                    { name = "vibranium", amount = 1 },
                    { name = "box_craft_weapon", amount = 10 },
                    { name = "WEAPON_MACHETE", amount = 1 },
                },
            },
            {
                name = 'WEAPON_KNUCKLE+1',
                duration = 5,
                count = 1,
                rate = '?',    
                rate_show = false,
                cost = 20000,       
                failItem = {
                    { name = string.upper('WEAPON_KNUCKLE'), amount = 1},
                  
                },                    
                itemNeed = {
                    { name = "platinum_gem", amount = 3 },
                    { name = "sakura_coin", amount = 100 },
                    { name = "vibranium", amount = 1 },
                    { name = "box_craft_weapon", amount = 10 },
                    { name = "WEAPON_KNUCKLE", amount = 1 },
                },
            },
        }
    },
    [24] = {
        Name = "อาวุธ +2", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_dagger+2"),
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 30000,
                failItem = {
                   
                    { name = string.upper('weapon_dagger+1'), amount = 1},
                },
                itemNeed = {
                    { name = "platinum_gem", amount = 5 },
                    { name = "sakura_coin", amount = 200 },
                    { name = "vibranium", amount = 2 },
                    { name = "box_craft_weapon", amount = 15 },
                    { name = string.upper('weapon_dagger+1'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knife+2"),
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 30000,
                failItem = {
                    { name = string.upper('weapon_knife+1'), amount = 1},
                  
                },
                itemNeed = {
                    { name = "platinum_gem", amount = 5 },
                    { name = "sakura_coin", amount = 200 },
                    { name = "vibranium", amount = 2 },
                    { name = "box_craft_weapon", amount = 15 },
                    { name = string.upper('weapon_knife+1'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_poolcue+2"),
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 30000,
                failItem = {
                   -- [string.upper('weapon_poolcue+1')] = 1,
                    { name = string.upper('weapon_poolcue+1'), amount = 1},
                },
                itemNeed = {
                    { name = "platinum_gem", amount = 5 },
                    { name = "sakura_coin", amount = 200 },
                    { name = "vibranium", amount = 2 },
                    { name = "box_craft_weapon", amount = 15 },
                    { name = string.upper('weapon_poolcue+1'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_machete+2"),
                duration = 5,
                count = 1,
                rate = '?',    
                rate_show = false,
                cost = 30000,    
                failItem = {
                    { name = string.upper('weapon_machete+1'), amount = 1},
                   -- [string.upper('weapon_machete+1')] = 1,
                },                    
                itemNeed = {
                    { name = "platinum_gem", amount = 5 },
                    { name = "sakura_coin", amount = 60 },
                    { name = "vibranium", amount = 2 },
                    { name = "box_craft_weapon", amount = 15 },
                    { name = string.upper('weapon_machete+1'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knuckle+2"),
                duration = 5,
                count = 1,
                rate = '?',     
                rate_show = false,
                cost = 30000,           
                failItem = {
                    { name = string.upper('weapon_knuckle+1'), amount = 1},
                  --  [string.upper('weapon_knuckle+1')] = 1,
                },                
                itemNeed = {
                    { name = "platinum_gem", amount = 5 },
                    { name = "sakura_coin", amount = 60 },
                    { name = "vibranium", amount = 2 },
                    { name = "box_craft_weapon", amount = 15 },
                    { name = string.upper('weapon_knuckle+1'), amount = 1 },
                },
            },
        }
    },
    
	[25] = {
        Name = "อาวุธ +3", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_dagger+3"),
                duration = 5,
                count = 1,
                rate = '?',     
                rate_show = false,
                cost = 40000, 
                failItem = {
                   -- [string.upper('weapon_dagger+1')] = 1,
                    { name = string.upper('weapon_dagger+1'), amount = 1},
                },
                -- broken_block_item_rate = {
                --     { name = 'anti-potion', amount =1}00,
                -- },
                -- broken_can_to_get_fail_name = true,
                itemNeed = {
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura_coin", amount = 300 },
                    { name = "vibranium", amount = 3 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = string.upper('weapon_dagger+2'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knife+3"),
                duration = 5,
                count = 1,
                rate = '?',  
                rate_show = false,
                cost = 40000,                        
                failItem = {
                    { name = string.upper('weapon_knife+1'), amount = 1},
                  --  [string.upper('weapon_knife+1')] = 1,
                },
                -- broken_block_item_rate = {
                --     { name = 'anti-potion', amount =1}00,
                -- },
                -- broken_can_to_get_fail_name = true,
                itemNeed = {
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura_coin", amount = 300 },
                    { name = "vibranium", amount = 3 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = string.upper('weapon_knife+2'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_poolcue+3"),
                duration = 5,
                count = 1,
                rate = '?',    
                rate_show = false,
                cost = 40000,
                failItem = {
                    { name = string.upper('weapon_poolcue+1'), amount = 1},
                   -- [string.upper('weapon_poolcue+1')] = 1,
                },
                -- broken_block_item_rate = {
                --     { name = 'anti-potion', amount =1}00,
                -- },
                -- broken_can_to_get_fail_name = true,
                itemNeed = {
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura_coin", amount = 300 },
                    { name = "vibranium", amount = 3 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = string.upper('weapon_poolcue+2'), amount = 1 },
                },
            },
            -- {
            --     name = string.upper("weapon_machete+3"),
            --     duration = 5,
            --     rate = 50,    
            --     count = 1,
            --     cost = {
            --         { name = 'money'] = 99999999,
            --     },                            
            --     itemNeed = {
            --         { name = "ticketsupport", amount = 9999999999 },
            --     },
            -- },
            -- {
            --     name = string.upper("weapon_knuckle+3"),
            --     duration = 5,
            --     rate = 50,    
            --     count = 1,
            --     cost = {
            --         { name = 'money'] = 99999999,
            --     },                            
            --     itemNeed = {
            --         { name = "ticketsupport", amount = 9999999999 },
            --     },
            -- },
        }
    },
    
	[26] = {
        Name = "รถกิจกรรมโปรโมท", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'box_tenf2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100,                         
                itemNeed = {
                    { name = "car_part_body", amount = 2 },
                    { name = "car_part_engine", amount = 1 },
                    { name = "car_part_streer", amount = 2 },
                    { name = "car_part_wheel", amount = 2 },
                },
            },
            {
                name = 'bag_pr_ratloader2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100,                         
                itemNeed = {
                    { name = "car_pr_body", amount = 2 },
                    { name = "car_pr_engine", amount = 1 },
                    { name = "car_pr_steering", amount = 2 },
                    { name = "car_pr_wheel", amount = 2 },
                },
            }
        }
    },
    [27] = {
        Name = "บลูปริ้น (การ์ด)", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "bp_knife",
                duration = 10,
                rate = 50,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "card_bp", amount = 1 },
                },
            },
            {
                name = "bp_dagger",
                duration = 10,
                rate = 50,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "card_bp", amount = 1 },
                },
            },
            -- {
            --     name = string.upper("weapon_golfclub"),
            --     duration = 10,
            --     rate = 50,    
            --     count = 1,
            --     cost = {
            --         { name = 'money'] = 50000,
            --     },
            --     equipment = {
            --         { name = 'bp_golf', amount =1},
            --     },
            --     itemNeed = {
            --         { name = "vibranium", amount = 5 },
            --         { name = "box_craft_weapon", amount = 30 },
            --         { name = "sakura_coin", amount = 200 },
            --         { name = string.upper('WEAPON_BAT'), amount = 1 },
            --     },
            -- },
            {
                name = "bp_poolcue",
                duration = 10,
                rate = 50,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "card_bp", amount = 1 },
                },
            },
            {
                name = "bp_machete",
                duration = 10,
                rate = 50,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "card_bp", amount = 1 },
                },
            },
            {
                name = "bp_knuckle",
                duration = 10,
                rate = 50,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "card_bp", amount = 1 },
                },
            },
        }
    },
    
	[28] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'house_key_8', amount =1},
                },    
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 3000,      
                equipment = {
                    { name = 'house_key_8', amount =1},
                },                        
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [29] = {
        Name = "กูญแจบ้าน", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "house_key_1",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,         
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },                
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "house_key_2",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,      
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },                
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "house_key_3",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,      
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },                
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "house_key_4",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,      
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },                
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "house_key_5",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,      
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },                
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "house_key_6",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,      
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },                
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "house_key_7",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,      
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },                
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "house_key_8",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,      
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },                
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "house_key_9",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,      
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },                
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            {
                name = "house_key_10",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,      
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },                
                itemNeed = {
                    -- { name = "police_ticket", amount = 20 },
                },
            },
            
      
        }
    },
    [30] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'house_key_7', amount =1},
                },    
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 3000,       
                equipment = {
                    { name = 'house_key_7', amount =1},
                },                        
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [31] = {
        Name = "รถประกอบ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "car_ss9_part_coupon",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "carpart_body_ss9", amount = 2 },
                    { name = "carpart_engine_ss9", amount = 1 },
                    { name = "carpart_steering_ss9", amount = 2 },
                    { name = "carpart_wheel_ss9", amount = 2 },
                },
            },
        }
    },
    [32] = {
        Name = "หัว", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "tasty3_kixs",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                                     
                itemNeed = {
                    { name = "fashion_card_ss9", amount = 40 },
                },
            },
        }
    },
    [33] = {
        Name = "ไหล่", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "tasty4_kixs",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                        
                itemNeed = {
                    { name = "fashion_card_ss9", amount = 30 },
                },
            },
            {
                name = "tasty5_kixs",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                        
                itemNeed = {
                    { name = "fashion_card_ss9", amount = 30 },
                },
            },
        }
    },
    [34] = {
        Name = "แขน", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "reawx_cny_lanterns_01_prop",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card_ss9", amount = 30 },
                },
            },
        }
    },
    [35] = {
        Name = "หลัง", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "reawx_cny_dragon_dance_05",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card_ss9", amount = 30 },
                },
            },
        }
    },
    
	[36] = {
        Name = "เท้า", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "tasty1_kixs",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card_ss9", amount = 30 },
                },
            },
            {
                name = "tasty2_kixs",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card_ss9", amount = 30 },
                },
            },
        }
    },
    [37] = {
        Name = "คูปองเกมมิ่งเกียร์", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "bax_rd_aed_x2",
                duration = 5,
                rate = 100,    
                count = 20,
                cost = 0,
                                    
                itemNeed = {
                    { name = "gaming_gear_coupon", amount = 1 },
                },
            },
            {
                name = "box_black_money_x2",
                duration = 5,
                rate = 100,    
                count = 20,
                cost = 0,
                                    
                itemNeed = {
                    { name = "gaming_gear_coupon", amount = 1 },
                },
            },
            -- Other similar items are structured similarly
        }
    },
    [38] = {
        Name = "Point Donate SS1", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "box_rd_carparts",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
    
                itemNeed = {
                    { name = "point_sk_donate", amount = 500 },
                },
            },
        }
    },
    [39] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "armor",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 2000,
                equipment = {
                    { name = 'house_key_6', amount =1},
                },  
                itemNeed = {
                    {name = "steel", amount = 10},
                    {name = "goldbar", amount = 10},
                    {name = "sakura_coin", amount = 10},
                },
            },
            {
                name = "aed",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 3000,    
                equipment = {
                    { name = 'house_key_6', amount =1},
                },                    
                itemNeed = {
                    {name = "sakura_coin", amount = 30},
                },
            },
        }
    },
    [40] = {
        Name = "กูญแจอพาร์ทเม้นท์", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "ap_key_101",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_102",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_103",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_104",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_105",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_106",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_107",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_108",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_109",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_110",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_111",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_112",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_113",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_114",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_115",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_116",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_117",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_118",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_119",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_120",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_121",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_122",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
           
        }
    },
    
	[41] = {
        Name = "กล่องสุ่มชิ้นส่วนรถ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "box_rd_part_ss4_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                  
                itemNeed = {
                    {name = "carpart_wheel_ss4", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss4_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                         
                itemNeed = {
                    {name = "carpart_steering_ss4", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss4_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                       
                itemNeed = {
                    {name = "carpart_engine_ss4", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss4_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                          
                itemNeed = {
                    {name = "carpart_body_ss4", amount = 1}
                },
            },
        }
    },
    [42] = {
        Name = "อาวุธ +1", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_dagger+1"),
                duration = 5,
                count = 1,
                rate = 60,    
                rate_show = true,
                cost = 100000,
                failItem = {
                    {name = string.upper('weapon_dagger'), amount = 1},
                },
                itemNeed = {
                    {name = "platinum_gem", amount = 3},
                    {name = "sakura_coin", amount = 100},
                    {name = "vibranium", amount = 1},
                    {name = "box_craft_weapon", amount = 10},
                    {name = string.upper('weapon_dagger'), amount = 1},
                },
            },
            {
                name = string.upper("weapon_knife+1"),
                duration = 5,
                count = 1,
                rate = 60,    
                rate_show = true,
                cost = 100000,
                failItem = {
                    {name = string.upper('weapon_knife'), amount = 1},
                },
                itemNeed = {
                    {name = "platinum_gem", amount = 3},
                    {name = "sakura_coin", amount = 100},
                    {name = "vibranium", amount = 1},
                    {name = "box_craft_weapon", amount = 10},
                    {name = string.upper('weapon_knife'), amount = 1},
                },
            },
            {
                name = string.upper("weapon_poolcue+1"),
                duration = 5,
                count = 1,
                rate = 60,    
                rate_show = true,
                cost = 100000,
                failItem = {
                    {name = string.upper('weapon_poolcue'), amount = 1},
                },
                itemNeed = {
                    {name = "platinum_gem", amount = 3},
                    {name = "sakura_coin", amount = 100},
                    {name = "vibranium", amount = 1},
                    {name = "box_craft_weapon", amount = 10},
                    {name = string.upper('weapon_poolcue'), amount = 1},
                },
            },
            {
                name = 'WEAPON_MACHETE+1',
                duration = 5,
                count = 1,
                rate = '?',
                rate_show = false,
                cost = 100000,
                failItem = {
                    {name = 'WEAPON_MACHETE', amount = 1},
                },
                itemNeed = {
                    {name = "platinum_gem", amount = 3},
                    {name = "sakura_coin", amount = 100},
                    {name = "vibranium", amount = 1},
                    {name = "box_craft_weapon", amount = 10},
                    {name = "WEAPON_MACHETE", amount = 1},
                },
            },
            {
                name = 'WEAPON_KNUCKLE+1',
                duration = 5,
                count = 1,
                rate = '?',
                rate_show = false,
                cost = 100000,    
                failItem = {
                    {name = "WEAPON_KNUCKLE", amount = 1},
                },
                itemNeed = {
                    {name = "platinum_gem", amount = 3},
                    {name = "sakura_coin", amount = 100},
                    {name = "vibranium", amount = 1},
                    {name = "box_craft_weapon", amount = 10},
                    {name = "WEAPON_KNUCKLE", amount = 1},
                },
            },
        }
    },
    [43] = {
        Name = "อาวุธ +2", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_dagger+2"),
                duration = 5,
                count = 1,
                rate = 50,    
                rate_show = true,
                cost = 200000,
                failItem = {
                    {name = string.upper('weapon_dagger+1'), amount = 1},
                },
                itemNeed = {
                    {name = "platinum_gem", amount = 5},
                    {name = "sakura_coin", amount = 200},
                    {name = "vibranium", amount = 2},
                    {name = "box_craft_weapon", amount = 15},
                    {name = string.upper('weapon_dagger+1'), amount = 1},
                },
            },
            {
                name = string.upper("weapon_knife+2"),
                duration = 5,
                count = 1,
                rate = 50,    
                rate_show = true,
                cost = 200000,
                failItem = {
                    {name = string.upper('weapon_knife+1'), amount = 1},
                },
                itemNeed = {
                    {name = "platinum_gem", amount = 5},
                    {name = "sakura_coin", amount = 200},
                    {name = "vibranium", amount = 2},
                    {name = "box_craft_weapon", amount = 15},
                    {name = string.upper('weapon_knife+1'), amount = 1},
                },
            },
            {
                name = string.upper("weapon_poolcue+2"),
                duration = 5,
                count = 1,
                rate = 50,    
                rate_show = true,
                cost = 200000,
                failItem = {
                    {name = string.upper('weapon_poolcue+1'), amount = 1},
                },
                itemNeed = {
                    {name = "platinum_gem", amount = 5},
                    {name = "sakura_coin", amount = 200},
                    {name = "vibranium", amount = 2},
                    {name = "box_craft_weapon", amount = 15},
                    {name = string.upper('weapon_poolcue+1'), amount = 1},
                },
            },
            {
                name = string.upper("weapon_machete+2"),
                duration = 5,
                count = 1,
                rate = '?',    
                rate_show = false,
                cost = 200000,               
                failItem = {
                    {name = string.upper('weapon_machete+1'), amount = 1},
                },        
                itemNeed = {
                    {name = "platinum_gem", amount = 5},
                    {name = "sakura_coin", amount = 200},
                    {name = "vibranium", amount = 2},
                    {name = "box_craft_weapon", amount = 15},
                    {name = string.upper('weapon_machete+1'), amount = 1},
                },
            },
            {
                name = string.upper("weapon_knuckle+2"),
                duration = 5,
                count = 1,
                rate = '?',    
                rate_show = false,
                cost = 200000,          
                failItem = {
                    {name = string.upper('weapon_knuckle+1'), amount = 1},
                },                        
                itemNeed = {
                    {name = "platinum_gem", amount = 5},
                    {name = "sakura_coin", amount = 200},
                    {name = "vibranium", amount = 2},
                    {name = "box_craft_weapon", amount = 15},
                    {name = string.upper('weapon_knuckle+1'), amount = 1},
                },
            },
        }
    },
    [44] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "armor",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 2000,
                equipment = {
                    {name = 'house_key_5', amount = 1},
                },    
                itemNeed = {
                    {name = "steel", amount = 10},
                    {name = "goldbar", amount = 10},
                    {name = "sakura_coin", amount = 10},
                },
            },
            {
                name = "aed",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 3000,     
                equipment = {
                    {name = 'house_key_5', amount = 1},
                },                        
                itemNeed = {
                    {name = "sakura_coin", amount = 30},
                },
            },
        }
    },
    [45] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "drug_a",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                black_money = 300,
                equipment = {
                    {name = 'house_key_5', amount = 1},
                    {name = 'key_pink', amount = 1},
                },
                itemNeed = {
                    {name = "cap_z", amount = 1},
                    {name = "cap_y", amount = 1},
                    {name = "weed_pro", amount = 1},
                    {name = "katom_pro", amount = 1},
                    {name = "sakura_coin", amount = 30},
                },
            },
            {
                name = "drug_b",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 500,
                equipment = {
                    {name = 'house_key_5', amount = 1},
                },
                itemNeed = {
                    {name = "cap_x", amount = 1},
                    {name = "cap_y", amount = 1},
                    {name = "weed_pro", amount = 1},
                    {name = "katom_pro", amount = 1},
                    {name = "sakura_coin", amount = 30},
                },
            },
        }
    },
    [46] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "drug_a",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                black_money = 300,
                equipment = {
                    {name = 'house_key_6', amount = 1},
                    {name = 'key_pink', amount = 1},
                },
                itemNeed = {
                    {name = "cap_z", amount = 1},
                    {name = "cap_y", amount = 1},
                    {name = "weed_pro", amount = 1},
                    {name = "katom_pro", amount = 1},
                    {name = "sakura_coin", amount = 30},
                },
            },
            {
                name = "drug_b",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 500,
                equipment = {
                    {name = 'house_key_6', amount = 1},
                },
                itemNeed = {
                    {name = "cap_x", amount = 1},
                    {name = "cap_y", amount = 1},
                    {name = "weed_pro", amount = 1},
                    {name = "katom_pro", amount = 1},
                    {name = "sakura_coin", amount = 30},
                },
            },
        }
    },
    
    ---------------------------------------------
	[47] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a",
                duration = 5,
                rate = 100,    
                count = 1,
                black_money = 300,
                equipment = {
                    { name = 'house_key_8', amount =1},
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'house_key_8', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [48] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'house_key_205_apartment', amount =1},
                },
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 3000,
                equipment = {
                    { name = 'house_key_205_apartment', amount =1},
                },
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [49] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a_fam",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 300,
                equipment = {
                    { name = 'family_card_c', amount =1},
                    { name = 'house_key_205_apartment', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_a_fam",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 0,
                equipment = {
                    { name = 'family_card_c', amount =1},
                    { name = 'house_key_205_apartment', amount =1},
                },
                itemNeed = {
                    { name = "drug_a", amount = 1 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
         
                equipment = {
                    { name = 'house_key_205_apartment', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [50] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 300,
                equipment = {
                    { name = 'house_key_7', amount =1},
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'house_key_7', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [51] = {
        Name = "Level 3", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'house_key_1', amount =1},
                },
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 3000,
                equipment = {
                    { name = 'house_key_1', amount =1},
                },
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [52] = {
        Name = "Level 4", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 300,
                equipment = {
                    { name = 'house_key_1', amount =1},
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'house_key_1', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [53] = {
        Name = "แพ็คของ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = 'box_cement',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "cement", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_bonsai',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "wood_bon", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_copper',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "copperrod", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_gold',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "goldbar", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_steel',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "steel", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_diamond',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "diamond", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_tin',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "tin", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_gravel',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "gravel", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_blue-crystal',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "blue-crystal", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_red-crystal',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "red-crystal", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_yellow-crystal',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "yellow-crystal", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            
            
        }
    },
    [54] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'house_key_2', amount =1},
                },
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 3000,
                equipment = {
                    { name = 'house_key_2', amount =1},
                },
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [55] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 300,
                equipment = {
                    { name = 'house_key_2', amount =1},
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'house_key_2', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [56] = {
        Name = "Point Donate SS2", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "corsita",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "point_sk_donate_v2", amount = 10000 },
                },
            },
            {
                name = "jugular",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "point_sk_donate_v2", amount = 5000 },
                },
            },
            {
                name = "krieger",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "point_sk_donate_v2", amount = 3000 },
                },
            },
        }
    },
    [57] = {
        Name = "รถประกอบ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "shinobri_card",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "carpart_body_ss9", amount = 2 },
                    { name = "carpart_engine_ss9", amount = 1 },
                    { name = "carpart_steering_ss9", amount = 2 },
                    { name = "carpart_wheel_ss9", amount = 2 },
                },
            },
            {
                name = "molecule_card",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "carpart_body_ss9", amount = 2 },
                    { name = "carpart_engine_ss9", amount = 1 },
                    { name = "carpart_steering_ss9", amount = 2 },
                    { name = "carpart_wheel_ss9", amount = 2 },
                },
            },
        }
    },
    [58] = {
        Name = "กล่องสุ่มชิ้นส่วนรถ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "box_rd_part_ss4_x2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    { name = "carpart_body_ss4", amount = 1 },
                },
            },
            {
                name = "box_rd_part_ss4_x2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    { name = "carpart_engine_ss4", amount = 1 },
                },
            },
            {
                name = "box_rd_part_ss4_x2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    { name = "carpart_steering_ss4", amount = 1 },
                },
            },
            {
                name = "box_rd_part_ss4_x2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    { name = "carpart_wheel_ss4", amount = 1 },
                },
            },
            {
                name = "box_rd_part_ss4_x2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    { name = "box_rd_part_ss4_x2", amount = 1 },
                },
            },
        }
    },
    [59] = {
        Name = "หัว", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "pikaboo_azukicat_angel",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 30 },
                },
            },
            {
                name = "pikaboo_azukicat_hero",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                        
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 30 },
                },
            },
        }
    },
    [60] = {
        Name = "ไหล่", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "pikaboo_azukicat_angel",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                        
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 30 },
                },
            },
            {
                name = "pikaboo_azukicat_devil",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                         
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 20 },
                },
            },
            {
                name = "pikaboo_azukicat_arm_right",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                           
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 20 },
                },
            },
            {
                name = "pikaboo_azukicat_arm_left",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                                
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 20 },
                },
            },
        }
    },
    [61] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'house_key_4', amount =1},
                },
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 3000,
                equipment = {
                    { name = 'house_key_4', amount =1},
                },
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    
	[62] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 300,
                equipment = {
                    { name = 'house_key_4', amount =1},
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'house_key_4', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [63] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'apartment_key_211', amount =1},
                },
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 3000,
                equipment = {
                    { name = 'apartment_key_211', amount =1},
                },
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [64] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a_fam",
                duration = 5,
                rate = 100,
                count = 1,
                black_money= 300,
                equipment = {
                    { name = 'family_card_c', amount =1},
                    { name = 'apartment_key_211', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_a_fam",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 0,
                equipment = {
                    { name = 'family_card_c', amount =1},
                    { name = 'apartment_key_211', amount =1},
                },
                itemNeed = {
                    { name = "drug_a", amount = 1 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'apartment_key_211', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [65] = {
        Name = "อาวุธ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = string.upper("weapon_bottle"),
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = string.upper("weapon_bat"),
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = 'bag_weapon_dagger',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = 'bag_weapon_knife',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = 'bag_weapon_poolcue',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
        }
    },
    [66] = {
        Name = "ชิ้นส่วน Mini6", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = 'carpartsboxpromote',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "car_part_body", amount = 2 },
                },
            },
            {
                name = 'carpartsboxpromote',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "car_part_engine", amount = 2 },
                },
            },
            {
                name = 'carpartsboxpromote',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "car_part_streer", amount = 2 },
                },
            },
            {
                name = 'carpartsboxpromote',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "car_part_wheel", amount = 2 },
                },
            }
        }
    },
    [67] = {
        Name = "ชิ้นส่วน Ratloader", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = 'box_car_promote',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "car_pr_body", amount = 2 },
                },
            },
            {
                name = 'box_car_promote',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "car_pr_engine", amount = 2 },
                },
            },
            {
                name = 'box_car_promote',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "car_pr_steering", amount = 2 },
                },
            },
            {
                name = 'box_car_promote',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "car_pr_wheel", amount = 2 },
                },
            },
        }
    },
    
	[68] = {
        Name = "ทั่วไป (สำหรับครอบครัว)", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "bag_benefit_10_new",
                duration = 5,
                rate = 100,
                count = 1,
                -- cost = 300,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "bag_benefit_family_pack",
                duration = 5,
                rate = 100,
                count = 1,
                -- cost = 300,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
        }
    },
    [69] = {
        Name = "แลก Ticket Support", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "bag_cash",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 8 },
                },
            },
            {
                name = "event_gachapon",
                duration = 5,
                count = 40,
                rate = 100,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 8 },
                },
            },
            {
                name = "box_promote",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 16 },
                },
            },
            {
                name = "box_rd_armor",
                duration = 5,
                rate = 100,
                count = 10,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 16 },
                },
            },
            {
                name = "bax_rd_aed",
                duration = 5,
                rate = 100,
                count = 10,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 16 },
                },
            },
            {
                name = "drill",
                duration = 5,
                rate = 100,
                count = 2,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 16 },
                },
            },
            {
                name = "event_gachapon",
                duration = 5,
                rate = 100,
                count = 300,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 25 },
                },
            },
            {
                name = "box_craft_weapon",
                duration = 5,
                rate = 100,
                count = 2,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 25 },
                },
            },
            {
                name = "box_tw_swag_14day",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 25 },
                },
            },
            {
                name = "box_tw_grafficity_14day",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 25 },
                },
            },
            {
                name = "box_part_ring_rainbow",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 30 },
                },
            },
            {
                name = "box_part_skin_swag",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 30 },
                },
            },
            {
                name = "box_part_skin_panda",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 35 },
                },
            },
            {
                name = "box_rd_armor",
                duration = 5,
                rate = 100,
                count = 35,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 35 },
                },
            },
            {
                name = "bax_rd_aed",
                duration = 5,
                rate = 100,
                count = 35,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 35 },
                },
            },
            {
                name = "box_craft_vibrenium",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 35 },
                },
            },
            {
                name = "starter_pack",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 40 },
                },
            },
            {
                name = "drill",
                duration = 5,
                rate = 100,
                count = 10,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 40 },
                },
            },
            {
                name = "twitter_swag",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 60 },
                },
            },
            {
                name = "twitter_grafficity",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ticketsupport", amount = 60 },
                },
            },
        }
    },
    [70] = {
        Name = "กุญแจตู้บ้าน", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "house_key_1_vault",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "house_key_2_vault",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "house_key_3_vault",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "house_key_4_vault",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "house_key_5_vault",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "house_key_6_vault",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "house_key_7_vault",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "house_key_8_vault",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "house_key_9_vault",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "house_key_10_vault",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
        }
    },
    [71] = {
        Name = "กุญแจตู้อพาร์ทเม้นท์", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "ap_key_vault_101",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_102",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_103",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_104",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_105",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_106",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_107",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_108",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_109",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_110",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_111",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_112",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_113",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_114",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_115",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_116",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_117",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_118",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_119",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_120",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_121",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
            {
                name = "ap_key_vault_122",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                equipment = {
                    { name = 'keycard_cc', amount =1},
                },
                itemNeed = {},
            },
        }
    },
    [72] = {
        Name = "อาวุธ +3", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = string.upper("weapon_dagger+3"),
                duration = 5,
                count = 1,
                rate = '?',  
                rate_show = false,
                cost = 300000,
                failItem = {
                    { name = string.upper('weapon_dagger+1'), amount = 1},
                    { name = 'sakura-failed', amount = 1},
                  
                },
                itemNeed = {
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura_coin", amount = 300 },
                    { name = "vibranium", amount = 3 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = string.upper('weapon_dagger+2'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knife+3"),
                duration = 5,
                count = 1,
                rate = '?',  
                rate_show = false,
                cost = 300000,
                failItem = {
                    { name = string.upper('weapon_knife+1'), amount = 1},
                    { name = 'sakura-failed', amount = 1},
                   
                },
                itemNeed = {
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura_coin", amount = 300 },
                    { name = "vibranium", amount = 3 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = string.upper('weapon_knife+2'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_poolcue+3"),
                duration = 5,
                count = 1,
                rate = '?',  
                rate_show = false,
                cost = 300000,
                failItem = {
                 
                    { name = string.upper('weapon_poolcue+1'), amount = 1},
                    { name = 'sakura-failed', amount = 1},
                },
                itemNeed = {
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura_coin", amount = 300 },
                    { name = "vibranium", amount = 3 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = string.upper('weapon_poolcue+2'), amount = 1 },
                },
            },
        }
    },
    [73] = {
        Name = "อาวุธ +3", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = string.upper("weapon_dagger+3"),
                duration = 5,
                count = 1,
                rate = '?',
                rate_show = false,
                cost = 300000,
                failItem = {
                    { name = string.upper('weapon_dagger+2'), amount = 1},
                    { name = 'sakura-failed', amount = 1},

                },
                itemNeed = {
                    { name = 'anti-potion', amount = 1 },
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura_coin", amount = 300 },
                    { name = "vibranium", amount = 3 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = string.upper('weapon_dagger+2'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knife+3"),
                duration = 5,
                count = 1,
                rate = '?',  
                rate_show = false,
                cost = 300000,
                failItem = {

                    { name = string.upper('weapon_knife+2'), amount = 1},
                    { name = 'sakura-failed', amount = 1},
                },
                itemNeed = {
                    { name = 'anti-potion', amount = 1 },
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura_coin", amount = 300 },
                    { name = "vibranium", amount = 3 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = string.upper('weapon_knife+2'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_poolcue+3"),
                duration = 5,
                count = 1,
                rate = '?',  
                rate_show = false,
                cost = 300000,
                failItem = {
    
                    { name = string.upper('weapon_poolcue+2'), amount = 1},
                    { name = 'sakura-failed', amount = 1},
                },
                itemNeed = {
                    { name = 'anti-potion', amount = 1 },
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura_coin", amount = 300 },
                    { name = "vibranium", amount = 3 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = string.upper('weapon_poolcue+2'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_machete+3"),
                duration = 5,
                count = 1,
                rate = '?',  
                rate_show = false,
                cost = 300000,
                failItem = {
    
                    { name = string.upper('weapon_machete+2'), amount = 1},
                    -- { name = 'sakura-failed', amount = 1},
                },
                itemNeed = {
                    { name = 'vibranium', amount = 3 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = "Radiant", amount = 2 },
                    { name = "anti-potion", amount = 1 },
                    { name = "sakura_coin", amount = 500 },
                    { name = string.upper('weapon_machete+2'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knuckle+3"),
                duration = 5,
                count = 1,
                rate = '?',  
                rate_show = false,
                cost = 300000,
                failItem = {
    
                    { name = string.upper('weapon_knuckle+2'), amount = 1},
                    -- { name = 'sakura-failed', amount = 1},
                },
                itemNeed = {
                    { name = 'vibranium', amount = 3 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = "Radiant", amount = 2 },
                    { name = "anti-potion", amount = 1 },
                    { name = "sakura_coin", amount = 500 },
                    { name = string.upper('weapon_knuckle+2'), amount = 1 },
                },
            },
        }
    },
    -- [74] = {
    --     Name = "SAKURA FAIL", -- // ชื่อหมวดหมู่
    
    --     Item = {
    --         {
    --             name = string.upper("weapon_dagger+3"),
    --             duration = 5,
    --             count = 1,
    --             rate = 100,
    --             rate_show = false,
    --             cost = 100000,
    --             itemNeed = {
    --                 { name = 'sakura-failed', amount = 20 },
    --                 { name = string.upper('weapon_dagger+2'), amount = 1 },
    --             },
    --         },
    --         {
    --             name = string.upper("weapon_knife+3"),
    --             duration = 5,
    --             count = 1,
    --             rate = 100,
    --             rate_show = false,
    --             cost = 100000,
    --             itemNeed = {
    --                 { name = 'sakura-failed', amount = 20 },
    --                 { name = string.upper('weapon_knife+2'), amount = 1 },
    --             },
    --         },
    --         {
    --             name = string.upper("weapon_poolcue+3"),
    --             duration = 5,
    --             count = 1,
    --             rate = 100,
    --             rate_show = false,
    --             cost = 100000,
    --             itemNeed = {
    --                 { name = 'sakura-failed', amount = 20 },
    --                 { name = string.upper('weapon_poolcue+2'), amount = 1 },
    --             },
    --         },
    --     }
    -- },
    [75] = {
        Name = "[GC] HALLOWEEN SKIN", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = 'halloween_skin_dagger_gc',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'halloween_skin_knife_gc',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'halloween_skin_poolcue_gc',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
        }
    },
    [76] = {
        Name = "ชิงบ้าน", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "hammer",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 800000,
                itemNeed = {
                    { name = "foring", amount = 10 },
                },
            },
            {
                name = "shied",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 800000,
                itemNeed = {
                    { name = "foring", amount = 10 },
                },
            },
            {
                name = "ring",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 800000,
                itemNeed = {
                    { name = "foring", amount = 10 },
                },
            },
            {
                name = "scepter",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 800000,
                itemNeed = {
                    { name = "foring", amount = 10 },
                },
            },
        }
    },
    [77] = {
        Name = "เควส", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "box_rd_cash",
                duration = 5,
                rate = 100,
                count = 30,
                cost = 0,
                rate_show = false,
                itemNeed = {
                    { name = "quest_card", amount = 5 },
                },
            },
            {
                name = "event_gachapon",
                duration = 5,
                rate = 100,
                count = 100,
                cost = 0,
                rate_show = false,
                itemNeed = {
                    { name = "quest_card", amount = 5 },
                },
            },
            {
                name = "box_rd_miner",
                duration = 5,
                rate = 100,
                count = 30,
                cost = 0,
                rate_show = false,
                itemNeed = {
                    { name = "quest_card", amount = 10 },
                },
            },
            {
                name = "box_rd_sakura",
                duration = 5,
                rate = 100,
                count = 15,
                cost = 0,
                rate_show = false,
                itemNeed = {
                    { name = "quest_card", amount = 15 },
                },
            },
            {
                name = "box_gem",
                duration = 5,
                rate = 100,
                count = 30,
                cost = 0,
                rate_show = false,
                itemNeed = {
                    { name = "quest_card", amount = 20 },
                },
            },
            {
                name = "box_rd_armor",
                duration = 5,
                rate = 100,
                count = 10,
                cost = 0,
                rate_show = false,
                itemNeed = {
                    { name = "quest_card", amount = 25 },
                },
            },
            {
                name = "bax_rd_aed",
                duration = 5,
                rate = 100,
                count = 10,
                cost = 0,
                rate_show = false,
                itemNeed = {
                    { name = "quest_card", amount = 25 },
                },
            },
            {
                name = "box_black_money",
                duration = 5,
                rate = 100,
                count = 20,
                cost = 0,
                rate_show = false,
                itemNeed = {
                    { name = "quest_card", amount = 30 },
                },
            },
            {
                name = "box_rd_general",
                duration = 5,
                rate = 100,
                count = 3,
                cost = 0,
                rate_show = false,
                itemNeed = {
                    { name = "quest_card", amount = 35 },
                },
            },
            {
                name = "box_craft_vibrenium",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                rate_show = false,
                itemNeed = {
                    { name = "quest_card", amount = 40 },
                },
            },
        }
    },
    [78] = {
        Name = "หลัง", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "pikaboo_azukicat_bag",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                                     
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 40 },
                },
            },
        }
    },
    [79] = {
        Name = "SAMURAI SKIN", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'samurai_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'samurai_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'samurai_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
        }
    },
    [80] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'house_key_3', amount =1},
                },
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 3000,
                equipment = {
                    { name = 'house_key_3', amount =1},
                },
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [81] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 300,
                equipment = {
                    { name = 'house_key_3', amount =1},
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'house_key_3', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [82] = {
        Name = "บัตรประกัน", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "insurance__weapon_card",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "sakura-crystal", amount = 2 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "insurance_radio_card",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                equipment = {
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "sakura-crystal", amount = 2 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "insurance_revolver_card",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "sakura-crystal", amount = 8 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
        }
    },
    [83] = {
        Name = "อุปกรณ์สตอรี่", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "chipset",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 100000,
                equipment = {
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "copperrod", amount = 100 },
                    { name = "wood_bon", amount = 100 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "emp_citizen",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                equipment = {
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "chipset", amount = 1 },
                    { name = "sakura-crystal", amount = 5 },
                    { name = "wood_bon", amount = 200 },
                    { name = "copperrod", amount = 200 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "capsule_hyperloop",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                equipment = {
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "chipset", amount = 1 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "door_fix",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 25000,
                equipment = {
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "grim_wood", amount = 3 },
                    { name = "sakura_coin", amount = 200 },
                },
            },
            {
                name = "bodybag",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 1500,
                itemNeed = {
                    {name = "sakura_coin", amount = 100},
                },
            },
            {
                name = "dynamite_gang",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 25000,
                equipment = {
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    {name = "grim_wood", amount = 3},
                    {name = "sakura_coin", amount = 200},
                },
            },
        }
    },
    [84] = {
        Name = "HALLOWEEN SKIN", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'halloween_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "skinbtpss2", amount = 1 },
                },
            },
            {
                name = 'halloween_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "skinbtpss2", amount = 1 },
                },
            },
            {
                name = 'halloween_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "skinbtpss2", amount = 1 },
                },
            },
        }
    },
    [85] = {
        Name = "การ์ดนับไฟต์", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "card_fight_up",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 800000,
                itemNeed = {
                    { name = "foring", amount = 10 },
                },
            },
            {
                name = "card_fight_de",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 800000,
                itemNeed = {
                    { name = "foring", amount = 10 },
                },
            },
        }
    },
    [86] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'house_key_9', amount =1},
                },    
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 3000,      
                equipment = {
                    { name = 'house_key_9', amount =1},
                },                        
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [87] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a",
                duration = 5,
                rate = 100,    
                count = 1,
                black_money = 300,
                equipment = {
                    { name = 'house_key_9', amount =1},
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'house_key_9', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [88] = {
        Name = "เท้า", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "pikaboo_azukicat_leg_left",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                                      
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 30 },
                },
            },
            {
                name = "pikaboo_azukicat_leg_right",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                                         
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 30 },
                },
            },
            {
                name = "pikaboo_azukicat_shoe_left",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                                     
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 30 },
                },
            },
            {
                name = "pikaboo_azukicat_shoe_right",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                                   
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 30 },
                },
            },
            {
                name = "pikaboo_azukicat_cheerleader",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                                  
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 40 },
                },
            },
            {
                name = "pikaboo_azukicat_car",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                            
                itemNeed = {
                    { name = "fashion_card_ss4", amount = 40 },
                },
            },
        }
    },
    [89] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'house_key_10', amount =1},
                },    
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 3000,      
                equipment = {
                    { name = 'house_key_10', amount =1},
                },                        
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [90] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a",
                duration = 5,
                rate = 100,    
                count = 1,
                black_money = 300,
                equipment = {
                    { name = 'house_key_10', amount =1},
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'house_key_10', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [91] = {
        Name = "ลูกกวาด", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "jarp_nangrum",
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "candy", amount = 100 },
                },
            },
            {
                name = "jarp_krasue",
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "candy", amount = 100 },
                },
            },
            {
                name = "jarp_pob",
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "candy", amount = 100 },
                },
            },
            {
                name = "jarp_krahang",
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "candy", amount = 100 },
                },
            },
            {
                name = "jarp_kuman",
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "candy", amount = 100 },
                },
            },
-------------------
            {
                name = "yokaionibackdds",
                duration = 5,
                rate = 50,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "candy", amount = 150 },
                },
            },
            {
                name = "yokaionimaskdds",
                duration = 5,
                rate = 50,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "candy", amount = 150 },
                },
            },
            {
                name = "yokaionipoodds",
                duration = 5,
                rate = 50,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "candy", amount = 150 },
                },
            },
        }
    },
    [92] = {
        Name = "PUMPKIN", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "jarp_nangrum",
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "pumpkin", amount = 5 },
                },
            },
            {
                name = "jarp_krasue",
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "pumpkin", amount = 5 },
                },
            },
            {
                name = "jarp_pob",
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "pumpkin", amount = 5 },
                },
            },
            {
                name = "jarp_krahang",
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "pumpkin", amount = 5 },
                },
            },
            {
                name = "jarp_kuman",
                duration = 5,
                rate = 30,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "pumpkin", amount = 5 },
                },
            },
-------------------------------
            {
                name = "yokaionibackdds",
                duration = 5,
                rate = 50,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "pumpkin", amount = 7 },
                },
            },
            {
                name = "yokaionimaskdds",
                duration = 5,
                rate = 50,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "pumpkin", amount = 7 },
                },
            },
            {
                name = "yokaionipoodds",
                duration = 5,
                rate = 50,    
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "pumpkin", amount = 7 },
                },
            },
        }
    },

    [93] = {
        Name = "รถ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "shorttruckpack",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "truckpart2", amount = 2 },
                    { name = "truckpart3", amount = 1 },
                    { name = "truckpart1", amount = 2 },
                    { name = "truckpart4", amount = 2 },
                },
            },
            {
                name = "hakuchou2pack",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "hakuchoupart3", amount = 2 },
                    { name = "hakuchoupart1", amount = 1 },
                    { name = "hakuchoupart2", amount = 2 },
                    { name = "hakuchoupart4", amount = 2 },
                },
            },
            {
                name = "shorttruckrandomparts",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "truckpart1", amount = 2 },
                },
            },
            {
                name = "shorttruckrandomparts",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "truckpart2", amount = 2 },
                },
            },
            {
                name = "shorttruckrandomparts",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "truckpart3", amount = 2 },
                },
            },
            {
                name = "shorttruckrandomparts",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "truckpart4", amount = 2 },
                },
            },
            --[[  ]]
            {
                name = "hakuchourandomparts",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "hakuchoupart1", amount = 2 },
                },
            },
            {
                name = "hakuchourandomparts",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "hakuchoupart2", amount = 2 },
                },
            },
            {
                name = "hakuchourandomparts",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "hakuchoupart3", amount = 2 },
                },
            },
            {
                name = "hakuchourandomparts",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "hakuchoupart4", amount = 2 },
                },
            }
        }
    },
    [94] = {
        Name = "Story", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "chipset",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 30000,
                itemNeed = {
                    { name = "chipset_shard", amount = 6 },
                },
            },
            {
                name = "emp_citizen",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 30000,
                itemNeed = {
                    { name = "emp_shard", amount = 6 },
                },
            },
            {
                name = "capsule_hyperloop",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 30000,
                itemNeed = {
                    { name = "hyperloop_shard", amount = 6 },
                },
            },
        }
    },
    [95] = {
        Name = "Skin Weapon Lv.1", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "daruma_skin_dagger",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "daruma_skin_shard", amount = 4 },
                },
            },
            {
                name = "daruma_skin_knife",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "daruma_skin_shard", amount = 4 },
                },
            },
            {
                name = "daruma_skin_poolcue",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "daruma_skin_shard", amount = 4 },
                },
            },
            {
                name = "sakura_skin_dagger",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "sakura_skin_shard", amount = 4 },
                },
            },
            {
                name = "sakura_skin_knife",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "sakura_skin_shard", amount = 4 },
                },
            },
            {
                name = "sakura_skin_poolcue",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "sakura_skin_shard", amount = 4 },
                },
            },
        }
    },

    [96] = {
        Name = "Fashion", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "moodengbox",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "zindear_moodeng", amount = 2 },
                },
            },
            {
                name = "moodengbox",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "zindear_moodeng_arm", amount = 2 },
                },
            },
            {
                name = "moodengbox",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "zindear_moodeng_bag", amount = 2 },
                },
            },
            {
                name = "moodengbox",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "zindear_moodeng_head", amount = 2 },
                },
            },
            {
                name = "moodengbox",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "zindear_moodeng_l", amount = 2 },
                },
            },
            {
                name = "moodengbox",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "zindear_moodeng_r", amount = 2 },
                },
            },
            {
                name = "moodengbox",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    { name = "zindear_moodeng_top", amount = 2 },
                },
            },
        }
    },

    [97] = {
        Name = "Sakura Ticket", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "starter_pack",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "sakura_ticket", amount = 120 },
                },
            },
            {
                name = "coquette_part",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "sakura_ticket", amount = 200 },
                },
            },
            {
                name = "trophytruck2_part",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "sakura_ticket", amount = 200 },
                },
            },
            {
                name = "event_gachapon",
                duration = 5,
                rate = 100,
                count = 200,
                cost = 20000,
                itemNeed = {
                    { name = "sakura_ticket", amount = 60 },
                },
            },
            {
                name = "baby_three_part",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "sakura_ticket", amount = 60 },
                },
            },
            {
                name = "baby_three_part",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "needle", amount = 2 },
                    { name = "sakura_ticket", amount = 15 },
                },
            },
            {
                name = "baby_three_part",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "cotton", amount = 2 },
                    { name = "sakura_ticket", amount = 15 },
                },
            },
            {
                name = "baby_three_part",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "doll1", amount = 2 },
                    { name = "sakura_ticket", amount = 15 },
                },
            },
        }
    },

    [98] = {
        Name = "แฟชั่น", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "bbg_lotso_1",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "cotton", amount = 2 },
                    { name = "needle", amount = 2 },
                    { name = "doll1", amount = 2 },
                },
            },
            {
                name = "bbg_lotso_2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "cotton", amount = 2 },
                    { name = "needle", amount = 2 },
                    { name = "doll1", amount = 2 },
                },
            },
            {
                name = "bbg_lotso_3",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "cotton", amount = 2 },
                    { name = "needle", amount = 2 },
                    { name = "doll1", amount = 2 },
                },
            },
            {
                name = "bbg_lotso_4",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "cotton", amount = 2 },
                    { name = "needle", amount = 2 },
                    { name = "doll1", amount = 2 },
                },
            },
            {
                name = "bbg_lotso_5",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "cotton", amount = 2 },
                    { name = "needle", amount = 2 },
                    { name = "doll1", amount = 2 },
                },
            },
            {
                name = "bbg_lotso_6",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "cotton", amount = 2 },
                    { name = "needle", amount = 2 },
                    { name = "doll1", amount = 2 },
                },
            },
            {
                name = "bbg_lotso_l",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "cotton", amount = 2 },
                    { name = "needle", amount = 2 },
                    { name = "doll1", amount = 2 },
                },
            },
            {
                name = "bbg_lotso_r",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "cotton", amount = 2 },
                    { name = "needle", amount = 2 },
                    { name = "doll1", amount = 2 },
                },
            },
        }
    },
    [99] = {
        Name = "กล่องสุ่มชิ้นส่วนรถ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "box_rd_part_ss9_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                  
                itemNeed = {
                    {name = "carpart_wheel_ss9", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss9_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                         
                itemNeed = {
                    {name = "carpart_steering_ss9", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss9_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                       
                itemNeed = {
                    {name = "carpart_engine_ss9", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss9_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                          
                itemNeed = {
                    {name = "carpart_body_ss9", amount = 1}
                },
            },
        }
    },

    [100] = {
        Name = "Club Shop", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "e_beer",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = 'clubcard', amount =1},
                },    
            },
        }
    },
    [101] = {
        Name = "AgencyCoin", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "event_gachapon",
                duration = 5,
                rate = 70,
                count = 10,
                cost = 0,
                itemNeed = {
                    {name = "agen_coin", amount = 10}
                },
                equipment = {
                    -- { name = 'clubcard', amount =1},
                },    
            },
            {
                name = "fashion_card",
                duration = 5,
                rate = 50,
                count = 1,
                cost = 0,
                itemNeed = {
                    {name = "agen_coin", amount = 5}
                },
                equipment = {
                    -- { name = 'clubcard', amount =1},
                },    
            },
        }
        
    },
    [102] = {
        Name = "AgencyWeapon", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "WEAPON_DAGGER_AGENT+1",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    {name = "agen_coin", amount = 300}
                },
                equipment = {
                    -- { name = 'clubcard', amount =1},
                },    
            },
            {
                name = "WEAPON_DAGGER_AGENT+2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    {name = "agen_coin", amount = 500},
                    {name = "WEAPON_DAGGER_AGENT+1", amount = 1},                  
                },
                equipment = {
                    -- { name = 'WEAPON_DAGGER_AGENT+1', amount =1},
                },    
            },
            {
                name = "WEAPON_DAGGER_AGENT+3",
                duration = 5,
                rate = 70,
                count = 1,
                cost = 200000,
                itemNeed = {
                    {name = "agen_coin", amount = 700},
                    {name = "WEAPON_DAGGER_AGENT+2", amount = 1}
                },
                failItem = {
                    {name = 'WEAPON_DAGGER_AGENT+2', amount = 1},
                },
                equipment = {
                    -- { name = 'clubcard', amount =1},
                },    
            },
            {
                name = "WEAPON_KNIFE_AGENT+1",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    {name = "agen_coin", amount = 300}
                },
                equipment = {
                    -- { name = 'clubcard', amount =1},
                },    
            },
            {
                name = "WEAPON_KNIFE_AGENT+2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    {name = "agen_coin", amount = 500},
                    {name = "WEAPON_KNIFE_AGENT+1", amount = 1},                  
                },
                equipment = {
                    -- { name = 'WEAPON_DAGGER_AGENT+1', amount =1},
                },    
            },
            {
                name = "WEAPON_KNIFE_AGENT+3",
                duration = 5,
                rate = 70,
                count = 1,
                cost = 200000,
                itemNeed = {
                    {name = "agen_coin", amount = 700},
                    {name = "WEAPON_KNIFE_AGENT+2", amount = 1}
                },
                failItem = {
                    {name = 'WEAPON_KNIFE_AGENT+2', amount = 1},
                },
                equipment = {
                    -- { name = 'clubcard', amount =1},
                },    
            },
            {
                name = "WEAPON_POOLCUE_AGENT+1",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    {name = "agen_coin", amount = 300}
                },
                equipment = {
                    -- { name = 'clubcard', amount =1},
                },    
            },
            {
                name = "WEAPON_POOLCUE_AGENT+2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    {name = "agen_coin", amount = 500},
                    {name = "WEAPON_POOLCUE_AGENT+1", amount = 1},                  
                },
                equipment = {
                    -- { name = 'WEAPON_DAGGER_AGENT+1', amount =1},
                },    
            },
            {
                name = "WEAPON_POOLCUE_AGENT+3",
                duration = 5,
                rate = 70,
                count = 1,
                cost = 200000,
                itemNeed = {
                    {name = "agen_coin", amount = 700},
                    {name = "WEAPON_POOLCUE_AGENT+2", amount = 1}
                },
                failItem = {
                    {name = 'WEAPON_POOLCUE_AGENT+2', amount = 1},
                },
                equipment = {
                    -- { name = 'clubcard', amount =1},
                },    
            },
        }
        
    },


    [103] = {
        Name = "AFK Bonus", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "afk_lucky",
                duration = 5,
                rate = 40,
                count = 1,
                cost = 5000,
                itemNeed = {
                    { name = "afk_bonus", amount = 12 },
                },
            },
        }
    },

    [104] = {
        Name = "AFK Lucky", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "box_rd_skin_parts",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 5000,
                itemNeed = {
                    { name = "afk_lucky", amount = 5 },
                },
            },
            {
                name = "box_car_rent_3_a",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "afk_lucky", amount = 7 },
                },
            },
            {
                name = "box_car_rent_3_b",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "afk_lucky", amount = 7 },
                },
            },
            {
                name = "box_upgrade_aed",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    { name = "afk_lucky", amount = 99999999999 },
                },
            },
            {
                name = "box_upgrade_aed_3",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    { name = "afk_lucky", amount = 99999999999 },
                },
            },
            {
                name = "box_upgrade_aed_5",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    { name = "afk_lucky", amount = 99999999999 },
                },
            },
            {
                name = "box_upgrade_armor",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    { name = "afk_lucky", amount = 99999999999 },
                },
            },
            {
                name = "box_upgrade_armor_3",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    { name = "afk_lucky", amount = 99999999999 },
                },
            },
            {
                name = "box_upgrade_armor_5",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    { name = "afk_lucky", amount = 99999999999 },
                },
            },
            {
                name = "box_upgrade_pain",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    { name = "afk_lucky", amount = 99999999999 },
                },
            },
            {
                name = "box_upgrade_pain_3",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    { name = "afk_lucky", amount = 99999999999 },
                },
            },
            {
                name = "box_upgrade_pain_5",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    { name = "afk_lucky", amount = 99999999999 },
                },
            },
        }
    },

    [105] = {
        Name = "Upgrade Poolcue", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "skin_afk_pc_lv2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 2 },
                    { name = "box_skin_part_b", amount = 2 },
                    { name = "box_skin_part_c", amount = 2 },
                },
                equipment = {
                    { name = 'skin_afk_pc_lv1', amount =1},
                },   
            },
            {
                name = "skin_afk_pc_lv3",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 4 },
                    { name = "box_skin_part_b", amount = 4 },
                    { name = "box_skin_part_c", amount = 4 },
                },
                equipment = {
                    { name = 'skin_afk_pc_lv2', amount =1},
                },   
            },
            {
                name = "skin_afk_pc_lv4",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 6 },
                    { name = "box_skin_part_b", amount = 6 },
                    { name = "box_skin_part_c", amount = 6 },
                },
                equipment = {
                    { name = 'skin_afk_pc_lv3', amount =1},
                },   
            },
        }
    },

    [106] = {
        Name = "Upgrade Knife", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "skin_afk_m9_lv2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 2 },
                    { name = "box_skin_part_b", amount = 2 },
                    { name = "box_skin_part_c", amount = 2 },
                },
                equipment = {
                    { name = 'skin_afk_m9_lv1', amount =1},
                },   
            },
            {
                name = "skin_afk_m9_lv3",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 4 },
                    { name = "box_skin_part_b", amount = 4 },
                    { name = "box_skin_part_c", amount = 4 },
                },
                equipment = {
                    { name = 'skin_afk_m9_lv2', amount =1},
                },   
            },
            {
                name = "skin_afk_m9_lv4",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 6 },
                    { name = "box_skin_part_b", amount = 6 },
                    { name = "box_skin_part_c", amount = 6 },
                },
                equipment = {
                    { name = 'skin_afk_m9_lv3', amount =1},
                },   
            },
        }
    },
    
    [107] = {
        Name = "Upgrade Dagger", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "skin_afk_dg_lv2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 2 },
                    { name = "box_skin_part_b", amount = 2 },
                    { name = "box_skin_part_c", amount = 2 },
                },
                equipment = {
                    { name = 'skin_afk_dg_lv1', amount =1},
                },   
            },
            {
                name = "skin_afk_dg_lv3",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 4 },
                    { name = "box_skin_part_b", amount = 4 },
                    { name = "box_skin_part_c", amount = 4 },
                },
                equipment = {
                    { name = 'skin_afk_dg_lv2', amount =1},
                },   
            },
            {
                name = "skin_afk_dg_lv4",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 6 },
                    { name = "box_skin_part_b", amount = 6 },
                    { name = "box_skin_part_c", amount = 6 },
                },
                equipment = {
                    { name = 'skin_afk_dg_lv3', amount =1},
                },   
            },
        }
    },
    
    [108] = {
        Name = "Upgrade Machete", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "skin_afk_mc_lv2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 2 },
                    { name = "box_skin_part_b", amount = 2 },
                    { name = "box_skin_part_c", amount = 2 },
                },
                equipment = {
                    { name = 'skin_afk_mc_lv1', amount =1},
                },   
            },
            {
                name = "skin_afk_mc_lv3",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 4 },
                    { name = "box_skin_part_b", amount = 4 },
                    { name = "box_skin_part_c", amount = 4 },
                },
                equipment = {
                    { name = 'skin_afk_mc_lv2', amount =1},
                },   
            },
            {
                name = "skin_afk_mc_lv4",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 6 },
                    { name = "box_skin_part_b", amount = 6 },
                    { name = "box_skin_part_c", amount = 6 },
                },
                equipment = {
                    { name = 'skin_afk_mc_lv3', amount =1},
                },   
            },
        }
    },
    
    [109] = {
        Name = "Upgrade Knuckle", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "skin_afk_ng_lv2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 2 },
                    { name = "box_skin_part_b", amount = 2 },
                    { name = "box_skin_part_c", amount = 2 },
                },
                equipment = {
                    { name = 'skin_afk_ng_lv1', amount =1},
                },   
            },
            {
                name = "skin_afk_ng_lv3",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 4 },
                    { name = "box_skin_part_b", amount = 4 },
                    { name = "box_skin_part_c", amount = 4 },
                },
                equipment = {
                    { name = 'skin_afk_ng_lv2', amount =1},
                },  
            },
            {
                name = "skin_afk_ng_lv4",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 6 },
                    { name = "box_skin_part_b", amount = 6 },
                    { name = "box_skin_part_c", amount = 6 },
                },
                equipment = {
                    { name = 'skin_afk_ng_lv3', amount =1},
                },  
            },
        }
    },

    [110] = {
        Name = "Weapon Skin Lv1", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "skin_afk_pc_lv1",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "afk_lucky", amount = 15 },
                },
                
            },
            {
                name = "skin_afk_m9_lv1",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "afk_lucky", amount = 15 },
                },
            },
            {
                name = "skin_afk_dg_lv1",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "afk_lucky", amount = 15 },
                },
            },
            {
                name = "skin_afk_mc_lv1",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "afk_lucky", amount = 15 },
                },
            },
            {
                name = "skin_afk_ng_lv1",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "afk_lucky", amount = 15 },
                },
            },
        }
    },

    [111] = {
        Name = "ย่อยชิ้นส่วนสกิน", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "afk_bonus",
                duration = 5,
                rate = 100,
                count = 12,
                cost = 30000,
                itemNeed = {
                    { name = "box_skin_part_a", amount = 2 },
                },
            },
            {
                name = "afk_bonus",
                duration = 5,
                rate = 100,
                count = 12,
                cost = 30000,
                itemNeed = {
                    { name = "box_skin_part_b", amount = 2 },
                },
            },
            {
                name = "afk_bonus",
                duration = 5,
                rate = 100,
                count = 12,
                cost = 30000,
                itemNeed = {
                    { name = "box_skin_part_c", amount = 2 },
                },
            },
        }
    },

    [112] = {
        Name = "RGB SKIN", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'rgb_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss3", amount = 1 },
                },
            },
            {
                name = 'rgb_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss3", amount = 1 },
                },
            },
            {
                name = 'rgb_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss3", amount = 1 },
                },
            },
        }
    },

    [113] = {
        Name = "WINTER SKIN", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'winterfrost_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "btp_skin_card_ss4", amount = 1 },
                },
            },
            {
                name = 'winterfrost_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "btp_skin_card_ss4", amount = 1 },
                },
            },
            {
                name = 'winterfrost_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "btp_skin_card_ss4", amount = 1 },
                },
            },
        }
    },

    [114] = {
        Name = "Revolver", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_revolver"),
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 1000000,
                maxCount = 1,  
                itemNeed = {
                    {name = "grip", amount = 1},
                    {name = "cylinder", amount = 1},
                    {name = "frame", amount = 1},
                    {name = "barrel", amount = 1},
                    {name = "muzzle", amount = 1},
                    {name = "Reddot", amount = 1},
                    {name = "guntrigger", amount = 1},
                    {name = "codex", amount = 20},
                    {name = "sakura_coin", amount = 10000},
                },
            },
        }
    },
    
    [115] = {
        Name = "Revolver +1", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_revolver+1"),
                duration = 5,
                rate = '?',  
                count = 1,
                cost = 50000,
                -- black_money = 5000,
                maxCount = 1,  
                failItem = {

                    { name = string.upper('weapon_revolver'), amount = 1},
                },
                itemNeed = {
                    {name = "vibranium", amount = 1},
                    {name = "box_craft_weapon", amount = 10},
                    {name = "platinum_gem", amount = 10},
                    {name = "Radiant", amount = 2},
                    {name = "sakura_coin", amount = 300},
                    {name = string.upper('weapon_revolver'), amount = 1},
                },
            },
        }
    },
     
    [116] = {
        Name = "Revolver +2", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_revolver+2"),
                duration = 5,
                rate = '?',  
                count = 1,
                cost = 60000,
                -- black_money = 7000,
                maxCount = 1,  
                failItem = {

                    { name = string.upper('weapon_revolver+1'), amount = 1},
                },
                itemNeed = {
                    {name = "vibranium", amount = 2},
                    {name = "box_craft_weapon", amount = 15},
                    {name = "platinum_gem", amount = 15},
                    {name = "Radiant", amount = 3},
                    {name = "sakura_coin", amount = 400},
                    {name = string.upper('weapon_revolver+1'), amount = 1},
                },
            },
        }
    },

    [117] = {
        Name = "Revolver +3", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_revolver+3"),
                duration = 5,
                rate = '?',  
                count = 1,
                cost = 70000,
                -- black_money = 9000,
                maxCount = 1,  
                failItem = {

                    { name = string.upper('weapon_revolver+2'), amount = 1},
                },
                itemNeed = {
                    {name = "vibranium", amount = 2},
                    {name = "box_craft_weapon", amount = 20},
                    {name = "platinum_gem", amount = 20},
                    {name = "Radiant", amount = 4},
                    {name = "sakura_coin", amount = 500},
                    {name = string.upper('weapon_revolver+2'), amount = 1},
                },
            },
        }
    },

    [118] = {
        Name = "Revolver +4", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_revolver+4"),
                duration = 5,
                rate = 0,
                count = 1,
                cost = 9999999,
                maxCount = 1,  
                itemNeed = {
                    {name = "preview", amount = 999999999},
                },
            },
        }
    },

    [119] = {
        Name = "Revolver +5", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_revolver+5"),
                duration = 5,
                rate = 0,
                count = 1,
                cost = 9999999,
                maxCount = 1,  
                itemNeed = {
                    {name = "preview", amount = 999999999},
                },
            },
        }
    },

    [120] = {
        Name = "General", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'codex',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    {name = "black_vibranium", amount = 1},
                    {name = "Kingboxs", amount = 1},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'codex',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    {name = "sakura-failed", amount = 1},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'black_vibranium',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    {name = "Netherite", amount = 1},
                    {name = "vibranium", amount = 1},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'Kingboxs',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 10000,
                itemNeed = {
                    {name = "box_craft_weapon", amount = 3},
                    {name = "amber", amount = 1},
                    {name = "ruby", amount = 1},
                    {name = "lapis", amount = 1},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'grip',
                duration = 5,
                rate = 70,
                count = 1,
                cost = 200000,
                itemNeed = {
                    {name = "coreC", amount = 1},
                    {name = "sapphire", amount = 2},
                    {name = "goldbar", amount = 200},
                    {name = "sakura_coin", amount = 1000},
                },
            },
            {
                name = 'cylinder',
                duration = 5,
                rate = 70,
                count = 1,
                cost = 200000,
                itemNeed = {
                    {name = "coreA", amount = 1},
                    {name = "sapphire", amount = 2},
                    {name = "goldbar", amount = 200},
                    {name = "sakura_coin", amount = 1000},
                },
            },
            {
                name = 'frame',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 200000,
                itemNeed = {
                    {name = "box_craft_weapon", amount = 100},
                    {name = "chipset", amount = 2},
                    {name = "goldbar", amount = 200},
                    {name = "sapphire", amount = 2},
                    {name = "sakura_coin", amount = 1000},
                },
            },
            {
                name = 'barrel',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    {name = "sakura-crystal", amount = 5},
                    {name = "sapphire", amount = 2},
                    {name = "goldbar", amount = 200},
                    {name = "sakura_coin", amount = 1000},
                },
            },
            {
                name = 'muzzle',
                duration = 5,
                rate = 70,
                count = 1,
                cost = 200000,
                itemNeed = {
                    {name = "coreB", amount = 1},
                    {name = "sapphire", amount = 2},
                    {name = "goldbar", amount = 200},
                    {name = "sakura_coin", amount = 1000},
                },
            },
            {
                name = 'Reddot',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    {name = "platinum_gem", amount = 10},
                    {name = "sapphire", amount = 2},
                    {name = "goldbar", amount = 200},
                    {name = "sakura_coin", amount = 1000},
                },
            },
            {
                name = 'guntrigger',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    {name = "vibranium", amount = 10},
                    {name = "sapphire", amount = 2},
                    {name = "goldbar", amount = 200},
                    {name = "sakura_coin", amount = 1000},
                },
            },
            {
                name = 'ammo',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 1000,
                itemNeed = {
                    {name = "coal", amount = 20},
                    {name = "goldbar", amount = 20},
                    {name = "copperrod", amount = 20},
                    {name = "sakura_coin", amount = 100},
                },
            },
        }
    },

    [121] = {
        Name = "แร่ใหม่", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'sapphire',
                duration = 5,
                rate = 50,
                count = 1,
                cost = 40000,
                itemNeed = {
                    {name = "amber", amount = 2},
                    {name = "ruby", amount = 2},
                    {name = "lapis", amount = 2},
                    {name = "grim_wood", amount = 2},
                    {name = "obsidian", amount = 2},
                    {name = "Netherite", amount = 2},
                    {name = "sakura_coin", amount = 1000},
                },
            },
            {
                name = 'amber',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "copperrod", amount = 200},
                    {name = "yellow-crystal", amount = 60},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'ruby',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "copperrod", amount = 200},
                    {name = "red-crystal", amount = 60},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'lapis',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "copperrod", amount = 200},
                    {name = "blue-crystal", amount = 60},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'grim_wood',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "copperrod", amount = 200},
                    {name = "wood_bon", amount = 100},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'obsidian',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "copperrod", amount = 200},
                    {name = "black-crystal", amount = 10},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'Netherite',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "copperrod", amount = 200},
                    {name = "steel", amount = 50},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'coal',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 1000,
                itemNeed = {
                    {name = "gravel", amount = 30},
                    {name = "wood_bon", amount = 20},
                    {name = "sakura_coin", amount = 50},
                },
            },
            {
                name = 'Radiant',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "goldbar", amount = 200},
                    {name = "diamond", amount = 25},
                    {name = "tin", amount = 25},
                    {name = "steel", amount = 25},
                    {name = "sakura_coin", amount = 200},
                    -- {name = "sakura_coin", amount = 25},
                },
            },
        }
    },

    -- [122] = {
    --     Name = "เศษแร่", -- // ชื่อหมวดหมู่
    --     Item = {
    --         {
    --             name = 'fragment_amber',
    --             duration = 5,
    --             rate = 100,
    --             count = 20,
    --             cost = 20000,
    --             itemNeed = {
    --                 {name = "sakura_coin", amount = 500},
    --             },
    --         },
    --         {
    --             name = 'fragment_grimwood',
    --             duration = 5,
    --             rate = 100,
    --             count = 20,
    --             cost = 20000,
    --             itemNeed = {
    --                 {name = "sakura_coin", amount = 500},
    --             },
    --         },
    --         {
    --             name = 'fragment_lapisz',
    --             duration = 5,
    --             rate = 100,
    --             count = 20,
    --             cost = 20000,
    --             itemNeed = {
    --                 {name = "sakura_coin", amount = 500},
    --             },
    --         },
    --         {
    --             name = 'fragment_netherite',
    --             duration = 5,
    --             rate = 100,
    --             count = 20,
    --             cost = 20000,
    --             itemNeed = {
    --                 {name = "sakura_coin", amount = 500},
    --             },
    --         },
    --         {
    --             name = 'fragment_obisidian',
    --             duration = 5,
    --             rate = 100,
    --             count = 20,
    --             cost = 20000,
    --             itemNeed = {
    --                 {name = "sakura_coin", amount = 500},
    --             },
    --         },
    --         {
    --             name = 'fragment_ruby',
    --             duration = 5,
    --             rate = 100,
    --             count = 20,
    --             cost = 20000,
    --             itemNeed = {
    --                 {name = "sakura_coin", amount = 500},
    --             },
    --         },
    --     }
    -- },
    [123] = {
        Name = "AgencyBonus", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'afk_bonus',
                duration = 5,
                rate = 100,
                count = 12,
                cost = 5000,
                itemNeed = {
                    {name = "agen_coin", amount = 5},
                },
            },

        }
    },
    [124] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'apartment_key_301', amount =1},
                },
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 3000,
                equipment = {
                    { name = 'apartment_key_301', amount =1},
                },
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [125] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a_fam",
                duration = 5,
                rate = 100,
                count = 1,
                black_money= 300,
                equipment = {
                    { name = 'family_card_c', amount =1},
                    { name = 'apartment_key_301', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_a_fam",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 0,
                equipment = {
                    { name = 'family_card_c', amount =1},
                    { name = 'apartment_key_301', amount =1},
                },
                itemNeed = {
                    { name = "drug_a", amount = 1 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'apartment_key_301', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },

    [126] = {
        Name = "CHRISTMAS SKIN", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'chistmas_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_knuckle',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_mechete',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_poolcue1',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_poolcue2',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_poolcue3',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
        }
    },
    [127] = {
        Name = "กล่องสุ่มชิ้นส่วนรถ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "box_rd_part_ss6_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                  
                itemNeed = {
                    {name = "carpart_wheel_ss6", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss6_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                         
                itemNeed = {
                    {name = "carpart_steering_ss6", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss6_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                       
                itemNeed = {
                    {name = "carpart_engine_ss6", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss6_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                          
                itemNeed = {
                    {name = "carpart_body_ss6", amount = 1}
                },
            },
        }
    },
    [128] = {
        Name = "รถประกอบ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "car_ss6_part_coupon",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "carpart_body_ss6", amount = 2 },
                    { name = "carpart_engine_ss6", amount = 1 },
                    { name = "carpart_steering_ss6", amount = 2 },
                    { name = "carpart_wheel_ss6", amount = 2 },
                },
            },
        }
    },
    [129] = {
        Name = "หัว", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "zintoothless_whi_1",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "fashion_card_ss6", amount = 30 },
                    
                },
            },
        }
    },
    [130] = {
        Name = "ไหล่", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "zintoothless_whi_2",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "fashion_card_ss6", amount = 20 },
                },
            },
            {
                name = "zintoothless_whi_3",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "fashion_card_ss6", amount = 20 },
                },
            },
        }
    },
    [131] = {
        Name = "Golden Ticket", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'chistmas_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_knuckle',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_mechete',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_poolcue1',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_poolcue2',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_poolcue3',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'chistmas_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
        }
    },
    [132] = {
        Name = "รถ Event", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "car_shabudeercar",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "red_x", amount = 60 },
                    { name = "red_m", amount = 60 },
                    { name = "red_a", amount = 60 },
                    { name = "red_s", amount = 60 },
                },
            },
            {
                name = "car_shabuminixmas",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "red_x", amount = 60 },
                    { name = "red_m", amount = 60 },
                    { name = "red_a", amount = 60 },
                    { name = "red_s", amount = 60 },
                },
            },
        }
    },
    [133] = {
        Name = "Fashion Event", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "reawx_christmas_evebear",
                duration = 5,
                rate = 50,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ev_x", amount = 2 },
                    { name = "ev_m", amount = 2 },
                    { name = "ev_a", amount = 2 },
                    { name = "ev_s", amount = 2 },
                },
            },
            {
                name = "reawx_christmas_hat",
                duration = 5,
                rate = 50,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ev_x", amount = 2 },
                    { name = "ev_m", amount = 2 },
                    { name = "ev_a", amount = 2 },
                    { name = "ev_s", amount = 2 },
                },
            },
            {
                name = "reawx_christmas_mary",
                duration = 5,
                rate = 50,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ev_x", amount = 2 },
                    { name = "ev_m", amount = 2 },
                    { name = "ev_a", amount = 2 },
                    { name = "ev_s", amount = 2 },
                },
            },
            {
                name = "reawx_christmas_santacutie",
                duration = 5,
                rate = 50,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ev_x", amount = 2 },
                    { name = "ev_m", amount = 2 },
                    { name = "ev_a", amount = 2 },
                    { name = "ev_s", amount = 2 },
                },
            },
            {
                name = "reawx_christmas_scarf",
                duration = 5,
                rate = 50,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ev_x", amount = 2 },
                    { name = "ev_m", amount = 2 },
                    { name = "ev_a", amount = 2 },
                    { name = "ev_s", amount = 2 },
                },
            },
            {
                name = "reawx_christmas_snowman",
                duration = 5,
                rate = 50,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ev_x", amount = 2 },
                    { name = "ev_m", amount = 2 },
                    { name = "ev_a", amount = 2 },
                    { name = "ev_s", amount = 2 },
                },
            },
            {
                name = "reawx_christmas_tress",
                duration = 5,
                rate = 50,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "ev_x", amount = 2 },
                    { name = "ev_m", amount = 2 },
                    { name = "ev_a", amount = 2 },
                    { name = "ev_s", amount = 2 },
                },
            },
        }
    },
    [134] = {
        Name = "Weapon Skin Event", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "candy_skin_poolcue",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "red_x", amount = 40 },
                    { name = "red_m", amount = 40 },
                    { name = "red_a", amount = 40 },
                    { name = "red_s", amount = 40 },
                },
            },
            {
                name = "candy_skin_dagger",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "red_x", amount = 40 },
                    { name = "red_m", amount = 40 },
                    { name = "red_a", amount = 40 },
                    { name = "red_s", amount = 40 },
                },
            },
            {
                name = "candy_skin_knife",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "red_x", amount = 40 },
                    { name = "red_m", amount = 40 },
                    { name = "red_a", amount = 40 },
                    { name = "red_s", amount = 40 },
                },
            },
            {
                name = "candy_skin_knuckle",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "red_x", amount = 40 },
                    { name = "red_m", amount = 40 },
                    { name = "red_a", amount = 40 },
                    { name = "red_s", amount = 40 },
                },
            },
            {
                name = "candy_skin_mechete",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "red_x", amount = 40 },
                    { name = "red_m", amount = 40 },
                    { name = "red_a", amount = 40 },
                    { name = "red_s", amount = 40 },
                },
            },
            {
                name = "candy_skin_revolver",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "red_x", amount = 40 },
                    { name = "red_m", amount = 40 },
                    { name = "red_a", amount = 40 },
                    { name = "red_s", amount = 40 },
                },
            },
        }
    },
    [135] = {
        Name = "เศษแร่ใหม่", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'amber',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "fragment_amber", amount = 20},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'ruby',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "fragment_ruby", amount = 20},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'lapis',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "fragment_lapisz", amount = 20},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'grim_wood',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "fragment_grimwood", amount = 20},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'obsidian',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "fragment_obisidian", amount = 20},
                    {name = "sakura_coin", amount = 500},
                },
            },
            {
                name = 'Netherite',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                itemNeed = {
                    {name = "fragment_netherite", amount = 20},
                    {name = "sakura_coin", amount = 500},
                },
            },

        }
    },
    [136] = {
        Name = "แลกสกินอาวุธ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'thuglife_skin_dagger_lv1',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    {name = "color_blue", amount = 2},
                    {name = "color_green", amount = 2},
                    {name = "color_orange", amount = 2},
                },
            },
            {
                name = 'thuglife_skin_knife_lv1',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    {name = "color_blue", amount = 2},
                    {name = "color_green", amount = 2},
                    {name = "color_orange", amount = 2},
                },
            },
            {
                name = 'thuglife_skin_poolcue_lv1',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    {name = "color_blue", amount = 2},
                    {name = "color_green", amount = 2},
                    {name = "color_orange", amount = 2},
                },
            },
            {
                name = 'thuglife_skin_revolver_lv1',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    {name = "color_blue", amount = 2},
                    {name = "color_green", amount = 2},
                    {name = "color_orange", amount = 2},
                },
            },
            {
                name = 'thuglife_skin_dagger_lv2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                equipment = {
                    { name = 'thuglife_skin_dagger_lv1', amount =1},
                },
                itemNeed = {
                    {name = "color_blue", amount = 5},
                    {name = "color_green", amount = 5},
                    {name = "color_orange", amount = 5},
                },
            },
            {
                name = 'thuglife_skin_knife_lv2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                equipment = {
                    { name = 'thuglife_skin_knife_lv1', amount =1},
                },
                itemNeed = {
                    {name = "color_blue", amount = 5},
                    {name = "color_green", amount = 5},
                    {name = "color_orange", amount = 5},
                },
            },
            {
                name = 'grafficity_skin_machete_lv2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                equipment = {
                    { name = 'thuglife_skin_machete_lv1', amount =1},
                },
                itemNeed = {
                    {name = "color_blue", amount = 5},
                    {name = "color_green", amount = 5},
                    {name = "color_orange", amount = 5},
                },
            },
            {
                name = 'thuglife_skin_poolcue_lv2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                equipment = {
                    { name = 'thuglife_skin_poolcue_lv1', amount =1},
                },
                itemNeed = {
                    {name = "color_blue", amount = 5},
                    {name = "color_green", amount = 5},
                    {name = "color_orange", amount = 5},
                },
            },
            {
                name = 'thuglife_skin_revolver_lv2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                equipment = {
                    { name = 'thuglife_skin_revolver_lv1', amount =1},
                },
                itemNeed = {
                    {name = "color_blue", amount = 5},
                    {name = "color_green", amount = 5},
                    {name = "color_orange", amount = 5},
                },
            },
            {
                name = 'grafficity_skin_dagger_lv1',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    {name = "color_purple", amount = 2},
                    {name = "color_red", amount = 2},
                    {name = "color_yellow", amount = 2},
                },
            },
            {
                name = 'grafficity_skin_knife_lv1',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    {name = "color_purple", amount = 2},
                    {name = "color_red", amount = 2},
                    {name = "color_yellow", amount = 2},
                },
            },
            {
                name = 'grafficity_skin_machete_lv1',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    {name = "color_purple", amount = 2},
                    {name = "color_red", amount = 2},
                    {name = "color_yellow", amount = 2},
                },
            },
            {
                name = 'grafficity_skin_poolcue_lv1',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    {name = "color_purple", amount = 2},
                    {name = "color_red", amount = 2},
                    {name = "color_yellow", amount = 2},
                },
            },
            {
                name = 'grafficity_skin_revolver_lv1',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                itemNeed = {
                    {name = "color_purple", amount = 2},
                    {name = "color_red", amount = 2},
                    {name = "color_yellow", amount = 2},
                },
            },
            {
                name = 'grafficity_skin_dagger_lv2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                equipment = {
                    { name = 'grafficity_skin_dagger_lv1', amount =1},
                },
                itemNeed = {
                    {name = "color_purple", amount = 5},
                    {name = "color_red", amount = 5},
                    {name = "color_yellow", amount = 5},
                },
            },
            {
                name = 'grafficity_skin_knife_lv2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                equipment = {
                    { name = 'grafficity_skin_knife_lv1', amount =1},
                },
                itemNeed = {
                    {name = "color_purple", amount = 5},
                    {name = "color_red", amount = 5},
                    {name = "color_yellow", amount = 5},
                },
            },
            {
                name = 'grafficity_skin_machete_lv2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                equipment = {
                    { name = 'grafficity_skin_machete_lv1', amount =1},
                },
                itemNeed = {
                    {name = "color_purple", amount = 5},
                    {name = "color_red", amount = 5},
                    {name = "color_yellow", amount = 5},
                },
            },
            {
                name = 'grafficity_skin_poolcue_lv2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                equipment = {
                    { name = 'grafficity_skin_poolcue_lv1', amount =1},
                },
                itemNeed = {
                    {name = "color_purple", amount = 5},
                    {name = "color_red", amount = 5},
                    {name = "color_yellow", amount = 5},
                },
            },
            {
                name = 'grafficity_skin_revolver_lv2',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 300000,
                equipment = {
                    { name = 'grafficity_skin_revolver_lv1', amount =1},
                },
                itemNeed = {
                    {name = "color_purple", amount = 5},
                    {name = "color_red", amount = 5},
                    {name = "color_yellow", amount = 5},
                },
            },
        }
    },
	[137] = {
        Name = "รถกิจกรรมโปรโมท", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'bugatti_box',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100,                         
                itemNeed = {
                    { name = "carpart_bugatimini_1", amount = 2 },
                    { name = "carpart_bugatimini_2", amount = 2 },
                    { name = "carpart_bugatimini_3", amount = 2 },
                    { name = "carpart_bugatimini_4", amount = 2 },
                },
            },
            {
                name = 'train_box',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100,                         
                itemNeed = {
                    { name = "carpart_train_1", amount = 2 },
                    { name = "carpart_train_2", amount = 2 },
                    { name = "carpart_train_3", amount = 2 },
                    { name = "carpart_train_4", amount = 2 },
                },
            },
            {
                name = 'pony_box',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100,                         
                itemNeed = {
                    { name = "carpart_body_horse", amount = 1 },
                    { name = "carpart_engine_horse", amount = 1 },
                    { name = "carpart_steering_horse", amount = 1 },
                    { name = "carpart_wheel_horse", amount = 1 },
                },
            }
        }
    },
    [138] = {
        Name = "ย่อยชิ้นส่วนสกิน", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'box_part_skin_swag',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    {name = "color_blue", amount = 3},
                },
            },
            {
                name = 'box_part_skin_swag',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    {name = "color_red", amount = 3},
                },
            },
            {
                name = 'box_part_skin_swag',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    {name = "color_green", amount = 3},
                },
            },
            {
                name = 'box_part_skin_swag',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    {name = "color_yellow", amount = 3},
                },
            },
            {
                name = 'box_part_skin_swag',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    {name = "color_purple", amount = 3},
                },
            },
            {
                name = 'box_part_skin_swag',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    {name = "color_orange", amount = 3},
                },
            },
        }
    },
    [139] = {
        Name = "ย่อยชิ้นส่วนแฟชั่น", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = 'box_part_skin_panda',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "panda_bamboo", amount = 3 },
                },
            },
            {
                name = 'box_part_skin_panda',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "panda_head", amount = 3 },
                },
            },
            {
                name = 'box_part_skin_panda',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "panda_bag", amount = 3 },
                },
            },
            {
                name = 'box_part_skin_panda',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "panda_hug", amount = 3 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_diamond_ring_orange", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_diamond_ring_blue", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_diamond_ring_green", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_diamond_ring_pink", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_diamond_ring_purple", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_diamond_ring_red", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_diamond_ring_yellow", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_ring_of_love_blue", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_ring_of_love_green", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_ring_of_love_orange", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_ring_of_love_pink", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_ring_of_love_purple", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_ring_of_love_red", amount = 2 },
                },
            },
            {
                name = 'box_part_ring_rainbow',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 50000,
                itemNeed = {
                    { name = "pikaboo_ring_of_love_yellow", amount = 2 },
                },
            },
        }
    },
    [140] = {
        Name = "ธนาคารใหญ่", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'bank_drill',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                black_money = 10000,
                itemNeed = {
                    { name = "nitrogen", amount = 1 },
                    { name = "black_powder", amount = 1 },
                    { name = "diamond", amount = 50 },
                    { name = "tin", amount = 50 },
                    { name = "goldbar", amount = 200 },
                    { name = "sakura_coin", amount = 500 },
                },
            },
            {
                name = 'bank_bomb',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                black_money = 10000,
                itemNeed = {
                    { name = "gear", amount = 1 },
                    { name = "coil", amount = 1 },
                    { name = "bits", amount = 1 },
                    { name = "diamond", amount = 50 },
                    { name = "tin", amount = 50 },
                    { name = "goldbar", amount = 200 },
                    { name = "sakura_coin", amount = 500 },
                },
            },
        }
    },
    [141] = {
        Name = "TOY SKIN", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'toy_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss5", amount = 1 },
                },
            },
            {
                name = 'toy_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss5", amount = 1 },
                },
            },
            {
                name = 'toy_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss5", amount = 1 },
                },
            },
        }
    },
    [142] = {
        Name = string.upper("อาวุธ+4"), -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_poolcue+4"),
                duration = 5,
                rate = '?',  
                count = 1,
                cost = 400000,
                failItem = {

                    { name = string.upper('weapon_poolcue+3'), amount = 1},
                    -- { name = 'sakura-failed', amount = 1},
                },
                itemNeed = {
                    {name = "vibranium", amount = 4},
                    {name = "box_craft_weapon", amount = 25},
                    {name = "platinum_gem", amount = 10},
                    {name = "sakura-crystal", amount = 2},
                    {name = "Radiant", amount = 2},
                    {name = "anti-potion", amount = 1},
                    {name = "sakura_coin", amount = 400},
                    {name = "WEAPON_POOLCUE+3", amount = 1},
                },
            },
        }
    },
    [143] = {
        Name = string.upper("อาวุธ+5"), -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_poolcue+5"),
                duration = 5,
                rate = '?',  
                count = 1,
                cost = 500000,
                failItem = {

                    { name = string.upper('weapon_poolcue+4'), amount = 1},
                    -- { name = 'sakura-failed', amount = 1},
                },
                itemNeed = {
                    {name = "vibranium", amount = 5},
                    {name = "box_craft_weapon", amount = 30},
                    {name = "platinum_gem", amount = 15},
                    {name = "sakura-crystal", amount = 3},
                    {name = "Radiant", amount = 4},
                    {name = "anti-potion", amount = 1},
                    {name = "sakura_coin", amount = 500},
                    {name = "WEAPON_POOLCUE+4", amount = 1},
                },
            },
        }
    },
    [144] = {
        Name = "SAKURA FAIL", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = string.upper("weapon_dagger+3"),
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = 'sakura-failed', amount = 20 },
                    { name = string.upper('weapon_dagger+2'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knife+3"),
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = 'sakura-failed', amount = 20 },
                    { name = string.upper('weapon_knife+2'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_poolcue+3"),
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = 'sakura-failed', amount = 20 },
                    { name = string.upper('weapon_poolcue+2'), amount = 1 },
                },
            },
        }
    },
    [145] = {
        Name = "Golden Ticket SS7", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'china2_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'china3_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'china_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'china_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'china_skin_knuckle',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'china_skin_mechete',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'china_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'china_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
        }
    },
    [146] = {
        Name = "Chinese HNY", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'china2_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'china3_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'china_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'china_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'china_skin_knuckle',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'china_skin_mechete',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'china_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'china_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
        }
    },
    [147] = {
        Name = "Silver", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'goldkiller',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "sliverkiller", amount = 2 },
                },
            },
        }
    },
    [148] = {
        Name = "Gold", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'box_radio_insure',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 1 },
                },
            },
            {
                name = 'box_support_50_pack',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 1 },
                },
            },                                                              
            {
                name = 'ammo',
                duration = 5,
                count = 2,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 1 },
                },
            },
            {
                name = 'chipset',
                duration = 5,                                                                           
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 1 },
                },
            },
            {
                name = 'box_weapon_insure',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {                                                                            
                    { name = "goldkiller", amount = 2 },                                                                                                                                                                                                                                   
                },
            },
            {
                name = 'capsule_hyperloop',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 2 },
                },
            },
            {
                name = 'protect_add',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 4 },
                },
            },
            {
                name = 'emp_citizen',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 4 },
                },
            },
            {
                name = 'capsule_hyperloop',
                duration = 5,
                count = 3,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 5 },
                },
            },
            {
                name = 'box_gun_insure',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 6 },
                },
            },
            {
                name = 'emp_citizen',
                duration = 5,
                count = 2,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 7 },
                },
            },
            {
                name = 'box_support_50_pack_2',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 10 },
                },
            },
            {
                name = 'protect_add',
                duration = 5,
                count = 3,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 10 },
                },
            },
            {
                name = 'box_support_50_pack_3',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 10 },
                },
            },
            {
                name = 'card_suit_color',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 10 },
                },
            },
            {
                name = 'box_support_50_pack_4',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 500,
                itemNeed = {
                    { name = "goldkiller", amount = 20 },
                },
            },
        }
    },
    [149] = {
        Name = "Squid Coupon", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'squid_box',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100,
                itemNeed = {
                    { name = "squid_coupon", amount = 3 },
                },
            },
            {
                name = 'squid_box',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100,
                itemNeed = {
                    { name = "round", amount = 3 },
                },
            },
            {
                name = 'squid_box',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100,
                itemNeed = {
                    { name = "triangle", amount = 3 },
                },
            },
            {
                name = 'squid_box',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100,
                itemNeed = {
                    { name = "square", amount = 3 },
                },
            },
        }
    },
    [150] = {
        Name = "Squid Fashion", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'reawx_dark_mask',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "round", amount = 10 },
                    { name = "triangle", amount = 10 },
                    { name = "square", amount = 10 },
                },
            },
            {
                name = 'reawx_manager_circle_01',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "round", amount = 20 },
                    { name = "triangle", amount = 20 },
                    { name = "square", amount = 20 },
                },
            },
            {
                name = 'reawx_manager_quads_01',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "round", amount = 20 },
                    { name = "triangle", amount = 20 },
                    { name = "square", amount = 20 },
                },
            },
            {
                name = 'reawx_manager_tis_01',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "round", amount = 20 },
                    { name = "triangle", amount = 20 },
                    { name = "square", amount = 20 },
                },
            },
            {
                name = 'reawx_gogova_01',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "round", amount = 40 },
                    { name = "triangle", amount = 40 },
                    { name = "square", amount = 40 },
                },
            },
        }
    },
    [151] = {
        Name = "Squid Weapon V1", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'squidgame_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "round", amount = 80 },
                    { name = "triangle", amount = 80 },
                    { name = "square", amount = 80 },
                },
            },
            {
                name = 'squidgame_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "round", amount = 80 },
                    { name = "triangle", amount = 80 },
                    { name = "square", amount = 80 },
                },
            },
            {
                name = 'squidgame_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "round", amount = 80 },
                    { name = "triangle", amount = 80 },
                    { name = "square", amount = 80 },
                },
            },
            {
                name = 'squidgame_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "round", amount = 80 },
                    { name = "triangle", amount = 80 },
                    { name = "square", amount = 80 },
                },
            },
        }
    },
    [152] = {
        Name = "Squid Weapon V2", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'squidgame2_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "round", amount = 80 },
                    { name = "triangle", amount = 80 },
                    { name = "square", amount = 80 },
                },
            },
            {
                name = 'squidgame2_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    {name = 'squidgame_skin_poolcue', amount = 1},
                },
                itemNeed = {
                    { name = "round", amount = 80 },
                    { name = "triangle", amount = 80 },
                    { name = "square", amount = 80 },
                },
            },
            {
                name = 'squidgame2_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    {name = 'squidgame_skin_knife', amount = 1},
                },
                itemNeed = {
                    { name = "round", amount = 80 },
                    { name = "triangle", amount = 80 },
                    { name = "square", amount = 80 },
                },
            },
            {
                name = 'squidgame2_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    {name = 'squidgame_skin_dagger', amount = 1},
                },
                itemNeed = {
                    { name = "round", amount = 80 },
                    { name = "triangle", amount = 80 },
                    { name = "square", amount = 80 },
                },
            },
        }
    },
    [153] = {
        Name = "Online Reward Coin", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'online_reward_coin',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "white_online_card", amount = 21 },
                },
            },
            {
                name = 'online_reward_coin',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "green_online_card", amount = 12 },
                },
            },
            {
                name = 'online_reward_coin',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "purple_online_card", amount = 5 },
                },
            },
        }
    },
    [154] = {
        Name = "Hirono", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'hirono_kixs1',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "hirono_card", amount = 20 },
                },
            },
            {
                name = 'hirono_kixs2',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "hirono_card", amount = 20 },
                },
            },
            {
                name = 'hirono_kixs3',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "hirono_card", amount = 20 },
                },
            },
            {
                name = 'hirono_kixs4',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "hirono_card", amount = 20 },
                },
            },
            {
                name = 'hirono_kixs5',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "hirono_card", amount = 20 },
                },
            },
        }
    },
    [155] = {
        Name = "Crybaby Blue", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'crybabyblue_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
            {
                name = 'crybabyblue_skin_knife',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
            {
                name = 'crybabyblue_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
            {
                name = 'crybabyblue_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
        }
    },
    [156] = {
        Name = "Crybaby Green", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'crybabygreen_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
            {
                name = 'crybabygreen_skin_knife',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
            {
                name = 'crybabygreen_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
            {
                name = 'crybabygreen_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
        }
    },
    [157] = {
        Name = "Crybaby Pink", -- // ชื่อหมวดหมู่
        Item = {

            {
                name = 'crybabypink_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
            {
                name = 'crybabypink_skin_knife',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
            {
                name = 'crybabypink_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
            {
                name = 'crybabypink_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100, 
                rate_show = true,
                cost = 100000,
                equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                    -- {name = 'squidgame_skin_revolver', amount = 1},
                },
                itemNeed = {
                    { name = "Crybaby_Skin_Card", amount = 20 },
                },
            },
        }
    },
    [158] = {
        Name = "บัตรแดง", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'bag_car_truck_valentine',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 500 },
                },
            },
            {
                name = 'twitter_valentine',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 300 },
                },
            },
            {
                name = 'bbg_valent5',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 100 },
                },
            },
            {
                name = 'bbg_valent6',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 100 },
                },
            },
            {
                name = 'bbg_valent7',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 100 },
                },
            },
            {
                name = 'bbg_valent8',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 100 },
                },
            },
            {
                name = 'bbg_valent9',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 100 },
                },
            },
            {
                name = 'bbg_qoqocute1',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 100 },
                },
            },
            {
                name = 'bbg_qoqocute2',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 100 },
                },
            },
            {
                name = 'bbg_qoqocute3',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 100 },
                },
            },
            {
                name = 'bbg_qoqocute4',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 100 },
                },
            },
            {
                name = 'bbg_qoqocute5',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 100 },
                },
            },
            {
                name = 'kw_frontvalentine_a',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 50 },
                },
            },
            {
                name = 'kw_frontvalentine_b',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 50 },
                },
            },
            {
                name = 'kw_frontvalentine_c',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 50 },
                },
            },
            {
                name = 'kw_frontvalentine_d',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 50 },
                },
            },
            {
                name = 'kw_frontvalentine_e',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 50 },
                },
            },
            {
                name = 'kw_frontvalentine_f',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 50 },
                },
            },
            {
                name = 'kw_frontvalentine_g',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 50 },
                },
            },
            {
                name = 'kw_frontvalentine_h',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 50 },
                },
            },
            {
                name = 'kw_frontvalentine_i',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 50 },
                },
            },
            {
                name = 'kw_frontvalentine_j',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "red_letter", amount = 50 },
                },
            },
        }
    },
    [159] = {
        Name = "บัตรทอง", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'bag_car_truck_valentine',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 50 },
                },
            },
            {
                name = 'twitter_valentine',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 30 },
                },
            },
            {
                name = 'bbg_valent5',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 10 },
                },
            },
            {
                name = 'bbg_valent6',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 10 },
                },
            },
            {
                name = 'bbg_valent7',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 10 },
                },
            },
            {
                name = 'bbg_valent8',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 10 },
                },
            },
            {
                name = 'bbg_valent9',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 10 },
                },
            },
            {
                name = 'bbg_qoqocute1',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 10 },
                },
            },
            {
                name = 'bbg_qoqocute2',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 10 },
                },
            },
            {
                name = 'bbg_qoqocute3',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 10 },
                },
            },
            {
                name = 'bbg_qoqocute4',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 10 },
                },
            },
            {
                name = 'bbg_qoqocute5',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 10 },
                },
            },
            {
                name = 'kw_frontvalentine_a',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 5 },
                },
            },
            {
                name = 'kw_frontvalentine_b',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 5 },
                },
            },
            {
                name = 'kw_frontvalentine_c',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 5 },
                },
            },
            {
                name = 'kw_frontvalentine_d',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 5 },
                },
            },
            {
                name = 'kw_frontvalentine_e',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 5 },
                },
            },
            {
                name = 'kw_frontvalentine_f',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 5 },
                },
            },
            {
                name = 'kw_frontvalentine_g',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 5 },
                },
            },
            {
                name = 'kw_frontvalentine_h',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 5 },
                },
            },
            {
                name = 'kw_frontvalentine_i',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 5 },
                },
            },
            {
                name = 'kw_frontvalentine_j',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                -- equipment = {                                    -- วัสดุที่จำเป็นในกาาคราฟท์
                --     {name = 'squidgame_skin_revolver', amount = 1},
                -- },
                itemNeed = {
                    { name = "gold_letter", amount = 5 },
                },
            },
        }
    },
    [160] = {
        Name = "VALENTINE SKIN", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'lovebtp_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss6", amount = 1 },
                },
            },
            {
                name = 'lovebtp_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss6", amount = 1 },
                },
            },
            {
                name = 'lovebtp_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss6", amount = 1 },
                },
            },
        }
    },
    [161] = {
        Name = "หลัง", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "degens_spacemolly2_garybaseman_anim",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                       
                itemNeed = {
                    { name = "fashion_card_ss10", amount = 30 },
                },
            },
        }
    },
    [162] = {
        Name = "เท้า", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "bbg_ui65_1",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card_ss10", amount = 30 },
                },
            },
            {
                name = "bbg_ui65_2",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,                         
                itemNeed = {
                    { name = "fashion_card_ss10", amount = 30 },
                },
            },
        }
    },
    [163] = {
        Name = "หัว", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "bbg_ui65_3",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "fashion_card_ss10", amount = 30 },
                    
                },
            },
        }
    },
    [164] = {
        Name = "ไหล่", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "bbg_ui65_4",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "fashion_card_ss10", amount = 30 },
                },
            },
            {
                name = "bbg_ui65_5",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "fashion_card_ss10", amount = 30 },
                },
            },
            
        }
    },
    [165] = {
        Name = "Golden Ticket SS10", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'weapon_skin_card',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 3 },
                },
            },
            {
                name = 'songkrangc_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'songkrangc_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'songkrangc_skin_knuckle',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'songkrangc_skin_mechete',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'songkrangc_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'songkrangc_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
        }
    },
    [166] = {
        Name = "Songkran SS10", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'songkrangc_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'songkrangc_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'songkrangc_skin_knuckle',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'songkrangc_skin_mechete',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'songkrangc_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'songkrangc_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
        }
    },
    [167] = {
        Name = "กล่องสุ่มชิ้นส่วนรถ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "box_rd_part_ss10_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                  
                itemNeed = {
                    {name = "carpart_wheel_ss10", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss10_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                         
                itemNeed = {
                    {name = "carpart_steering_ss10", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss10_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                       
                itemNeed = {
                    {name = "carpart_engine_ss10", amount = 1}
                },
            },
            {
                name = "box_rd_part_ss10_x2",
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 300000,                          
                itemNeed = {
                    {name = "carpart_body_ss10", amount = 1}
                },
            },
        }
    },
    [168] = {
        Name = "รถประกอบ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "car_ss10_part_coupon",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "carpart_body_ss10", amount = 2 },
                    { name = "carpart_engine_ss10", amount = 1 },
                    { name = "carpart_steering_ss10", amount = 2 },
                    { name = "carpart_wheel_ss10", amount = 2 },
                },
            },
            {
                name = "car_ss10_part2_coupon",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 0,
                itemNeed = {
                    { name = "carpart_body_ss10", amount = 2 },
                    { name = "carpart_engine_ss10", amount = 1 },
                    { name = "carpart_steering_ss10", amount = 2 },
                    { name = "carpart_wheel_ss10", amount = 2 },
                },
            },
        }
    },
    [169] = {
        Name = "Level 6", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = 'gps_send',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 20000,
                day = 5,
                itemNeed = {
                    { name = "bronze_gem", amount = 500 },
                    { name = "silver_gem", amount = 500 },
                    { name = "gold_gem", amount = 500 },
                    { name = "gypsum_broke", amount = 1 },
                    { name = "sakura_coin", amount = 200 },
                },
            },
            {
                name = 'gypsum_broke',
                duration = 5,
                rate = 100,
                count = 5,
                cost = 1000,
                itemNeed = {
                    { name = "gypsum", amount = 1 },
                },
            },
            {
                name = 'box_cement',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "cement", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_bonsai',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "wood_bon", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_copper',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "copperrod", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_gold',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "goldbar", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_steel',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "steel", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_diamond',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "diamond", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_tin',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "tin", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_gravel',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "gravel", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_blue-crystal',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "blue-crystal", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_red-crystal',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "red-crystal", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
            {
                name = 'box_yellow-crystal',
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
                itemNeed = {
                    { name = "yellow-crystal", amount = 100 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
        }
    },
    [170] = {
        Name = "Level 8",
        Item = {
            {
                name = 'chipset',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                black_money = 80000,
                itemNeed = {
                    { name = "copperrod", amount = 80 },
                    { name = "wood_bon", amount = 80 },
                    { name = "sakura_coin", amount = 800 },
                },
            },
            {
                name = 'emp_citizen',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 160000,
                itemNeed = {
                    { name = "chipset", amount = 1 },
                    { name = "sakura-crystal", amount = 4 },
                    { name = "wood_bon", amount = 160 },
                    { name = "copperrod", amount = 160 },
                    { name = "sakura_coin", amount = 800 },
                },
            },
            {
                name = 'capsule_hyperloop',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 160000,
                itemNeed = {
                    { name = "chipset", amount = 1 },
                    { name = "sakura_coin", amount = 800 },
                },
            },
            {
                name = 'door_fix',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 20000,
                itemNeed = {
                    { name = "grim_wood", amount = 2 },
                    { name = "sakura_coin", amount = 160 },
                },
            },
            {
                name = 'insurance__weapon_card',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 160000,
                itemNeed = {
                  --  { name = "platinum_gem", amount = 2 },
                    { name = "sakura-crystal", amount = 2 },
                    { name = "sakura_coin", amount = 800 },
                },
            },
            {
                name = 'insurance_radio_card',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 32000,
                equipment = {
                    { name = 'key_pink', amount =1},
                },
                itemNeed = {
                    { name = "wood_bon", amount = 160 },
                    { name = "copperrod", amount = 160 },
                    { name = "sakura_coin", amount = 800 },
                },
            },
            {
                name = 'insurance_revolver_card',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 160000,
                itemNeed = {
                   -- { name = "platinum_gem", amount = 16 },
                    { name = "sakura-crystal", amount = 6 },
                    { name = "sakura_coin", amount = 800 },
                },
            },
            {
                name = 'ammo',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 800,
                itemNeed = {
                    { name = "coal", amount = 16 },
                    { name = "goldbar", amount = 16 },
                    { name = "copperrod", amount = 16 },
                    { name = "sakura_coin", amount = 80 },
                },
            },
            {
                name = "dynamite_gang",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 25000,
                itemNeed = {
                    {name = "grim_wood", amount = 2},
                    {name = "sakura_coin", amount = 160},
                },
            },
        }
    },
    [171] = {
        Name = "Golden Ticket SS9", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'weapon_skin_card',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 3 },
                },
            },
            {
                name = 'rich_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'rich_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'rich_skin_knuckle',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'rich_skin_machete',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'rich_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
            {
                name = 'rich_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "golden_ticket", amount = 1 },
                },
            },
        }
    },
    [172] = {
        Name = "RICH SKIN SS9", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'rich_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'rich_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'rich_skin_knuckle',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'rich_skin_machete',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'rich_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
            {
                name = 'rich_skin_revolver',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 100000,
                itemNeed = {
                    { name = "weapon_skin_card", amount = 1 },
                },
            },
        }
    },
   
    [173] = {
        Name = "DUCKKY SKIN", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'ducky_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss7", amount = 1 },
                },
            },
            {
                name = 'ducky_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss7", amount = 1 },
                },
            },
            {
                name = 'ducky_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss7", amount = 1 },
                },
            },
        }
    },
    [174] = {
        Name = "MC", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'bag_benefit_mc_pack',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "keycard_cc", amount = 1 },
                },

            },
            {
                name = 'open_sanchez2',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "keycard_cc", amount = 1 },
                },
            },
            {
                name = 'open_wintergreen',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "keycard_cc", amount = 1 },
                },
            },
            {
                name = 'open_Zombieb',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "keycard_cc", amount = 1 },
                },
            },
            {
                name = 'open_sombrero',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "keycard_cc", amount = 1 },
                },
            },
            {
                name = 'open_Pcj',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "keycard_cc", amount = 1 },
                },
            },
            {
                name = 'open_slave',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "keycard_cc", amount = 1 },
                },
            },
            {
                name = 'open_Warframe',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "keycard_cc", amount = 1 },
                },
            },
        }
    },

    [175] = {
        Name = "อาวุธ +1", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_dagger+1"),
                duration = 5,
                rate = 100,
                rate_show = true,    
                count = 1,
                cost = 0,
                failItem = {},
                itemNeed = {},
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knife+1"),
                duration = 5,
                rate = 100,
                rate_show = true,    
                count = 1,
                cost = 0,
                failItem = {},
                itemNeed = {},
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = string.upper("weapon_poolcue+1"),
                duration = 5,
                rate = 100,
                rate_show = true,    
                count = 1,
                cost = 0,
                failItem = {},
                itemNeed = {},
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
        }
    },
    [176] = {
        Name = "อาวุธ +2", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_dagger+2"),
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                failItem = {},
                itemNeed = {},
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knife+2"),
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                failItem = {},
                itemNeed = {},
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = string.upper("weapon_poolcue+2"),
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 0,
                failItem = {},
                itemNeed = {},
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
        }
    },
    
	[177] = {
        Name = "อาวุธ +3", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = string.upper("weapon_dagger+3"),
                duration = 5,
                count = 1,
                rate = 100,     
                rate_show = true,
                cost = 0, 
                failItem = {},
                itemNeed = {},
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knife+3"),
                duration = 5,
                count = 1,
                rate = 100,  
                rate_show = true,
                cost = 0,                        
                failItem = {},
                itemNeed = {},
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = string.upper("weapon_poolcue+3"),
                duration = 5,
                count = 1,
                rate = 100,    
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {},
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
        }
    },
    [178] = {
        Name = "Senior Concil", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'mc_house_key_01',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = 'mc_house_key_02',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = 'mc_house_key_03',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = 'mc_house_key_04',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = 'mc_key_1_vault',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = 'mc_key_2_vault',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = 'mc_key_3_vault',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = 'mc_key_4_vault',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = 'open_Warmc_cardframe',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
            {
                name = 'open_fmj',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = true,
                cost = 0,
                itemNeed = {
                    -- {name = "carpart_body_ss5", amount = 1}
                },
                equipment = {
                    { name = "senior_cc", amount = 1 },
                },
            },
        }
    },

    [179] = {
        Name = "Skin Weapon Lv.2", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "darumalv2_skin_dagger",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "daruma_skin_shard", amount = 7 },
                    { name = "daruma_skin_dagger", amount = 1 },
                },
                failItem = { 
                    { name = "daruma_skin_dagger", amount = 1 },                                    
                },
            },
            {
                name = "darumalv2_skin_knife",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "daruma_skin_shard", amount = 7 },
                    { name = "daruma_skin_knife", amount = 1 },
                },
                failItem = { 
                    { name = "daruma_skin_knife", amount = 1 },                                    
                },
            },
            {
                name = "darumalv2_skin_poolcue",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "daruma_skin_shard", amount = 7 },
                    { name = "daruma_skin_poolcue", amount = 1 },
                },
                failItem = { 
                    { name = "daruma_skin_poolcue", amount = 1 },                                    
                },
            },
            {
                name = "sakuralv2_skin_dagger",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "sakura_skin_shard", amount = 7 },
                    { name = "sakura_skin_dagger", amount = 1 },
                },
                failItem = { 
                    { name = "sakura_skin_dagger", amount = 1 },                                    
                },
            },
            {
                name = "sakuralv2_skin_knife",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "sakura_skin_shard", amount = 7 },
                    { name = "sakura_skin_knife", amount = 1 },
                },
                failItem = { 
                    { name = "sakura_skin_knife", amount = 1 },                                    
                },
            },
            {
                name = "sakuralv2_skin_poolcue",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "sakura_skin_shard", amount = 7 },
                    { name = "sakura_skin_poolcue", amount = 1 },
                },
                failItem = { 
                    { name = "sakura_skin_poolcue", amount = 1 },                                    
                },
            },
        }
    },

    [180] = {
        Name = "Skin Weapon Lv.3", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "darumalv3_skin_dagger",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "daruma_skin_shard", amount = 10 },
                    { name = "darumalv2_skin_dagger", amount = 1 },
                },
                failItem = { 
                    { name = "darumalv2_skin_dagger", amount = 1 },                                    
                },
            },
            {
                name = "darumalv3_skin_knife",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "daruma_skin_shard", amount = 10 },
                    { name = "darumalv2_skin_knife", amount = 1 },
                },
                failItem = { 
                    { name = "darumalv2_skin_knife", amount = 1 },                                    
                },
            },
            {
                name = "darumalv3_skin_poolcue",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "daruma_skin_shard", amount = 10 },
                    { name = "darumalv2_skin_poolcue", amount = 1 },
                },
                failItem = { 
                    { name = "darumalv2_skin_poolcue", amount = 1 },                                    
                },
            },
            {
                name = "sakuralv3_skin_dagger",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "sakura_skin_shard", amount = 10 },
                    { name = "sakuralv2_skin_dagger", amount = 1 },
                },
                failItem = { 
                    { name = "sakuralv2_skin_dagger", amount = 1 },                                    
                },
            },
            {
                name = "sakuralv3_skin_knife",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "sakura_skin_shard", amount = 10 },
                    { name = "sakuralv2_skin_knife", amount = 1 },
                },
                failItem = { 
                    { name = "sakuralv2_skin_knife", amount = 1 },                                    
                },
            },
            {
                name = "sakuralv3_skin_poolcue",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 100000,
                itemNeed = {
                    { name = "sakura_skin_shard", amount = 10 },
                    { name = "sakuralv2_skin_poolcue", amount = 1 },
                },
                failItem = { 
                    { name = "sakuralv2_skin_poolcue", amount = 1 },                                    
                },
            },
        }
    },
    [181] = {
        Name = "ทั่วไป", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "mc_item",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 500,
                equipment = {
                    { name = 'mc_card', amount =1},
                },    
                itemNeed = {
                    { name = "sakura_coin", amount = 40 },
                    { name = "bronze_gem", amount = 1000 },
                    { name = "silver_gem", amount = 1000 },
                    { name = "gold_gem", amount = 1000 },
                    { name = "steel", amount = 30 }
                },
            },
        }
    },

    [182] = {
        Name = "MC Club", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'mc_card', amount =1},
                },    
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 3000,      
                equipment = {
                    { name = 'mc_card', amount =1},
                },                        
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "rum_beer",
                duration = 5,
                rate = 100,    
                count = 15,
                cost = 3000,
                equipment = {
                    { name = 'mc_card', amount =1},
                },    
                itemNeed = {
                    { name = "broke_patch_1_per", amount = 1 },
                },
            },
            {
                name = "fixkit_mc",
                duration = 5,
                rate = 100,    
                count = 15,
                cost = 3000,      
                equipment = {
                    { name = 'mc_card', amount =1},
                },                        
                itemNeed = {
                    { name = "broke_patch_1_per", amount = 1 },
                },
            },
            -- {
            --     name = "patch_1_per",
            --     duration = 5,
            --     rate = 100,    
            --     count = 1,
            --     cost = 3000,      
            --     equipment = {
            --         { name = 'mc_card', amount =1},
            --     },                        
            --     itemNeed = {
            --         { name = "sakura_coin", amount = 40 },
            --         { name = "bronze_gem", amount = 1000 },
            --         { name = "silver_gem", amount = 1000 },
            --         { name = "gold_gem", amount = 1000 },
            --         { name = "steel", amount = 30 }
            --     },
            -- },
            -- {
            --     name = "broke_patch_1_per",
            --     duration = 5,
            --     rate = 100,    
            --     count = 1,
            --     cost = 500,      
            --     equipment = {
            --         { name = 'mc_card', amount =1},
            --     },                        
            --     itemNeed = {
            --         { name = "sakura_coin", amount = 40 },
            --         { name = "bronze_gem", amount = 1000 },
            --         { name = "silver_gem", amount = 1000 },
            --         { name = "gold_gem", amount = 1000 },
            --         { name = "steel", amount = 30 }
            --     },
            -- },
            -- {
            --     name = "mc_item",
            --     duration = 5,
            --     rate = 100,    
            --     count = 1,
            --     cost = 500,      
            --     equipment = {
            --         { name = 'mc_card', amount =1},
            --     },                        
            --     itemNeed = {
            --         { name = "sakura_coin", amount = 40 },
            --         { name = "bronze_gem", amount = 1000 },
            --         { name = "silver_gem", amount = 1000 },
            --         { name = "gold_gem", amount = 1000 },
            --         { name = "steel", amount = 30 }
            --     },
            -- },
        }
    },

    [183] = {
        Name = "รถ", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "song_kran_isuzu",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 550000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 25 },
                    { name = "sakura_coin", amount = 2000 },
                },
            },
            {
                name = "song_kran_buffollo",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 450000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 20 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "song_kran_pcx",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 450000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 20 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
        }
    },

    [184] = {
        Name = "แฟชั่น", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "meow_sk5_do1",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 400000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 15 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "meow_sk5_do2",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 400000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 15 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "meow_sk5_do3",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 400000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 15 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "meow_sk5_fish",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 400000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 15 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "meow_sk5_swimring",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 400000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 15 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "meow_sk5_water",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 400000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 15 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
        }
    },

    [185] = {
        Name = "Skin (No Effect)", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "songkra_skin_knife_no",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 500000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 25 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "songkra_skin_dagger_no",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 500000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 25 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "songkra_skin_poolcue1_no",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 500000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 25 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "songkra_skin_poolcue2_no",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 500000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 25 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "songkra_skin_revolver_no",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 500000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 25 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
            {
                name = "songkra_skin_knuckle_no",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 500000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 25 },
                    { name = "sakura_coin", amount = 1000 },
                },
            },
        }
    },

    [186] = {
        Name = "Skin (Effect)", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = "songkra_skin_knife",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 650000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 30 },
                    { name = "sakura_coin", amount = 1500 },
                },
            },
            {
                name = "songkra_skin_dagger",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 650000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 30 },
                    { name = "sakura_coin", amount = 1500 },
                },
            },
            {
                name = "songkra_skin_poolcue1",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 650000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 30 },
                    { name = "sakura_coin", amount = 1500 },
                },
            },
            {
                name = "songkra_skin_poolcue2",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 650000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 30 },
                    { name = "sakura_coin", amount = 1500 },
                },
            },
            {
                name = "songkra_skin_revolver",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 650000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 30 },
                    { name = "sakura_coin", amount = 1500 },
                },
            },
            {
                name = "songkra_skin_knuckle",
                duration = 5,
                rate = 100,    
                count = 1,
                cost = 650000,
                itemNeed = {
                    { name = "card_give_songkran", amount = 30 },
                    { name = "sakura_coin", amount = 1500 },
                },
            },
        }
    },
    [187] = {
        Name = "BUNNY SKIN", -- // ชื่อหมวดหมู่
        Item = {
            {
                name = 'bunny_skin_dagger',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss8", amount = 1 },
                },
            },
            {
                name = 'bunny_skin_knife',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss8", amount = 1 },
                },
            },
            {
                name = 'bunny_skin_poolcue',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 0,
                itemNeed = {
                    { name = "weapon_skin_btp_ss8", amount = 1 },
                },
            },
        }
    },

    [188] = {
        Name = "ทั่วไป", 

        Item = {
            {
                name = "armor",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 2000,
                equipment = {
                    { name = 'family_card_c', amount =1},
                },
                itemNeed = {
                    { name = "steel", amount = 10 },
                    { name = "goldbar", amount = 10 },
                    { name = "sakura_coin", amount = 10 },
                },
            },
            {
                name = "aed",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 3000,
                equipment = {
                    { name = 'family_card_c', amount =1},
                },
                itemNeed = {
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = 'chipset',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                black_money = 64000,
                itemNeed = {
                    { name = "copperrod", amount = 80 },
                    { name = "wood_bon", amount = 80 },
                    { name = "sakura_coin", amount = 800 },
                },
            },
            {
                name = 'emp_citizen',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 128000,
                itemNeed = {
                    { name = "chipset", amount = 1 },
                    { name = "sakura-crystal", amount = 4 },
                    { name = "wood_bon", amount = 160 },
                    { name = "copperrod", amount = 160 },
                    { name = "sakura_coin", amount = 800 },
                },
            },
            {
                name = 'capsule_hyperloop',
                duration = 5,
                count = 1,
                rate = 100,
                rate_show = false,
                cost = 128000,
                itemNeed = {
                    { name = "chipset", amount = 1 },
                    { name = "sakura_coin", amount = 800 },
                },
            },
        }
    },
    [189] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "drug_a_fam",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 300,
                equipment = {
                    { name = 'family_card_c', amount =1},
                },
                itemNeed = {
                    { name = "cap_z", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
            {
                name = "drug_a_fam",
                duration = 5,
                rate = 100,
                count = 1,
                black_money = 0,
                equipment = {
                    { name = 'family_card_c', amount =1},
                },
                itemNeed = {
                    { name = "drug_a", amount = 1 },
                },
            },
            {
                name = "drug_b",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 500,
         
                equipment = {
                    { name = 'family_card_c', amount =1},
                },
                itemNeed = {
                    { name = "cap_x", amount = 1 },
                    { name = "cap_y", amount = 1 },
                    { name = "weed_pro", amount = 1 },
                    { name = "katom_pro", amount = 1 },
                    { name = "sakura_coin", amount = 30 },
                },
            },
        }
    },
    [190] = {
        Name = "มือ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "bbg_ui65_6",
                duration = 5,
                rate = 100,
                count = 1,
                equipment = {},
                itemNeed = {
                    { name = "fashion_card_ss10", amount = 40 },
                },
            },
        }
    },
    [191] = {
        Name = "Tournament", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "tournament_ticket",
                duration = 5,
                rate = 100,
                count = 1,
                cost = 250000,
                itemNeed = {
                    { name = "zombie_rag", amount = 499 },
                    { name = "sakura_coin", amount = 20 },
                },
            },
        }
    },
    [192] = {
        Name = "น้ำยา", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "buff_potion",
                duration = 5,
                rate = 60,
                count = 1,
                cost = 20000,
                itemNeed = {
                    { name = "cap_x", amount = 30 },
                    { name = "cap_y", amount = 30 },
                    { name = "cap_z", amount = 30 },
                    { name = "cement", amount = 20 },
                    { name = "sakura_coin", amount = 300 },
                },
            },
        }
    },

    [193] = {
        Name = "Revolver", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = string.upper("weapon_revolver+1"),
                duration = 5,
                rate = '?',  
                count = 1,
                cost = 50000,
                -- black_money = 5000,
                maxCount = 1,  
                failItem = {

                    { name = string.upper('weapon_revolver'), amount = 1},
                },
                itemNeed = {
                    { name = "buff_potion", amount = 1 },
                    {name = "vibranium", amount = 1},
                    {name = "box_craft_weapon", amount = 10},
                    {name = "platinum_gem", amount = 10},
                    {name = "Radiant", amount = 2},
                    {name = "sakura_coin", amount = 300},
                    {name = string.upper('weapon_revolver'), amount = 1},
                },
            },
            {
                name = string.upper("weapon_revolver+2"),
                duration = 5,
                rate = '?',  
                count = 1,
                cost = 60000,
                -- black_money = 7000,
                maxCount = 1,  
                failItem = {

                    { name = string.upper('weapon_revolver+1'), amount = 1},
                },
                itemNeed = {
                    { name = "buff_potion", amount = 1 },
                    {name = "vibranium", amount = 2},
                    {name = "box_craft_weapon", amount = 15},
                    {name = "platinum_gem", amount = 15},
                    {name = "Radiant", amount = 3},
                    {name = "sakura_coin", amount = 400},
                    {name = string.upper('weapon_revolver+1'), amount = 1},
                },
            },
            {
                name = string.upper("weapon_revolver+3"),
                duration = 5,
                rate = '?',  
                count = 1,
                cost = 70000,
                -- black_money = 9000,
                maxCount = 1,  
                failItem = {

                    { name = string.upper('weapon_revolver+2'), amount = 1},
                },
                itemNeed = {
                    { name = "buff_potion", amount = 1 },
                    {name = "vibranium", amount = 2},
                    {name = "box_craft_weapon", amount = 20},
                    {name = "platinum_gem", amount = 20},
                    {name = "Radiant", amount = 4},
                    {name = "sakura_coin", amount = 500},
                    {name = string.upper('weapon_revolver+2'), amount = 1},
                },
            },
        }
    },

    [194] = {
        Name = "Poolcue", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = string.upper("weapon_poolcue+4"),
                duration = 5,
                rate = '?',  
                count = 1,
                cost = 400000,
                failItem = {

                    { name = string.upper('weapon_poolcue+3'), amount = 1},
                    -- { name = 'sakura-failed', amount = 1},
                },
                itemNeed = {
                    { name = "buff_potion", amount = 1 },
                    {name = "vibranium", amount = 4},
                    {name = "box_craft_weapon", amount = 25},
                    {name = "platinum_gem", amount = 10},
                    {name = "sakura-crystal", amount = 2},
                    {name = "Radiant", amount = 2},
                    {name = "anti-potion", amount = 1},
                    {name = "sakura_coin", amount = 400},
                    {name = "WEAPON_POOLCUE+3", amount = 1},
                },
            },
            {
                name = string.upper("weapon_poolcue+5"),
                duration = 5,
                rate = '?',  
                count = 1,
                cost = 500000,
                failItem = {

                    { name = string.upper('weapon_poolcue+4'), amount = 1},
                    -- { name = 'sakura-failed', amount = 1},
                },
                itemNeed = {
                    { name = "buff_potion", amount = 1 },
                    {name = "vibranium", amount = 5},
                    {name = "box_craft_weapon", amount = 30},
                    {name = "platinum_gem", amount = 15},
                    {name = "sakura-crystal", amount = 3},
                    {name = "Radiant", amount = 4},
                    {name = "anti-potion", amount = 1},
                    {name = "sakura_coin", amount = 500},
                    {name = "WEAPON_POOLCUE+4", amount = 1},
                },
            },
        }
    },

    [195] = {
        Name = "อื่นๆ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = string.upper("weapon_machete+3"),
                duration = 5,
                count = 1,
                rate = '?',  
                rate_show = false,
                cost = 300000,
                failItem = {
    
                    { name = string.upper('weapon_machete+2'), amount = 1},
                    -- { name = 'sakura-failed', amount = 1},
                },
                itemNeed = {
                    { name = "buff_potion", amount = 1 },
                    { name = 'vibranium', amount = 3 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = "Radiant", amount = 2 },
                    { name = "anti-potion", amount = 1 },
                    { name = "sakura_coin", amount = 500 },
                    { name = string.upper('weapon_machete+2'), amount = 1 },
                },
            },
            {
                name = string.upper("weapon_knuckle+3"),
                duration = 5,
                count = 1,
                rate = '?',  
                rate_show = false,
                cost = 300000,
                failItem = {
    
                    { name = string.upper('weapon_knuckle+2'), amount = 1},
                    -- { name = 'sakura-failed', amount = 1},
                },
                itemNeed = {
                    { name = "buff_potion", amount = 1 },
                    { name = 'vibranium', amount = 3 },
                    { name = "box_craft_weapon", amount = 20 },
                    { name = "platinum_gem", amount = 7 },
                    { name = "sakura-crystal", amount = 1 },
                    { name = "Radiant", amount = 2 },
                    { name = "anti-potion", amount = 1 },
                    { name = "sakura_coin", amount = 500 },
                    { name = string.upper('weapon_knuckle+2'), amount = 1 },
                },
            },
        }
    },
    [196] = {
        Name = "วัตถุดิบ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "black_crystal_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "black-crystal", amount = 2 },
                },
            },
            {
                name = "blue_crystal_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "blue-crystal", amount = 10 },
                },
            },
            {
                name = "coal_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "coal", amount = 8 },
                },
            },
            {
                name = "copperrod_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "copperrod", amount = 20 },
                },
            },
            {
                name = "crystal_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "crystal", amount = 20 },
                },
            },
            {
                name = "diamond_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "diamond", amount = 20 },
                },
            },
            {
                name = "goldbar_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "goldbar", amount = 20 },
                },
            },
            {
                name = "grim_wood_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "grim_wood", amount = 2 },
                },
            },
            {
                name = "ruby_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "ruby", amount = 2 },
                },
            },
            {
                name = "amber_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "amber", amount = 2 },
                },
            },
            {
                name = "lapis_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "lapis", amount = 2 },
                },
            },
            {
                name = "obsidian_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "obsidian", amount = 2 },
                },
            },
            {
                name = "Netherite_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "Netherite", amount = 2 },
                },
            },
            {
                name = "sapphire_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "sapphire", amount = 2 },
                },
            },
            {
                name = "red_crystal_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "red-crystal", amount = 10 },
                },
            },
            {
                name = "steel_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "steel", amount = 20 },
                },
            },
            {
                name = "tin_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "tin", amount = 20 },
                },
            },
            {
                name = "yellow_crystal_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "yellow-crystal", amount = 10 },
                },
            },
            {
                name = "wood_bon_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "wood_bon", amount = 20 },
                },
            },

        }       
    },
    [197] = {
        Name = "งานดำ", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "cap_x_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "cap_x", amount = 10 },
                },
            },
            {
                name = "cap_y_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "cap_y", amount = 10 },
                },
            },
            {
                name = "cap_z_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "cap_z", amount = 10 },
                },
            },
            {
                name = "cement_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "cement", amount = 8 },
                },
            },
            {
                name = "coreA_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "coreA", amount = 2 },
                },
            },
            {
                name = "coreB_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "coreB", amount = 2 },
                },
            },
            {
                name = "coreC_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "coreC", amount = 2 },
                },
            },
            {
                name = "coreC_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "coreC", amount = 2 },
                },
            },
        }       
    },
    [198] = {
        Name = "ไอเทม", -- // ชื่อหมวดหมู่
    
        Item = {
            {
                name = "aed_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "aed", amount = 10 },
                },
            },
            {
                name = "armor_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "armor", amount = 3 },
                },
            },
            {
                name = "platinum_gem_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "platinum_gem", amount = 4 },
                },
            },
            {
                name = "sakura_crystal_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "sakura-crystal", amount = 2 },
                },
            },
            {
                name = "vibranium_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "vibranium", amount = 2 },
                },
            },
            {
                name = "emp_citizen_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "emp_citizen", amount = 4 },
                },
            },
            {
                name = "drill_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "drill", amount = 5 },
                },
            },
            {
                name = "anti_potion_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "anti-potion", amount = 2 },
                },
            },
            {
                name = "ammo_new",
                duration = 5,
                count = 1,
                rate = '100',  
                rate_show = true,
                cost = 0,
                failItem = {},
                itemNeed = {
                    { name = "ammo", amount = 3 },
                },
            },
        }       
    },
}