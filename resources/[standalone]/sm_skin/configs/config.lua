--[[ 
    script: Skin System & Clothe Shop
    author: SM Developer
    discord: https://discord.gg/ZbJP9wptwB
    ทางเราขอบคุณเป็นอย่างยิ่งที่ท่านได้สนับสนุนสินค้าของเรา
]]

Config = Config or {}

Config['router_base'] = {
    ['getSharedObject'] = 'esx:getSharedObject',
    ['playerLoaded'] = 'esx:playerLoaded',
    ['onPlayerDeath'] = 'esx:onPlayerDeath',
}

Config['MainSetting'] = {
    ['skinchnager_advance'] = false, -- New and Old
    ['cost_cloth_shop'] = { -- ราคา ร้านเสื้อผ้า
        faverite = 1000,
        buy = 500,
    },
    ['cost_baber_shop'] = { -- ราคา ร้านตัดผม
        faverite = 1000,
        buy = 500,
    },
    ['cost_mask_shop'] = 500, -- ราคา ร้านหน้ากาก
    ['cost_ears_shop'] = 500, -- ราคา ร้านต่างหู
    ['cost_helmet_shop'] = 500, -- ราคา ร้านหมวก
    ['cost_glasses_shop'] = 500, -- ราคา ร้านแว่นตา
}

Config['Reskin_Items'] = {
    enable = true,
    name = 'skin_card',
    remove = true
}

Config['advance_add'] = { -- หากไม่ต้องการให้ปรับส่วนไหนให้ปิดทิ้งไป
    ['nose_1'] = true,
    ['nose_2'] = true,
    ['nose_3'] = true,
    ['nose_4'] = true,
    ['nose_5'] = true,
    ['nose_6'] = true,
    ['cheeks_1'] = true,
    ['cheeks_2'] = true,
    ['cheeks_3'] = true,
    ['lip_thickness'] = true,
    ['jaw_1'] = true,
    ['jaw_2'] = true,
    ['chin_1'] = true,
    ['chin_2'] = true,
    ['chin_3'] = true,
    ['chin_4'] = true,
    ['neck_thickness'] = true,
    ['eyebrows_5'] = true,
    ['eyebrows_6'] = true,
    ['eye_squint'] = true
}

Config['FocusZone'] = {
    ['body'] = { 
        coords = { x = 0, y = 1.2, z = 0.2 }, 
        point = {x = 0, y = 0, z = 0.2},
        fov = 50.0
    },
    ['head'] = {
        coords = { x = 0, y = 0.6, z = 0.65 },
        point = { x = 0, y = 0, z = 0.6 },
        fov = 50.0
    },
    ['leg'] = {
		coords = { x = 0, y = 1.4, z = -0.5 }, 
        point = { x = 0, y = 0, z = -0.5 },
        fov = 50.0
    },
	['foot'] = {
        coords = { x = 0, y = 0.98, z = -0.7 },
        point = { x = 0, y = 0, z = -0.9 },
        fov = 50.0
    },
    ['default'] = {
        coords = { x = 0, y = 2.6, z = 0.2 },
        point = { x = 0, y = 0, z = 0.0 },
        fov = 50.0
    },
}

Config['Light'] = {
    color = {255, 255,255},
    brightness = 6.0
}

EnableControlOpenUi = function() -- ปุ่มที่สามารภกดได้เมื่ออยู่ใน UI
    EnableControlAction(0, 73) -- X
	EnableControlAction(0, 249) -- N
end

OnActive = function() --เมื่อเปิดหน้าต่างระบบ
    --exports.nc_inventory:BlockKey({ '1', '2', '3', '4', '5', '6', '7', '8', '9' }, true)
end

OnUnactive = function() --เมื่อออกจากหน้าต่างระบบ
    ClearPedTasks(PlayerPedId())
    --exports.nc_inventory:BlockKey({ '1', '2', '3', '4', '5', '6', '7', '8', '9' }, false)
end