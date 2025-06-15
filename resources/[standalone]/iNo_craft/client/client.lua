script_name = GetCurrentResourceName()
ESX = exports["es_extended"]:getSharedObject()
local uiDisplay = false 
local Data = {}
local click = false 
local nameCraft = ''
local loadweapon = {}
local weaponList = {}
local labelitem = {}
local PlayerDataVault = {}
local UseVault = false
local lastVaultToggle = 0
local fetchingVault = false
local itemhouse = {
	['House_01'] = 'house_key_1',
	['House_02'] = 'house_key_2',
	['House_03'] = 'house_key_3',
	['House_04'] = 'house_key_4',
	['House_05'] = 'house_key_5',
	['House_06'] = 'house_key_6',
	['House_07'] = 'house_key_7',
	['House_08'] = 'house_key_8',
	['House_09'] = 'house_key_9',
	['House_10'] = 'house_key_10',
    ['mc_house_04'] = 'mc_house_key_04',
    ['mc_house_03'] = 'mc_house_key_02',
    ['mc_house_02'] = 'mc_house_key_03',
    ['mc_house_01'] = 'mc_house_key_01',
    ['family_apartment_01'] = 'ap_key_101',
    ['family_apartment_02'] = 'ap_key_102',
    ['family_apartment_03'] = 'ap_key_103',
    ['family_apartment_04'] = 'ap_key_104',
    ['family_apartment_05'] = 'ap_key_105',
    ['family_apartment_06'] = 'ap_key_106',
    ['family_apartment_07'] = 'ap_key_107',
    ['family_apartment_08'] = 'ap_key_108',
    ['family_apartment_09'] = 'ap_key_109',
    ['family_apartment_10'] = 'ap_key_110',
    ['family_apartment_11'] = 'ap_key_111',
    ['family_apartment_12'] = 'ap_key_112',
    ['family_apartment_13'] = 'ap_key_113',
    ['family_apartment_14'] = 'ap_key_114',
    ['family_apartment_15'] = 'ap_key_115',
    ['family_apartment_16'] = 'ap_key_116',
    ['family_apartment_17'] = 'ap_key_117',
    ['family_apartment_18'] = 'ap_key_118',
    ['family_apartment_19'] = 'ap_key_119',
    ['family_apartment_20'] = 'ap_key_120',
    ['family_apartment_21'] = 'ap_key_121',
    ['family_apartment_22'] = 'ap_key_122'
}

local PlayerData = {}

