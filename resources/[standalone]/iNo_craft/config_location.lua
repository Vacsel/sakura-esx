
-- ตำแหน่งของโต๊ะคราฟและชนิดต่างๆ

-- ระยะการมองเห็นdrawtextโต๊ะคราฟ
Config['drawTextTitleCraft'] = 5 

-- รายละเอียดของโต๊ะคราฟแต่ละที่
Config['craftTable'] = {
    -- ['MINT1'] = {
    --     title = 'WEAPON CRAFT',
    --     coords = vector3(1738.773, 3313.569, 41.223),
    --     heading =  277.28,
    --     distance_action  = 2.0,
    --     model = 'ws_prop_anim_craftdrug_dvh', -- ws_prop_anim_craftdrug_dvh
    --     catagory = {1,2,3,5,6,7,8},
    --     -- job = {
    --     --     [1] = 'mint'
    --     -- },
    --     -- job_grade = {2}
    -- },

    -- ['Crafting_FOOD'] = {
    --     name = "Crafting", -- // ข้อความ
    --     desc = "~w~(FOOD)~w~", -- // คำอธิบาย
    --     coords = vector3(961.14, -3156.63, 5.9),
    --     heading =  199.58,
    --     name_distance = 30, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
    --     distance_action  = 2.0,
    --     model = '', -- ws_prop_anim_craftdrug_dvh
    --     catagory = {1,3,4},
    --     -- job = {
    --     --     [1] = 'ambulance'
    --     -- },
    --     -- job_grade = {2}
    -- },

    ['Crafting_FOOD1'] = {
        name = "Crafting", -- // ข้อความ
        desc = "~w~(FOOD)~w~", -- // คำอธิบา
       
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 30, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-73.64, -1990.13, 18.21), -- // Position
        heading = 199.58, -- // Heading
        catagory = { 1 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_General'] = {
        name = "Crafting General", -- // ข้อความ
        desc = "~w~(WEAPON)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(964.5142, -3173.8865, 11.8935), -- // Position
        heading = 248.58, -- // Heading
        catagory = { 4, 53, 2, 3, 27, 6, 23, 24, 25 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Gangs'] = {
        name = "Crafting Gangs", -- // ข้อความ
        desc = "~w~(Gangs)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(963.6975, -3120.2351, 11.8935), -- // Position
        heading = 248.58, -- // Heading
        catagory = { 5, 76, 85, 82, 83, 140 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Drugs'] = {
        name = "Crafting Drugs", -- // ข้อความ
        desc = "~w~(Drugs)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(970.1605, -3120.2979, 11.8935), -- // Position
        heading = 248.58, -- // Heading
        catagory = { 7 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Promote'] = {
        name = "Crafting Promote", -- // ข้อความ
        desc = "~w~(Promote)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(946.33, -3120.24, 11.89), -- // Position
        heading = 14.19, -- // Heading
        catagory = { 69, 136, 138, 139 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
   
	['Crafting_AFK'] = {
        name = "Crafting AFK", -- // ข้อความ
        desc = "~w~(AFK)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1148.7341, 3032.6797, 44.6751), -- // Position
        heading = 195.0341, -- // Heading
        catagory = { 21, 15, 16, 17 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_AFK2'] = {
        name = "Crafting AFK", -- // ข้อความ
        desc = "~w~(AFK)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(956.52, -3121.2, 11.89), -- // Position
        heading = 316.22, -- // Heading  
        catagory = { 21, 15, 16, 17 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    --[[ REBEL TOP ]]
    ['Crafting_General2'] = {
        name = "Crafting General", -- // ข้อความ
        desc = "~w~(WEAPON)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1153.7007, 3016.8928, 44.6752), -- // Position
        heading = 287.91, -- // Heading
        catagory = { 4, 53, 2, 3, 27, 6, 23, 24, 25 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Gangs2'] = {
        name = "Crafting Gangs", -- // ข้อความ
        desc = "~w~(Gangs)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1135.6672, 3012.0852, 44.6800), -- // Position
        heading = 288.92, -- // Heading
        catagory = { 5, 76, 85, 82, 83, 140 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Drugs2'] = {
        name = "Crafting Drugs", -- // ข้อความ
        desc = "~w~(Drugs)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1130.5593, 3019.4294, 44.6800), -- // Position
        heading = 198.05, -- // Heading
        catagory = { 7 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Medic'] = {
        name = "Crafting Medic", -- // ข้อความ
        desc = "~w~(Medic)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1128.6514, -1525.7131, 35.4188), -- // Position
        heading = 269.9266, -- // Heading
        catagory = { 10, 8, 22, 101, 102, 123 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        job = {
            [1] = 'ambulance'
        },
    },
    ['Crafting_Medic2'] = {
        name = "Crafting Medic", -- // ข้อความ
        desc = "~w~(Medic)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1843.8911, 3681.6941, 34.2748), -- // Position
        heading = 299.4376, -- // Heading
        catagory = { 10, 8, 22, 101, 102, 123 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        job = {
            [1] = 'ambulance'
        },
    },
    
    ['Crafting_Police'] = {
        name = "Crafting Police", -- // ข้อความ
        desc = "~w~(Police)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(474.7886, -975.0491, 36.0202), -- // Position
        heading = 87.9745, -- // Heading
        catagory = { 9, 11, 12, 101, 102, 123 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        job = {
            [1] = 'police'
        },
    },
    ['Crafting_Police2'] = {
        name = "Crafting Police", -- // ข้อความ
        desc = "~w~(Police)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1853.2635, 3690.0659, 34.2670), -- // Position
        heading = 301.9422, -- // Heading
        catagory = { 9, 11, 12, 101, 102, 123 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        job = {
            [1] = 'police'
        },
    },
    ['Crafting_Council'] =  {
        name = "Crafting Council", -- // ข้อความ
        desc = "~w~(Council)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-418.1656, 1070.0469, 329.1092), -- // Position
        heading = 78.9195, -- // Heading
        catagory = { 13, 14, 68, 29, 40, 70, 71, 65, 174 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        job = {
            [1] = 'council'
        },
    },
    ['Crafting_SeniorCouncil'] =  {
        name = "Crafting Council", -- // ข้อความ
        desc = "~w~(SeniorCouncil)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-419.5212, 1066.2434, 329.1099), -- // Position  
        heading = 76.1809, -- // Heading
        catagory = { 175, 176, 177, 178 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        job = {
            [1] = 'council'
        },
    },
    ['Crafting_House8'] =  {
        name = "Crafting House 8", -- // ข้อความ
        desc = "~w~(House 8)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(2247.3347, 1574.1989, 87.7869), -- // Position
        coords_nextLevel = vector3(2225.6963, 1559.2537, 87.7002), -- // Position
        heading = 272.0247, -- // Heading
        catagory = { 28, 47, 169, 170 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'House_08',
        levelhouse = 1
    },
    ['Crafting_House10'] =  {
        name = "Crafting House 10", -- // ข้อความ
        desc = "~w~(House 10)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1460.6730, -1570.6925, 81.7199), -- // Position
        coords_nextLevel = vector3(1478.3738, -1558.5892, 82.3775), -- // Position
        heading = 272.0247, -- // Heading
        catagory = { 89, 90, 169, 170 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'House_10',
        levelhouse = 1
    },
    ['Crafting_House9'] =  {
        name = "Crafting House 9", -- // ข้อความ
        desc = "~w~(House 9)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(2740.2095, 420.5145, 102.2791), -- // Position
        coords_nextLevel = vector3(2716.6006, 407.3935, 102.3205), -- // Position
        heading = 272.0247, -- // Heading
        catagory = { 86, 87, 169, 170 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'House_09',
        levelhouse = 1
    },
    ['Crafting_House1'] =  {
        name = "Crafting House 1", -- // ข้อความ
        desc = "~w~(House 1)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-1504.5206, -1261.6626, 11.0872), -- // Position
        coords_nextLevel = vector3(-1486.9637, -1243.2638, 10.7190), -- // Position
        heading = 83.9205, -- // Heading
        catagory = { 51, 52, 169, 170 },
        House = 'House_01',
        levelhouse = 1
    },
    ['Crafting_House2'] =  {
        name = "Crafting House 2", -- // ข้อความ
        desc = "~w~(House 2)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-2726.7700, -104.2890, 23.1991), -- // Position
        coords_nextLevel = vector3(-2721.52, -79.28, 22.91), -- // Position
        heading = 83.9205, -- // Heading
        catagory = { 54, 55, 169, 170 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'House_02',
        levelhouse = 1
    },
    ['Crafting_House7'] =  {
        name = "Crafting House 7", -- // ข้อความ
        desc = "~w~(House 7)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1434.9332, 1615.0402, 120.5012), -- // Position
        coords_nextLevel = vector3(1458.0114, 1628.1785, 120.2164), -- // Position
        heading = 83.9205, -- // Heading
        catagory = { 30, 50, 169, 170 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'House_07',
        levelhouse = 1
    },
    ['Crafting_House6'] =  {
        name = "Crafting House 6", -- // ข้อความ
        desc = "~w~(House 6)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(592.3309, 718.1667, 209.5259), -- // Position
        coords_nextLevel = vector3(582.14, 740.3, 210.02), -- // Position
        heading = 159.8772, -- // Heading
        catagory = { 39, 46, 169, 170 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'House_06',
        levelhouse = 1
    },
    ['Crafting_House5'] =  {
        name = "Crafting House 5", -- // ข้อความ
        desc = "~w~(House 5)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1094.6467, 1542.6791, 182.2446), -- // Position
        coords_nextLevel = vector3(1084.12, 1516.86, 181.97), -- // Position
        heading = 159.8772, -- // Heading
        catagory = { 44, 45, 169, 170 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'House_05',
        levelhouse = 1
    },
    ['Crafting_House4'] =  {
        name = "Crafting House 4", -- // ข้อความ
        desc = "~w~(House 4)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-839.6263, 1730.6917, 204.9068), -- // Position
        coords_nextLevel = vector3(-814.54, 1724.5, 204.8), -- // Position
        heading = 159.8772, -- // Heading
        catagory = { 61, 62, 169, 170 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'House_04',
        levelhouse = 1
    },
    ['Crafting_House3'] =  {
        name = "Crafting House 3", -- // ข้อความ
        desc = "~w~(House 3)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-975.7953, 1102.1454, 225.2686), -- // Position
        coords_nextLevel = vector3(-982.96, 1126.74, 225.47), -- // Position
        heading = 156.8335, -- // Heading
        catagory = { 80, 81, 169, 170 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'House_03',
        levelhouse = 1
    },
    -- ['Crafting_GachaponSS6'] = {
    --     name = "Crafting Gachapon SS6", -- // ข้อความ
    --     desc = "~w~(Gachapon SS6)~w~", -- // คำอธิบาย
    --     model = ``, -- เปลี่ยนโมเดลโต๊ะ
    --     name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
    --     distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
    --     coords = vector3(952.5516, -3120.2893, 6.2009), -- // Position
    --     heading = 83.9884, -- // Heading
    --     catagory = { 127, 128, 129, 130 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    -- },
    ['Crafting_GachaponSS10'] = {
        name = "Crafting Gachapon SS10", -- // ข้อความ
        desc = "~w~(Gachapon SS10)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(957.6840, -3120.2361, 6.2009), -- // Position
        heading = 83.9884, -- // Heading
        catagory = { 162, 163, 164, 167, 168,190 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_GachaponSS9'] = {
        name = "Crafting Gachapon SS9", -- // ข้อความ
        desc = "~w~(Gachapon SS9)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(952.5516, -3120.2893, 6.2009), -- // Position 
        heading = 83.9884, -- // Heading
        catagory = { 57,  32, 33, 36, 99 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    -- ['Crafting_GachaponSS4'] ={
    --     name = "Crafting Gachapon SS4", -- // ข้อความ
    --     desc = "~w~(Gachapon SS4)~w~", -- // คำอธิบาย
    --     model = ``, -- เปลี่ยนโมเดลโต๊ะ
    --     name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
    --     distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
    --     coords = vector3(957.6840, -3120.2361, 6.2009), -- // Position
    --     heading = 262.9958, -- // Heading
    --     catagory = { 31, 41, 37, 59, 60, 78, 88 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    -- },
    ['Crafting_Weapons'] = {
        name = "Crafting Weapons", -- // ข้อความ
        desc = "~w~(Weapons Buff percent)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(955.2906, -3173.8853, 11.8935), -- // Position
        heading = 271.0, -- // Heading
        catagory = { 2, 42, 43, 73, 144, 142, 143 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Weapons2'] = {
        name = "Crafting Weapons", -- // ข้อความ
        desc = "~w~(Weapons Buff percent)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1125.0876, 3010.3132, 44.6800), -- // Position
        heading = 271.0, -- // Heading
        catagory = { 2, 42, 43, 73, 144, 142, 143 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Apartment205'] = {
        name = "Crafting Apartment 205", -- // ข้อความ
        desc = "~w~(Apartment 205)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(408.4001, -35.2708, 99.6460), -- // Position
        heading = 159.8772, -- // Heading
        catagory = { 48, 49 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    
    ['Crafting_Apartment211'] = {
        name = "Crafting Apartment 211", -- // ข้อความ
        desc = "~w~(Apartment 211)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(415.1757, 12.5457, 99.6460), -- // Position
        heading = 159.8772, -- // Heading
        catagory = { 63, 64 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Apartment301'] = {
        name = "Crafting Apartment 301", -- // ข้อความ
        desc = "~w~(Apartment 301)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-745.0131, 6091.4702, 4.1368), -- // Position
        heading = 159.8772, -- // Heading
        catagory = { 124, 125 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Skin'] = {
        name = "Crafting Skin", -- // ข้อความ
        desc = "~w~(Weapon Skin)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(961.9165, -3159.8528, 6.2009), -- // Position
        heading = 159.8772, -- // Heading
        catagory = { 165, 166, 171, 172, 173, 187}, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Quest'] = {
        name = "Crafting Quest", -- // ข้อความ
        desc = "~w~(Quest Coupon)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(962.0192, -3141.5337, 6.2009), -- // Position
        heading = 63.2912, -- // Heading
        catagory = { 77 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },

    -- ['Crafting_Event'] = {
    --     name = "Crafting EVENT", -- // ข้อความ
    --     desc = "~w~(Event Halloween)~w~", -- // คำอธิบาย
    --     model = `gr_prop_gr_bench_04a`, -- เปลี่ยนโมเดลโต๊ะ
    --     name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
    --     distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
    --     coords = vector3(-529.72, -230.43, 36.7), -- // Position
    --     heading = 210.19, -- // Heading
    --     catagory = { 91, 92 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    -- },
    -- ['Crafting_Event'] = {
    --     name = "Crafting EVENT", -- // ข้อความ
    --     desc = "~w~(Event CHRISTMAS)~w~", -- // คำอธิบาย
    --     model = ``, -- เปลี่ยนโมเดลโต๊ะ
    --     name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
    --     distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
    --     coords = vector3(-300.77, -932.94, 31.24), -- // Position
    --     heading = 210.19, -- // Heading
    --     catagory = { 132, 133, 134 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    -- },

    ['Crafting_Slots'] = {
        name = "Crafting Slots", -- // ข้อความ
        desc = "~w~(Slots)~w~", -- // คำอธิบาย
        model = `gr_prop_gr_bench_04a`, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-95.1224, -1985.1331, 18.3886), -- // Position
        heading = 172.6681, -- // Heading
        catagory = { 93, 94, 95, 179, 180 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },

    ['Crafting_Sakura_Ticket'] = {
        name = "Crafting Sakura Ticket", -- // ข้อความ
        desc = "~w~(Ticket)~w~", -- // คำอธิบาย
        model = `gr_prop_gr_bench_04a`, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-97.8672, -1984.7740, 18.3886), -- // Position
        heading = 175.8813, -- // Heading
        catagory = { 97, 98 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },

    ['Crafting_Sakura_Club'] = {
        name = "เครื่องดื่มฟรี", -- // ข้อความ
        desc = "~w~(Club)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-19.5808, 276.0216, 94.952), -- // Position
        heading = 202.22-180.0, -- // Heading
        catagory = { 100 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },  
    
    ['Crafting_Bonus_AFK_Crafting'] = {
        name = "Crafting Bonus AFK", -- // ข้อความ
        desc = "~w~(Bonus AFK)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-85.6650, -1986.5372, 18.2875), -- // Position  - - -85.6650, -1986.5372, 18.2875, 171.5761
        heading = 171.5761, -- // Heading
        catagory = { 103, 104, 110, 111 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },

    ['Crafting_Upgrade_AFK_Crafting'] = {
        name = "Crafting Skin AFK", -- // ข้อความ
        desc = "~w~(Skin AFK)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-83.4804, -1986.8561, 18.2875), -- // Position -- -83.4804, -1986.8561, 18.2875, 170.8732
        heading = 170.8732, -- // Heading
        catagory = { 105, 106, 107, 108, 109 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },

    ['Crafting_Gun'] = {
        name = "Crafting Revolver", -- // ข้อความ
        desc = "~w~(Revolver)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(943.5832, -3181.5105, 11.8935), -- // Position
        heading = 202.22-180.0, -- // Heading
        catagory = { 120, 114, 115, 116, 117, 118, 119 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },

    ['Crafting_Ores'] = {
        name = "Crafting Ores", -- // ข้อความ
        desc = "~w~(Ores)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(934.1762, -3182.0242, 11.8935), -- // Position
        heading = 202.22-180.0, -- // Heading
        catagory = { 121, 135 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },

    ['Crafting_Gun_top'] = {
        name = "Crafting Revolver", -- // ข้อความ
        desc = "~w~(Revolver)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1123.3387, 3015.6782, 44.6800), -- // Position
        heading = 202.22-180.0, -- // Heading
        catagory = { 120, 114, 115, 116, 117, 118, 119 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },

    ['Crafting_Ores_top'] = {
        name = "Crafting Ores", -- // ข้อความ
        desc = "~w~(Ores)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(1121.6731, 3021.9116, 44.6800), -- // Position
        heading = 202.22-180.0, -- // Heading
        catagory = { 121, 135 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },

    ['Crafting_GangsSupport'] = {
        name = "Gang Support", -- // ข้อความ
        desc = "~w~(Gang Support)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 5, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-417.6483, 1099.5272, 326.8986), -- // Position
        heading = 202.22-180.0, -- // Heading
        catagory = { 147, 148 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Squid'] = {
        name = "Squid Coupon", -- // ข้อความ
        desc = "~w~(Squid Coupon)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 16, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-99.3275, -2026.9680, 18.2135), -- // Position
        heading = 332.42, -- // Heading
        catagory = { 149, 150, 151, 152 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_OnlineReward'] = {
        name = "Online Reward", -- // ข้อความ
        desc = "~w~(Online Reward)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 16, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-300.46, -938.04, 31.08), -- // Position 
        heading = 66.4904, -- // Heading
        catagory = { 153, 154, 155, 156, 157 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['Crafting_Newitem'] = {
        name = "New Item", -- // ข้อความ
        desc = "~w~(New Item)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 16, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(348.1741, -1636.7195, 98.4959), -- // Position 
        heading = 48.8333, -- // Heading
        catagory = { 196, 197, 198 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    },
    ['MC_HOUSE_2'] = {
        name = "MC Crafting", -- // ข้อความ
        desc = "~w~(MC Crafting)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 16, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-1482.3958, -205.3165, 54.5867), -- // Position
        coords_nextLevel = vector3(-1482.3958, -205.3165, 54.5867), -- // 
        heading = 332.42, -- // Heading
        catagory = { 181, 182 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'mc_house_02', -- // ชื่อบ้านที่ต้องการให้โต๊ะนี้อยู่
        levelhouse = 1
    },
    ['MC_HOUSE_1'] = {
        name = "MC Crafting", -- // ข้อความ
        desc = "~w~(MC Crafting)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 16, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-698.49, -416.51, 35.09), -- // Position
        coords_nextLevel = vector3(-698.49, -416.51, 35.09), -- //
        heading = 332.42, -- // Heading
        catagory = { 181, 182 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'mc_house_01', -- // ชื่อบ้านที่ต้องการให้โต๊ะนี้อยู่
        levelhouse = 1
    },
    ['MC_HOUSE_3'] = {
        name = "MC Crafting", -- // ข้อความ
        desc = "~w~(MC Crafting)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 16, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(-1186.09, -1148.96, 5.57), -- // Position
        coords_nextLevel = vector3(-1186.09, -1148.96, 5.57), -- //
        heading = 332.42, -- // Heading
        catagory = { 181, 182 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'mc_house_03', -- // ชื่อบ้านที่ต้องการให้โต๊ะนี้อยู่
        levelhouse = 1
    },
    ['MC_HOUSE_4'] = {
        name = "MC Crafting", -- // ข้อความ
        desc = "~w~(MC Crafting)~w~", -- // คำอธิบาย
        model = ``, -- เปลี่ยนโมเดลโต๊ะ
        name_distance = 16, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
        distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
        coords = vector3(972.43, -1784.28, 27.53), -- // Position
        coords_nextLevel = vector3(972.43, -1784.28, 27.53), -- //
        heading = 332.42, -- // Heading
        catagory = { 181, 182 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
        House = 'mc_house_04', -- // ชื่อบ้านที่ต้องการให้โต๊ะนี้อยู่    
        levelhouse = 1
    },

    -- ['SongKran'] = {
    --     name = "Songkran Festival", -- // ข้อความ
    --     desc = "~w~(Songkran Festival)~w~", -- // คำอธิบาย
    --     model = ``, -- เปลี่ยนโมเดลโต๊ะ
    --     name_distance = 16, -- // แสดง DrawText เมื่อเข้าใกล้ระยะเท่าไหร่
    --     distance_action = 1.5,   -- // เข้าใกล้โต๊ะเท่าไหร่จะสามารถกดเปิดเมนูได้
    --     coords = vector3(1138.9574, -724.2841, 56.7392), -- // Position
    --     heading = 332.42, -- // Heading
    --     catagory = { 183, 184, 185, 186 }, -- โต๊ะตัวนี้จะมีหมวดอะไรบ้าง อิงจาก cfg["category"]
    -- },

    ['FAMILY_VAULT_01'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-943.7509, -1316.6730, 6.1977),
        coords_nextLevel = vector3(-943.7509, -1316.6730, 6.1977),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_01',
        levelhouse = 1
    },
    ['FAMILY_VAULT_02'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-932.4545, -1312.5614, 6.1977),
        coords_nextLevel = vector3(-932.4545, -1312.5614, 6.1977),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_02',
        levelhouse = 1
    },
    ['FAMILY_VAULT_03'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-909.9166, -1304.3583, 6.1977),
        coords_nextLevel = vector3(-909.9166, -1304.3583, 6.1977),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_03',
        levelhouse = 1
    },
    ['FAMILY_VAULT_04'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-898.6535, -1300.2588, 6.1977),
        coords_nextLevel = vector3(-898.6535, -1300.2588, 6.1977),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_04',
        levelhouse = 1
    },
    ['FAMILY_VAULT_05'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-876.0895, -1292.0462, 6.1977),
        coords_nextLevel = vector3(-876.0895, -1292.0462, 6.1977),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_05',
        levelhouse = 1
    },
    ['FAMILY_VAULT_06'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-864.8128, -1287.9419, 6.1977),
        coords_nextLevel = vector3(-864.8128, -1287.9419, 6.1977),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_06',
        levelhouse = 1
    },
    ['FAMILY_VAULT_07'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-943.7053, -1316.6642, 9.7066),
        coords_nextLevel = vector3(-943.7053, -1316.6642, 9.7066),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_07',
        levelhouse = 1
    },
    ['FAMILY_VAULT_08'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-932.4175, -1312.5557, 9.7066),
        coords_nextLevel = vector3(-932.4175, -1312.5557, 9.7066),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_08',
        levelhouse = 1
    },
    ['FAMILY_VAULT_09'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-921.1391, -1308.4507, 9.7066),
        coords_nextLevel = vector3(-921.1391, -1308.4507, 9.7066),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_09',
        levelhouse = 1
    },
    ['FAMILY_VAULT_10'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-909.8769, -1304.3515, 9.7066),
        coords_nextLevel = vector3(-909.8769, -1304.3515, 9.7066),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_10',
        levelhouse = 1
    },
    ['FAMILY_VAULT_11'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-898.5996, -1300.2469, 9.7066),
        coords_nextLevel = vector3(-898.5996, -1300.2469, 9.7066),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_11',
        levelhouse = 1
    },
    ['FAMILY_VAULT_12'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-887.3238, -1296.1370, 9.7053),
        coords_nextLevel = vector3(-887.3238, -1296.1370, 9.7053),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_12',
        levelhouse = 1
    },
    ['FAMILY_VAULT_13'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-876.0349, -1292.0380, 9.7066),
        coords_nextLevel = vector3(-876.0349, -1292.0380, 9.7066),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_13',
        levelhouse = 1
    },
    ['FAMILY_VAULT_14'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-864.7630, -1287.9314, 9.7066),
        coords_nextLevel = vector3(-864.7630, -1287.9314, 9.7066),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_14',
        levelhouse = 1
    },
    ['FAMILY_VAULT_15'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-943.7196, -1316.6952, 13.1980),
        coords_nextLevel = vector3(-943.7196, -1316.6952, 13.1980),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_15',
        levelhouse = 1
    },
    ['FAMILY_VAULT_16'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-932.4454, -1312.5917, 13.1980),
        coords_nextLevel = vector3(-932.4454, -1312.5917, 13.1980),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_16',
        levelhouse = 1
    },
    ['FAMILY_VAULT_17'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-921.1687, -1308.4873, 13.1980),
        coords_nextLevel = vector3(-921.1687, -1308.4873, 13.1980),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_17',
        levelhouse = 1
    },
    ['FAMILY_VAULT_18'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-909.9044, -1304.3875, 13.1980),
        coords_nextLevel = vector3(-909.9044, -1304.3875, 13.1980),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_18',
        levelhouse = 1
    },
    ['FAMILY_VAULT_19'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-898.6211, -1300.2806, 13.1980),
        coords_nextLevel = vector3(-898.6211, -1300.2806, 13.1980),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_19',
        levelhouse = 1
    },
    ['FAMILY_VAULT_20'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-887.3406, -1296.1750, 13.1980),
        coords_nextLevel = vector3(-887.3406, -1296.1750, 13.1980),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_20',
        levelhouse = 1
    },
    ['FAMILY_VAULT_21'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-876.0663, -1292.0713, 13.1980),
        coords_nextLevel = vector3(-876.0663, -1292.0713, 13.1980),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_21',
        levelhouse = 1
    },
    ['FAMILY_VAULT_22'] = {
        name = "Family Crafting",
        desc = "~w~(Family Crafting)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(-864.7998, -1287.9706, 13.1980),
        coords_nextLevel = vector3(-864.7998, -1287.9706, 13.1980),
        heading = 332.42,
        catagory = { 188, 189 },
        House = 'family_apartment_22',
        levelhouse = 1
    },
    -- ['Tournament_Event'] = {
    --     name = "~b~ Tournament Event",
    --     desc = "~w~(Tournament Event)~w~",
    --     model = '',
    --     name_distance = 16,
    --     distance_action = 1.5,
    --     coords = vector3(-321.7054, -938.2599, 31.0806),
    --     coords_nextLevel = vector3(-321.7054, -938.2599, 31.0806),
    --     heading = 332.42,
    --     catagory = { 191 }
    -- },

    ['Buff_Percent'] = {
        name = "~b~ Buff Percent",
        desc = "~w~(Buff Percent)~w~",
        model = '',
        name_distance = 16,
        distance_action = 1.5,
        coords = vector3(961.2352, -3166.5872, 11.8935),
        coords_nextLevel = vector3(961.2352, -3166.5872, 11.8935),
        heading = 332.42,
        catagory = { 192, 193, 194, 195 }
    }
}