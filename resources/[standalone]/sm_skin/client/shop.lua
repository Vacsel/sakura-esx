
PolyZoneTable = {}
isShopZone = {
    isInside = false,
    shopName = nil
}

CreateThread(function()

    while ESX == nil do 
        Wait(500) 
    end

    local TableZone= {}
    for nameShop, value in pairs(Config['ShopPosition']) do
        for labelShop, info in pairs(value) do
            if info.type == 'poly' then
                local keyNmae = tostring(nameShop..labelShop)
            
                PolyZoneTable[keyNmae] = PolyZone:Create(info.zone, {
                    name= nameShop,
                    type_shop = nameShop,
                    minZ=info.zone[1].z - 1.78,
                    maxZ=info.zone[1].z + 1.78,
                    debugPoly = true,
                })
                table.insert(TableZone, PolyZoneTable[keyNmae])
            end
        end
    
    end
    
    if ComboZone then
        local shop_zone = ComboZone:Create(TableZone, {name="shopX", debugPoly =true})
        
        
        shop_zone:onPlayerInOut(function(isPointInside, point, zone)
            if zone then
                if isPointInside then
                    if not isShopZone.isInside then
                        isShopZone.shopName = zone.name
                        isShopZone.isInside = true
                    end				
                else
                    isShopZone.isInside = false
                    isShopZone.shopName = nil
                end
            end
        end, 500)
    end
end)

Citizen.CreateThread(function()
    local time = math.random(500, 1000)
    while true do 
        Wait(time)
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local check = false
        local index = nil

        for k, v in pairs(Config['ShopPosition']) do 
            for _k, _v in pairs(v) do
                if _v.type ~= 'poly' and GetDistanceBetweenCoords(_v.zone, coords, false) <= _v.rad then 
                    check = true
                    index = k
                    if _v.marker then 
                        DrawCustomMarker(_v.marker.type, _v.zone, _v.marker.size, _v.marker.color)
                    end
                end
            end
        end
        if isShopZone.isInside then
            time = 0
            if IsControlJustPressed(0, 38) and IsPedOnFoot(ped) then 
                OpenShop(isShopZone.shopName)
            end
        else
            if check then 
                time = 0
                if IsControlJustPressed(0, 38) and IsPedOnFoot(ped) then 
                    OpenShop(index)
                end
            else
                time = 500
            end
        end
    end
end)


function DrawCustomMarker(mtype, zone, size, color)
    DrawMarker(mtype, zone.x, zone.y, zone.z - 1, 0.0, 0.0, 0.0, 0, 0.0, 0.0, size[1], size[2],  size[3], color[1], color[2], color[3], color[4], false, true, 2, false, false, false, false)
    -- DrawMarker(mtype, zone.x, zone.y, zone.z - 0.5, 0.0, 0.0, 0.0, 0, 0.0, 0.0, size[1], size[2],  0.2, color[1], color[2], color[3], color[4], false, true, 2, false, false, false, false)
    -- DrawMarker(mtype, zone.x, zone.y, zone.z - 0.5, 0.0, 0.0, 0.0, 0, 0.0  -180.0, 0.0, size[1], size[2],  0.2, color[1], color[2], color[3], color[4], false, true, 2, false, false, false, false)
end

function OpenShop(k)
    if k == 'BarberShop' then 
        OpenMenuBaber({
            'beard_1', 'beard_2', 'beard_3', 'beard_4', 'hair_1', 'hair_2', 'hair_color_1',
            'hair_color_2', 'eyebrows_1', 'eyebrows_2', 'eyebrows_3', 'eyebrows_4', 'makeup_1', 'makeup_2',
            'makeup_3', 'makeup_4', 'lipstick_1', 'lipstick_2', 'lipstick_3', 'lipstick_4', 'ears_1',
            'ears_2', 'blush_1', 'blush_2', 'blush_3',
        })
    elseif k == 'ClotheShop' then
        OpenMenuClothShop({ 
            'tshirt_1',	'tshirt_2', 'torso_1', 'torso_2', 'decals_1', 'decals_2', 'arms',
            'arms_2', 'pants_1', 'pants_2', 'shoes_1', 'shoes_2', 'chain_1', 'chain_2',
            'helmet_1', 'helmet_2', 'glasses_1', 'glasses_2', 'bags_1', 'bags_2',
            'bproof_1', 'bproof_2', 'watches_1', 'watches_2', 'bracelets_1', 'bracelets_2'
        })
    elseif k == 'MaskShop' then 
        OpenMenuAccessoryShop(
            { 'mask_1', 'mask_2' },
            'mask',
            {
                ['mask'] = {
                    label = 'หน้ากาก',
                    data = {
                        {
                            label = 'รูปแบบ',
                            name = 'mask_1',
                            max = 28,
                            min = 0,
                            value = 0,
                        },
                        {
                            label = 'ความเข้ม',
                            name = 'mask_2',
                            max = 10,
                            min = 0,
                            value = 0,
                        },
                    }
                },
            }
        )
    elseif k == 'Locker' then 
        OpenMenuLocker()
    elseif k == 'EarsShop' then 
        OpenMenuAccessoryShop(
            { 'ears_1', 'ears_2' },
            'ears',
            {
                ['ears'] = {
                    label = 'ต่างหู',
                    data = {
                        {
                            label = 'รูปแบบ',
                            name = 'ears_1',
                            max = 1,
                            min = 0,
                            value = 0,
                        },
                        {
                            label = 'สี / ลาย',
                            name = 'ears_2',
                            max = 1,
                            min = 0,
                            value = 0,
                        },
                    }
                },
            }
        )
    elseif k == 'HelmetShop' then 
        OpenMenuAccessoryShop(
            { 'helmet_1', 'helmet_2' },
            'helmet',
            {
                ['helmet'] = {
                    label = 'หมวก',
                    data = {
                        {
                            label = 'รูปแบบ',
                            name = 'helmet_1',
                            max = 1,
                            min = 0,
                            value = 0,
                        },
                        {
                            label = 'สี / ลาย',
                            name = 'helmet_2',
                            max = 1,
                            min = 0,
                            value = 0,
                        },
                    }
                },
            }
        )
    elseif k == 'GlassesShop' then 
        OpenMenuAccessoryShop(
            { 'glasses_1', 'glasses_2' },
            'glasses',
            {
                ['glasses'] = {
                    label = 'แว่นตา',
                    data = {
                        {
                            label = 'รูปแบบ',
                            name = 'glasses_1',
                            max = 1,
                            min = 0,
                            value = 0,
                        },
                        {
                            label = 'สี / ลาย',
                            name = 'glasses_2',
                            max = 1,
                            min = 0,
                            value = 0,
                        },
                    }
                },
            }
        )
    end
end