Citizen.CreateThread(function()
    Wait(500)
    while ESX.GetPlayerData().inventory == nil do 
        Citizen.Wait(100) 
    end
    while ESX.GetPlayerData().job == nil do 
        Citizen.Wait(100) 
    end
    ESX.PlayerData.inventory = ESX.GetPlayerData().inventory
    PlayerData = ESX.GetPlayerData()
    for i = 1, #ESX.PlayerData.inventory do
        local item =  ESX.PlayerData.inventory[i]
        labelitem[item.name] = item.label
    end
    SendNUIMessage({
        loadui = true 
    })
    Wait(1000)
    for _, weapon in ipairs(ESX.GetWeaponList()) do
        weaponList[weapon.name] = true
    end
    Wait(0)
    SendNUIMessage({
        type = 'setting',
        path = Config['item_path'],
        color = Config['color']
    })
    Wait(1000)
    for _ , v in pairs(Config['item_type']) do 
        for __ ,w in pairs (v.Item) do 
            w.maxCount = (w.maxCount or Config['maxcount'])
            if not isWeapon(w.name) then
            --if not string.find(w.name, "^WEAPON_") and not string.find(w.name, "^weapon_") then
                if w.day ~= nil then
                    w.label = Config['label_item'](getLabelItems(w.name), (w.count or 1)).. ' เช่าไอเทม '.. w.day.. ' วัน '
                else
                    w.label = Config['label_item'](getLabelItems(w.name), (w.count or 1))
                end
                
                for ___, z in pairs(w.itemNeed) do 
                    if not isWeapon(z.name) then
                  --  if not string.find(z.name, "^WEAPON_") and not string.find(z.name, "^weapon_") then
                        z.label = getLabelItems(z.name)
                      
                    else
                        z.label = getLabelWeapon(z.name)
                    end
                   -- Wait(0)
                end 
            else
            
                w.label = getLabelWeapon(w.name)
                for ___,z in pairs(w.itemNeed) do 
                    if not isWeapon(z.name) then
                        z.label = getLabelItems(z.name)
                    else 
                        z.label = getLabelWeapon(z.name)
                       
                    end
                   -- Wait(0)
                end 
            end 
            Wait(0)
        end 
       -- Wait(0)
    end 
    TriggerServerEvent('iNo_craft:ReCheckWeapon')
    loadScript()
end)
loadScript = function()
    

    RegisterNetEvent('esx:addInventoryItem')
    AddEventHandler('esx:addInventoryItem', function(item, count, showNotification)
        for k,v in ipairs(ESX.PlayerData.inventory) do
            if v.name == item then
                ESX.PlayerData.inventory[k].count = count
              
                break
            end
        end
        if nameCraft ~= '' then
            Citizen.Wait(100)
            reloadMaterial(nameCraft)
        end

    end)

    RegisterNetEvent('esx:removeInventoryItem')
    AddEventHandler('esx:removeInventoryItem', function(item, count, showNotification)
        for k,v in ipairs(ESX.PlayerData.inventory) do
            if v.name == item then
                ESX.PlayerData.inventory[k].count = count
                break
            end
        end
      
        if nameCraft ~= '' then
            Citizen.Wait(100)
            reloadMaterial(nameCraft)
        end

    end)


    _table = {}
    -- Citizen.CreateThread(function()
    --     for _, v in pairs(Config['craftTable']) do
    --         if v.model and v.model ~= nil and v.model ~= '' then 
    --             _table[_] = CreateObject(v.model, v.coords.x, v.coords.y, v.coords.z - 2.27, false, false, true)
    --             SetEntityHeading(_table[_], v.heading)
    --             FreezeEntityPosition(_table[_], true)
    --         end 
    --     end 
    -- end)
    AddEventHandler('onResourceStop', function(resource)
        if resource == script_name then
            for k,v in pairs(_table) do
                DeleteEntity(v)
            end
        end
    end)
    AddEventHandler(Config['onPlayerDeath'], function(data)
        if uiDisplay then 
            while click do 
                Wait(5)
            end 
            -- click = false 
            nameCraft = ''
            uiDisplay = false 
            SetNuiFocus(false,false)
            SendNuiMessage(json.encode({
                type = 'showDisplay',
                showDisplay = false,
            }))
        end 
    end)

    -- Citizen.CreateThread(function()
    --     while true do
    --         local sleep = 500
    --         local ped = PlayerPedId()
    --         if uiDisplay then
    --             sleep = 0
    --             if click then
    --                 SetNuiFocus(false, false)
    --                 DisableAllControlActions(0)
    --                 EnableControlAction(0, 249, true)
    --             else
    --                 SetNuiFocus(true, true) 
    --             end
    --         end
    --         Citizen.Wait(sleep)
    --     end
    
    -- end)
    
    local craftPoints = {}

    local function createCraftPoints()
        local PlayerData = ESX.GetPlayerData()
        for id, v in pairs(Config['craftTable']) do
            local coords = v.coords
            if v.House and v.coords_nextLevel then
                if exports.BN_CouncilManager:GetHouseLevel(v.House) > 4 then
                    coords = v.coords_nextLevel
                end
            end

            craftPoints[id] = lib.points.new({
                coords = coords,
                distance = v.name_distance or Config['drawTextTitleCraft'],
                id = id
            })

            craftPoints[id].onExit = function(self)
                if nameCraft == id and uiDisplay and not click and Config['out_action_disable'] then
                    uiDisplay = false
                    nameCraft = ''
                    SetNuiFocus(false,false)
                    SendNuiMessage(json.encode({
                        type = 'showDisplay',
                        showDisplay = false,
                    }))
                end
                exports['nxt_core']:CloseTextUI('crafting-'..id, true)
            end

            craftPoints[id].onEnter = function(self)
                local pos = GetEntityCoords(cache.ped)
                local displayCoords = coords
                local text
                if v.House and v.coords_nextLevel then
                    if exports.BN_CouncilManager:GetHouseLevel(v.House) > 4 then
                        displayCoords = v.coords_nextLevel
                    end
                end

                if v.House and type(v.House) == 'string' and (string.find(v.House, 'mc_') and exports.BN_CouncilManager:GetHouseLevel(v.House) >= 1 or string.find(v.House, 'family_apartment_') and exports.BN_CouncilManager:GetHouseLevel(v.House) == nil) then
                    text = v.name
                elseif v.House and exports.BN_CouncilManager:GetHouseLevel(v.House) >= 3 then
                    if v.House ~= nil and (string.find(v.House, 'mc_') or string.find(v.House, 'family_apartment_') or string.find(v.House, 'House_')) then
                        text = v.name
                    end
                elseif v.House == nil then
                    text = v.name
                end
                exports["nxt_core"]:TextUI('E', text, 'crafting-'..id, true, {
                    coords = displayCoords,
                })
            end

            craftPoints[id].nearby = function(self)
                if self.currentDistance <= v.distance_action then
                    if IsControlJustPressed(0, 38) then
                        if IsPedOnFoot(cache.ped) or Config['open_inVehicle'] then
                            if not v.House or checkHasItem(itemhouse[v.House], 1) then
                                if not uiDisplay then
                                    local checkJob = false
                                    local job = PlayerData.job.name
                                    local job_grade = PlayerData.job.grade
                                    if v.job then
                                        for ___, z in pairs(v.job) do
                                            if job == z then
                                                if v.job_grade then
                                                    for __ ,w in pairs(v.job_grade) do
                                                        if job_grade == w then
                                                            checkJob = true
                                                        end
                                                    end
                                                else
                                                    checkJob = true
                                                end
                                            end
                                        end
                                    else
                                        checkJob = true
                                    end

                                    if checkJob then
                                        if Config['actionWillopentable'] then
                                            nameCraft = id
                                            uiDisplay = true
                                            openCraftTable(id)
                                            SetNuiFocus(true, true) 
                                        end
                                    else
                                        Config['job_not_allow']()
                                        Wait(Config['Delay_open'])
                                    end
                                end
                            end
                        else
                            Config['CANTOPEN_ONVEHICLE']()
                            Wait(Config['Delay_open'])
                        end
                    end
                end
            end
        end
    end

    createCraftPoints()

    -- [[ ALL FUNCTION ]] --

    openCraftTable = function(name)
        Data = {}
        TriggerServerEvent('iNo_craft:ReCheckWeapon')
        
        local categories = Config['craftTable'][name].catagory
        local displayCategories = {}
    
        -- ถ้ามีการกำหนด House ให้ใช้เช็คเลเวลบ้านเพื่อตัดหมวดหมู่ที่จะแสดง
        if Config['craftTable'][name].House ~= nil and (string.find(Config['craftTable'][name].House, 'mc_') or string.find(Config['craftTable'][name].House, 'family_apartment_')) then
            local houseLevel = exports.BN_CouncilManager:GetHouseLevel(Config['craftTable'][name].House)
            local limit = nil
            if string.find(Config['craftTable'][name].House, 'family_apartment_') then
                if houseLevel == 3 then
                    limit = 1
                elseif houseLevel == 4 then
                    limit = 2
                end
            else
                if houseLevel == 1 then
                    limit = 1
                elseif houseLevel == 4 then
                    limit = 2
                elseif houseLevel == 5 then
                    limit = 2
                elseif houseLevel == 6 then
                    limit = 3
                elseif houseLevel == 7 then
                    limit = 3
                elseif houseLevel == 8 then
                    limit = 4
                end
            end
    
            if limit then
                -- สมมติว่า categories เป็นตารางแบบเรียงลำดับ (array)
                for i = 1, limit do
                    if categories[i] then
                        table.insert(displayCategories, categories[i])
                    end
                end
            else
                displayCategories = categories
            end
        elseif Config['craftTable'][name].House ~= nil then
            local houseLevel = exports.BN_CouncilManager:GetHouseLevel(Config['craftTable'][name].House)
            local limit = nil
            if houseLevel == 3 then
                limit = 1
            elseif houseLevel == 4 then
                limit = 2
            elseif houseLevel == 5 then
                limit = 2
            elseif houseLevel == 6 then
                limit = 3
            elseif houseLevel == 7 then
                limit = 3
            elseif houseLevel == 8 then
                limit = 4
            end
    
            if limit then
                -- สมมติว่า categories เป็นตารางแบบเรียงลำดับ (array)
                for i = 1, limit do
                    if categories[i] then
                        table.insert(displayCategories, categories[i])
                    end
                end
            else
                displayCategories = categories
            end
        else
            displayCategories = categories
        end
    
        for _ , v in pairs(displayCategories) do 
            Data[tostring(v)] = Config['item_type'][v]
            for __, w in pairs(Data[tostring(v)].Item) do 
                for ___, z in pairs(w.itemNeed) do 
                    if not isWeapon(z.name) then
                        z.have = checkItemCount(z.name)
                    else 
                        if checkHasWeapon(z.name) then 
                            z.have = 1
                        else 
                            z.have = 0
                        end 
                    end 
                end 
                if w.equipment ~= nil then
                    for ___, z in pairs(w.equipment) do
                        if not isWeapon(z.name) then
                            z.have = checkItemCount(z.name)
                        else
                            if checkHasWeapon(z.name) then
                                z.have = 1
                            else
                                z.have = 0
                            end
                        end
                    end
                end
            end 
            Wait(0)
        end 
    
        -- lib.callback('iNo_craft:ChackMoney', false, function(accounts)
        --     local money, black_money = 0, 0
        --     for _,v in pairs(accounts) do
        --         if v.name == 'cash' then
        --             money = v.money
        --         elseif v.name == 'black_money' then
        --             black_money = v.money
        --         end
        --     end
        --     SendNuiMessage(json.encode({
        --         type = 'showDisplay',
        --         showDisplay = true,
        --         ItemList = Data,
        --         money = money,
        --         black_money = black_money,
        --     }))
        -- end)

        local money = 0
        local black_money = 0
        
        if PlayerData.accounts then
            for k, v in pairs(PlayerData.accounts) do
                if v.name == 'money' then
                    money = v.money
                elseif v.name == 'black_money' then
                    black_money = v.money
                end
            end
        end

        SendNuiMessage(json.encode({
            type = 'showDisplay',
            showDisplay = true,
            ItemList = Data,
            money = money,
            black_money = black_money,
        }))
        
    end

    reloadMaterial = function(name)
        TriggerServerEvent('iNo_craft:ReCheckWeapon')
        Data = {}
        
        local categories = Config['craftTable'][name].catagory
        local displayCategories = {}
    
        -- ถ้ามีการกำหนด House ให้ใช้เช็คเลเวลบ้านเพื่อตัดหมวดหมู่ที่จะแสดง
        if Config['craftTable'][name].House ~= nil then
            local houseLevel = exports.BN_CouncilManager:GetHouseLevel(Config['craftTable'][name].House)
            local limit = nil
            if houseLevel == 3 then
                limit = 1
            elseif houseLevel == 4 then
                limit = 2
            elseif houseLevel == 5 then
                limit = 2
            elseif houseLevel == 6 then
                limit = 3
            elseif houseLevel == 7 then
                limit = 3
            elseif houseLevel == 8 then
                limit = 4
            end
    
            if limit then
                -- สมมติว่า categories เป็นตารางแบบเรียงลำดับ (array)
                for i = 1, limit do
                    if categories[i] then
                        table.insert(displayCategories, categories[i])
                    end
                end
            else
                displayCategories = categories
            end
        else
            displayCategories = categories
        end
    
        for _ , v in pairs(displayCategories) do 
            Data[tostring(v)] = Config['item_type'][v]
            for __, w in pairs(Data[tostring(v)].Item) do 
                for ___, z in pairs(w.itemNeed) do 
                    if not isWeapon(z.name) then
                        z.have = checkItemCount(z.name)
                    else 
                        if checkHasWeapon(z.name) then 
                            z.have = 1
                        else 
                            z.have = 0
                        end 
                    end 
                end 
                if w.equipment ~= nil then
                    for ___, z in pairs(w.equipment) do
                        if not isWeapon(z.name) then
                            z.have = checkItemCount(z.name)
                        else
                            if checkHasWeapon(z.name) then
                                z.have = 1
                            else
                                z.have = 0
                            end
                        end
                    end
                end
            end 
            Wait(0)
        end 

        uiDisplay = true

        local money = 0
        local black_money = 0
        
        if PlayerData.accounts then
            for k, v in pairs(PlayerData.accounts) do
                if v.name == 'money' then
                    money = v.money
                elseif v.name == 'black_money' then
                    black_money = v.money
                end
            end
        end
        
        SendNuiMessage(json.encode({
            type = 'reloadMat',
            ItemList = Data,
            money = money,
            black_money = black_money,
        }))
    end 

    -- [[ UI CALLBACK ]] --
    RegisterNuiCallback('leaveCrafting',function (data)
        if uiDisplay then 
            -- exports.nc_inventory:BlockKey({ 'F2' }, false)
            SetNuiFocus(false,false)
            uiDisplay = false 
            nameCraft = ''
        end
    end)
    RegisterNuiCallback('craftcheck',function (data)
        -- print(json.encode(data))
        TriggerServerEvent('iNo_craft:ReCheckWeapon')
        if not click then 
            SendNUIMessage({
                type     = 'disable',
                bool = true 
            })
        click = true 
        Wait(1000)
        if Data[data.type] then 
            -- print(Data[data.type].Item[data.item+1].maxCount, Config['maxcount'])
            data.amount = tonumber(data.amount)
            if (tonumber(data.amount) >= 1 and tonumber(data.amount)) <= (Data[data.type].Item[data.item+1].maxCount or Config['maxcount']) and tonumber(data.amount) >= 1 then 
                local dataItem = Data[data.type].Item[data.item+1]
                local checkeEquipment = true  
                local checkeMaterial = true  
                local checkAccountMoney = true 
                local checkAccountBlackMoney = true 
                local checkLimit = true 
                if Data[data.type].Item[data.item+1].equipment then 
                    for _ , v in pairs(Data[data.type].Item[data.item+1].equipment) do 
                        if not isWeapon(v.name) then
                        --if not string.find(_, "^WEAPON_") and not string.find(_, "^weapon_") then
                            -- print(_)
                            if not checkHasItem(v.name,v.amount) then 
                                checkeEquipment = false 
                            end
                        else 
                            if not checkHasWeapon(v.name) then 
                                checkeEquipment = false 
                            end 
                        end
                    end
                end
                if Data[data.type].Item[data.item+1].itemNeed then 
                    for _ , v in pairs(Data[data.type].Item[data.item+1].itemNeed) do 
                        if not isWeapon(v.name) then
                       -- if not string.find(v.name, "^WEAPON_") and not string.find(v.name, "^weapon_") then
                        --if string.find(v.name, "WEAPON_", 1)== nil and string.find(v.name, "weapon_", 1) == nil then 
                            if checkHasItem(v.name,v.amount*data.amount) == false then 
                                checkeMaterial = false 
                            end 
                        else 
                            if checkHasWeapon(v.name) == false then 
                                checkeMaterial = false 
                            end 
                        end 
                    end
                end
                if Config['limit_check'] == true then 
                   -- print(dataItem.name)
                    if not isWeapon(dataItem.name) then
                   -- if not string.find(dataItem.name, "^WEAPON_") and not string.find(dataItem.name, "^weapon_") then
                        local Inventorys 	= ESX.GetPlayerData().inventory	
                        for _,v in pairs(Inventorys) do
                            if v.name == dataItem.name then 
                            -- print(v.count , data.amount ,dataItem.count , v.limit , v.limit)
                                if dataItem.day ~= nil then
                                    if v.count > 0 then 
                                        checkLimit = false 
                                    end
                                else
                                    if v.count + dataItem.count*data.amount > v.limit and v.limit > 0 then 
                                        checkLimit = false 
                                    end
                                end
                               
                            end 
                        end 
                    else
                        
                        if checkHasWeapon(dataItem.name) then 
                            checkLimit = false 
                         
                        end
                    end
                   
                end 
                lib.callback('iNo_craft:ChackMoney', false, function(accounts)
                    acc = accounts
                    for __,v in pairs(acc) do 
                        if v.name == 'cash' then 
                            if dataItem.cost then 
                                if dataItem.cost*data.amount > v.money then 
                                    checkAccountMoney = false 
                                end 
                            end
                        elseif v.name == 'black_money' then 
                            if dataItem.black_money then 
                                if dataItem.black_money*data.amount > v.money then 
                                    checkAccountBlackMoney = false 
                                end 
                            end
                        end 
                    end 
                    if not checkeEquipment then 
                        Config['NO_EQUIPMENT']()
                    end 
                    if not checkeMaterial then 
                        Config['NO_MATERIAL']()
                    end 
                    if not checkAccountMoney then 
                        Config['NO_MONEY']('money')
                    end 
                    if not checkAccountBlackMoney then 
                        Config['NO_MONEY']('black_money')
                    end 
                    if checkLimit == false then 
                        Config['OUT_LIMIT']()
                        SendNUIMessage({
                            type ='result',
                            result = 'error',
                            time = Config['Duration_result']*1000,
                            text = Config['notification_text']['over_limit']
                        })
                        SendNUIMessage({
                            type     = 'playSound',
                            result     = 'alert',
                            failName = Config['sound']['fail_filename'],
                            successName = Config['sound']['success_filename'],
                            alertName = Config['sound']['alert_filename']
                        })
                        Wait(Config['Duration_result'] +500)
                        SendNUIMessage({
                            type     = 'disable',
                            bool = false  
                        })
                        click = false 
                        return 
                    end 
                    if checkAccountBlackMoney and checkAccountMoney and checkeMaterial and checkeEquipment and checkLimit then 
                        local time = 0
                        ClearPedTasksImmediately(PlayerPedId())
                        loadAnimDict(Config['animation']['Dict'])
                        TaskPlayAnim(PlayerPedId(), Config['animation']['Dict'],Config['animation']['Anim'], 3.0, 1.0, -1, 31, 0, 0, 0, 0 )
                        SendNUIMessage({
                            type ='crafting',
                            bool = true ,
                            loadlingName = Config['sound']['loadling_filename']
                        })
                        while time+100 <= dataItem.duration*1000 do 
                            time = time +100 
                            local percent = (time/dataItem.duration/10)
                            -- print(percent)
                            Wait(100)
                            SendNUIMessage({
                                type ='load',
                                per = percent 
                            })

                        end 
                         Wait(100)
                         SendNUIMessage({
                            type ='load',
                            per = 0 
                        })
                       -- -- print('test123')
                        lib.callback('iNo_craft:CraftItem', false, function(DataCb)
                            if not DataCb or type(DataCb) ~= 'table' then
                                SendNUIMessage({
                                    type ='result',
                                    result = 'error',
                                    time = Config['Duration_result']*1000,
                                    text = Config['notification_text']['no_item']
                                })
                                SendNUIMessage({
                                    type     = 'playSound',
                                    result     = 'alert',
                                    failName = Config['sound']['fail_filename'],
                                    successName = Config['sound']['success_filename'],
                                    alertName = Config['sound']['alert_filename']
                                })
                                Wait(Config['Duration_result'] +500)
                                SendNUIMessage({
                                    type     = 'disable',
                                    bool = false  
                                })
                                click = false
                                return
                            end
                            Wait(100)
                           -- -- print('test4')
                            Config['action_aftercraft'](DataCb.result,DataCb.type,DataCb.item,DataCb.amount,dataItem.count)
                           -- -- print('test5')
                            SendNUIMessage({
                                type ='result',
                                result = DataCb.result,
                                time = Config['Duration_result']*1000,
                                text = Config['notification_text'][DataCb.result]
                            })
                            Wait(Config['Duration_result']+500)
                           -- -- print('test6')
                            -- SendNUIMessage({
                            --     type ='crafting',
                            --     bool = false 
                            -- })
                            if DataCb.vaultData then
                                PlayerDataVault.accounts = PlayerDataVault.accounts or {}
                                PlayerDataVault.items = PlayerDataVault.items or {}
                                PlayerDataVault.weapons = PlayerDataVault.weapons or {}
                                if DataCb.vaultData.accounts then
                                    for k, v in pairs(DataCb.vaultData.accounts) do
                                        if v and v > 0 then
                                            PlayerDataVault.accounts[k] = v
                                        else
                                            PlayerDataVault.accounts[k] = nil
                                        end
                                    end
                                end
                                if DataCb.vaultData.items then
                                    for k, v in pairs(DataCb.vaultData.items) do
                                        if v and v > 0 then
                                            PlayerDataVault.items[k] = v
                                        else
                                            PlayerDataVault.items[k] = nil
                                        end
                                    end
                                end
                                if DataCb.vaultData.weapons then
                                    PlayerDataVault.weapons = DataCb.vaultData.weapons
                                end
                            end
                            ClearPedTasksImmediately(PlayerPedId())
                            reloadMaterial(nameCraft)
                            click = false
                            SendNUIMessage({
                                type     = 'disable',
                                bool = false
                            })
                        end, data.type, data.item+1, data.amount, data.useSafeItems)
                    else 
                        SendNUIMessage({
                            type ='result',
                            result = 'error',
                            time = Config['Duration_result']*1000,
                            text = Config['notification_text']['no_item']
                        })
                        SendNUIMessage({
                            type     = 'playSound',
                            result     = 'alert',
                            failName = Config['sound']['fail_filename'],
                            successName = Config['sound']['success_filename'],
                            alertName = Config['sound']['alert_filename']
                        })
                        Wait(Config['Duration_result'] +500)
                        SendNUIMessage({
                            type     = 'disable',
                            bool = false  
                        })
                        click = false 
                    end 
                    -- -- print(checkeEquipment,checkeMaterial,checkAccountMoney,checkAccountBlackMoney)
                end)
            else 
                Wait(Config['Duration_result'] +500)
                click = false 
                SendNUIMessage({
                    type     = 'disable',
                    bool = false  
                })
            end 
            end
        else 
            Config['DELAY_NOTIFICATION']()
            Wait(Config['Delay_click'])
            -- click = false 
        end
    end)

    RegisterNetEvent('esx:setAccountMoney', function(account)
        for k, v in pairs(PlayerData.accounts) do
            if v.name == account.name then
                v.money = account.money
            end
        end
    end)
    
    RegisterNetEvent('es:activateMoney', function(money)
        if money and type(money) == 'number' then
            for k, v in pairs(PlayerData.accounts) do
                if v.name == 'money' then
                    v.money = money
                end
            end
        end
    end)

    RegisterNetEvent('iNo_craft:playaudio')
    AddEventHandler('iNo_craft:playaudio', function(playerNetId,typeSound)
        -- -- print(playerNetId,typeSound)
        if not DoesPlayerExist(playerNetId) then return end
        local lCoords = GetEntityCoords(PlayerPedId())
        local eCoords = GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(playerNetId)))
        local distIs  = Vdist(lCoords.x, lCoords.y, lCoords.z, eCoords.x, eCoords.y, eCoords.z)
        if(distIs <= Config['sound']['distance']) then
            SendNUIMessage({
                type     = 'playSound',
                result     = typeSound,
                failName = Config['sound']['fail_filename'],
                successName = Config['sound']['success_filename']
            })
        end
    end)
    RegisterNetEvent('iNo_craft:CL:ReCheckWeapon')
    AddEventHandler('iNo_craft:CL:ReCheckWeapon', function(weapon)
        loadweapon = weapon
    end)
    
end 

checkItemCount = function(item_name)
    if UseVault and PlayerDataVault.items then
        return PlayerDataVault.items[item_name] or 0
    end
    local inventory = ESX.PlayerData.inventory
    local countitem = 0
    for i=1, #inventory do
        local item = inventory[i]
       -- -- print(i, item.count)
        if item_name == item.name then
            countitem = item.count
            break
        end
    end
    
    return countitem
end

checkHasItem = function(item_name, count_)
    if UseVault and PlayerDataVault.items then
        local count = PlayerDataVault.items[item_name] or 0
        return count >= count_
    end
    local inventory = ESX.PlayerData.inventory
    for i=1, #inventory do
        local item = inventory[i]
        if item_name == item.name then
            if item.count >= count_  then
                return true
            else
                return false
            end
        end
    end
    return false
end

checkHasWeapon = function(weapon_name)
    if UseVault and PlayerDataVault.weapons then
        for _, data in pairs(PlayerDataVault.weapons) do
            if string.upper(weapon_name) == data[1] then
                return true
            end
        end
        return false
    end
    for i = 1, #loadweapon do
        local item = loadweapon[i]
        if string.upper(weapon_name) == item.name then
            return true
        end
    end
    return false
end

getLabelItems = function(item_name)
    
    -- local inventory = ESX.GetPlayerData().inventory
    -- for i = 1, #inventory do
    --     local item = inventory[i]

    --     if item_name == item.name then
    --         return item.label
    --     end
    -- end
    if labelitem[item_name] then
        return labelitem[item_name]
    end
    if item_name == 'cash' or item_name == 'money' then 
        return 'Cash'
    end 
    if item_name == 'black_money' then 
        return 'Black money'
    end
  --  print(item_name)
    return 'Unknown'
end

getLabelWeapon = function(weapon)
    local wea = ESX.GetWeaponList()
    local datawea = {}
    for i=1, #wea do 
        if string.upper(weapon) ==wea[i].name then 
            return wea[i].label 
        end 
    end
    return 'Unknown'
end
DoesPlayerExist = function(pServerId)
    local playerId = GetPlayerFromServerId(tonumber(pServerId))
    if playerId ~= -1 then
        return true
    end
end
loadAnimDict = function(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end

function isWeapon(itemName)
    return weaponList[itemName] ~= nil
end

RegisterNUICallback('changeUseVault', function(data, cb)
    UseVault = data.useSafeItems and true or false
    if UseVault then
        if PlayerDataVault == nil or next(PlayerDataVault) == nil then
            lib.callback('iNo_craft:getPlayerDataVault', false, function(vdata)
                PlayerDataVault = vdata or {}
                if nameCraft ~= '' then
                    reloadMaterial(nameCraft)
                end
            end)
        else
            if nameCraft ~= '' then
                reloadMaterial(nameCraft)
            end
        end
    else
        if nameCraft ~= '' then
            reloadMaterial(nameCraft)
        end
    end
    cb('ok')
end)

RegisterNetEvent('nxt_crafting:UpdateVault')
AddEventHandler('nxt_crafting:UpdateVault', function(data)
    PlayerDataVault = data
end)