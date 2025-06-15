ESX = exports["es_extended"]:getSharedObject()

lib.callback.register('iNo_craft:ChackMoney', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local accounts = {
        { 
            name = "black_money",
            money = xPlayer.getAccount('black_money').money
        },
        { 
            name = "cash",
            money = xPlayer.getMoney()
        }
    }
    return accounts
end)

RegisterServerEvent('iNo_craft:ReCheckWeapon')
AddEventHandler('iNo_craft:ReCheckWeapon', function()
    local xPlayer = ESX.GetPlayerFromId(source) 
    TriggerClientEvent('iNo_craft:CL:ReCheckWeapon', source, xPlayer.getLoadout()) 
end)

lib.callback.register('iNo_craft:getPlayerDataVault', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getMeta('vault_id') == nil then
        local vault_id = MySQL.scalar.await('SELECT `_id` FROM `nc_vault` WHERE `owner` = ? LIMIT 1', {
            xPlayer.identifier
        })
        xPlayer.setMeta('vault_id', vault_id)
    end
    local vault_id = tonumber(xPlayer.getMeta('vault_id'))
    if not vault_id then
        return {
            accounts = {},
            items = {},
            weapons = {}
        }
    end
    local vault = exports.nc_vault:GetVault(vault_id)
    if not vault then
        return {
            accounts = {},
            items = {},
            weapons = {}
        }
    end
    local accounts, items, weapons = vault.getStorage()
    return {
        accounts = accounts or {},
        items = items or {},
        weapons = weapons or {}
    }
end)

lib.callback.register('iNo_craft:CraftItem', function(source, typeCraft, item, amount, useVault)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local amount = tonumber(amount)
    local typeItemCrafting = ''
    local logText = ''

    local vault
    local accounts, items, weapons
    local vaultChanges = { items = {}, accounts = {}, weapons = nil }
    -- Ensure boolean even if value passed as string
    useVault = useVault == true or tostring(useVault) == 'true'
    if useVault then
        if xPlayer.getMeta('vault_id') == nil then
            local vault_id = MySQL.scalar.await('SELECT `_id` FROM `nc_vault` WHERE `owner` = ? LIMIT 1', {
                xPlayer.identifier
            })
            xPlayer.setMeta('vault_id', vault_id)
        end
        local vault_id = tonumber(xPlayer.getMeta('vault_id'))
        if vault_id then
            vault = exports.nc_vault:GetVault(vault_id)
            if vault then
                accounts, items, weapons = vault.getStorage()
                accounts = accounts or {}
                items = items or {}
                weapons = weapons or {}
            else
                useVault = false
            end
        else
            useVault = false
        end
    end

    local function getItemCount(itemName)
        if useVault then
            return items[itemName] or 0
        else
            return xPlayer.getInventoryItem(itemName).count
        end
    end

    local function removeItem(itemName, count)
        if useVault then
            local removed = vault.removeItem(itemName, count)
            if removed and removed > 0 then
                items[itemName] = (items[itemName] or 0) - removed
                if items[itemName] <= 0 then items[itemName] = nil end
                vault.saveStorage(accounts, items, weapons)
                vaultChanges.items[itemName] = items[itemName] or 0
            end
        else
            xPlayer.removeInventoryItem(itemName, count)
        end
    end

    local function removeWeapon(weaponName)
        weaponName = string.upper(weaponName)
        if useVault then
            local keyToRemove
            for k, w in pairs(weapons) do
                if w[1] == weaponName then
                    keyToRemove = k
                    break
                end
            end
            if keyToRemove then
                vault.removeWeapon(keyToRemove)
                weapons[keyToRemove] = nil
                vault.saveStorage(accounts, items, weapons)
                vaultChanges.weapons = weapons
            end
        else
            xPlayer.removeWeapon(weaponName, 1)
        end
    end

    local function removeBlackMoney(count)
        if useVault then
            local removed = vault.removeAccount('black_money', count)
            if removed and removed > 0 then
                accounts['black_money'] = (accounts['black_money'] or 0) - removed
                if accounts['black_money'] <= 0 then accounts['black_money'] = nil end
                vault.saveStorage(accounts, items, weapons)
                vaultChanges.accounts['black_money'] = accounts['black_money']
            end
        else
            xPlayer.removeAccountMoney('black_money', count)
        end
    end

    if Config['item_type'][tonumber(typeCraft)].Item[tonumber(item)] then 
        local Data = Config['item_type'][tonumber(typeCraft)].Item[tonumber(item)]
        local random = math.random() * 100
        local result = 'fail'
        local successPer = Config['rate_success_function_modify'](tonumber(typeCraft),tonumber(item))
        if random <= successPer and successPer > 0 then 
            result = 'success'
            TriggerClientEvent('iNo_craft:playaudio',source,source,'success')
            if Data.cost and Data.cost > 0 then 
                xPlayer.removeMoney(Data.cost*amount)
                logText = logText .. ' - CASH : '.. Data.cost*amount .. '\n'
            end 
            if Data.black_money and Data.black_money > 0 then
                removeBlackMoney(Data.black_money*amount)
                logText = logText .. ' - BLACK MONEY : '.. Data.black_money*amount .. '\n'
            end
            if Data.itemNeed then
                for _, v in pairs(Data.itemNeed) do
                    if not safeIsWeapon(v.name) then
                        local xItemCount = getItemCount(v.name)
                        if xItemCount >= v.amount * amount then
                            removeItem(v.name, v.amount * amount)
                            logText = logText .. ' - ' .. v.name .. ' : ' .. v.amount * amount .. '\n'
                        else
                            return
                        end
                    else
                        removeWeapon(v.name)
                        logText = logText .. ' - ' .. v.name .. ' : 1\n'
                    end
                end
            end
            if not safeIsWeapon(Data.name) then
                if Data.name == 'money' then 
                    typeItemCrafting = 'money'
                    if Config['action_willcraftSuccess'](Data.name,amount,Data.count) then 
                        xPlayer.addMoney(Data.count*amount)
                    end 
                elseif Data.name == 'black_money' then
                    typeItemCrafting = 'black_money'
                    if Config['action_willcraftSuccess'](Data.name,amount,Data.count) and Data.black_money and Data.black_money > 0 then
                        xPlayer.addAccountMoney('black_money', Data.black_money*amount)
                    end
                else 
                    typeItemCrafting= 'item'
                    if Config['action_willcraftSuccess'](Data.name,amount,Data.count) then 
                        if Data.day ~= nil then
                            exports.porpy_delete_items:AddItem(xPlayer.source, {
                                Item_Name = tostring(Data.name),
                                Time = {
                                    Day = Data.day,
                                    Hours = 0,
                                    Minute = 0
                                }
                            })
                        else
                            xPlayer.addInventoryItem(tostring(Data.name), Data.count*amount)
                        end
                    end 
                end 
            else 
                typeItemCrafting = 'weapon'
                if Config['action_willcraftSuccess'](Data.name,amount,Data.count) then 
                    -- Convert to lowercase first, then uppercase for ESX
                    local weaponName = string.lower(Data.name)
                    weaponName = string.upper(weaponName)
                    xPlayer.addWeapon(weaponName, 1)
                end 
            end 
            if Data.count then
                Config['action_aftercraft']('success',typeItemCrafting,Data.name,amount,Data.count,logText,random,successPer,xPlayer)
            else
                Config['action_aftercraft']('success',typeItemCrafting,Data.name,amount,1,logText,random,successPer,xPlayer)
            end
        else 
            result = 'fail'
            TriggerClientEvent('iNo_craft:playaudio',source,source,'fail')
            if Data.cost and Data.cost > 0 then 
                xPlayer.removeMoney(Data.cost*amount)
                logText = logText .. ' - CASH : '.. Data.cost*amount .. '\n'
            end 
            if Data.black_money and Data.black_money > 0 then
                removeBlackMoney(Data.black_money*amount)
                logText = logText .. ' - BLACK MONEY : '.. Data.black_money*amount .. '\n'
            end
            if Data.itemNeed then
                for _, v in pairs(Data.itemNeed) do
                    if not safeIsWeapon(v.name) then
                        local xItemCount = getItemCount(v.name)
                        if xItemCount >= v.amount * amount then
                            if Data.protect then
                                local checkProtect = false
                                for __, w in pairs(Data.protect) do
                                    xItemProtect = getItemCount(w.use)
                                    if w.item == v.name then
                                        checkProtect = true
                                        if xItemProtect > 0 then
                                            removeItem(w.use, amount)
                                            logText = logText .. ' - ' .. w.use .. ' : ' .. w.use .. ' (PROTECT : ' .. v.name .. ')\n'
                                        else
                                            removeItem(v.name, v.amount * amount)
                                            logText = logText .. ' - ' .. v.name .. ' : ' .. v.amount * amount .. '\n'
                                        end
                                    end
                                end
                                if not checkProtect then
                                    removeItem(v.name, v.amount * amount)
                                    logText = logText .. ' - ' .. v.name .. ' : ' .. v.amount * amount .. '\n'
                                end
                            else
                                removeItem(v.name, v.amount * amount)
                                logText = logText .. ' - ' .. v.name .. ' : ' .. v.amount * amount .. '\n'
                            end
                        else
                            return
                        end
                    else
                        if Data.protect then
                            local checkProtect = false
                            for __, w in pairs(Data.protect) do
                                xItemProtect = getItemCount(w.use)
                                if w.item == v.name then
                                    checkProtect = true
                                    if xItemProtect > 0 then
                                        removeItem(w.use, amount)
                                        logText = logText .. ' - ' .. w.use .. ' : ' .. w.use .. ' (PROTECT : ' .. v.name .. ')\n'
                                    else
                                        removeWeapon(v.name)
                                        logText = logText .. ' - ' .. v.name .. ' : 1\n'
                                    end
                                end
                            end
                            if not checkProtect then
                                local itemweaponblock = false
                                if Data.failItem then
                                    for xsz, v2 in pairs(Data.failItem) do
                                        if safeIsWeapon(v2.name) and v2.name == v.name then
                                            itemweaponblock = true
                                        end
                                    end
                                end
                                if itemweaponblock == false then
                                    removeWeapon(v.name)
                                    logText = logText .. ' - ' .. v.name .. ' : 1\n'
                                else
                                    logText = logText .. ' - ' .. v.name .. ' : 1 ไม่ได้ลบอาวุธ \n'
                                end
                            end
                        else
                            local itemweaponblock = false
                            if Data.failItem then
                                for xsz, v2 in pairs(Data.failItem) do
                                    if safeIsWeapon(v2.name) and v2.name == v.name then
                                        itemweaponblock = true
                                    end
                                end
                            end
                            if itemweaponblock == false then
                                removeWeapon(v.name)
                                logText = logText .. ' - ' .. v.name .. ' : 1\n'
                            else
                                logText = logText .. ' - ' .. v.name .. ' : 1 ไม่ได้ลบอาวุธ \n'
                            end
                        end
                    end
                end
            end
            if Data.failItem then 
                for _, v in pairs(Data.failItem) do 
                    if not safeIsWeapon(v.name) then
                        xPlayer.addInventoryItem(v.name, v.amount*amount )
                        logText = logText .. ' + '..v.name..' : '.. v.amount*amount .. ' [Fail recieved]\n'
                    else
                        if not xPlayer.hasWeapon(string.upper(v.name)) then
                            xPlayer.addWeapon(string.upper(v.name),1)
                        end
                        logText = logText .. ' + '..v.name..' : '.. 1 .. ' [Fail recieved]\n'
                    end 
                end 
            end 
            if not safeIsWeapon(Data.name) then
                if Data.name == 'money' then 
                    typeItemCrafting = 'money'
                elseif Data.name == 'black_money' then 
                    typeItemCrafting = 'black_money'
                else 
                    typeItemCrafting= 'item'
                end 
            else 
                typeItemCrafting = 'weapon'
            end 
            Config['action_aftercraft']('fail',typeItemCrafting,Data.name,amount,Data.count,logText,random,successPer,xPlayer)
        end 
        
        local DataCb = {}
        DataCb.type = typeItemCrafting
        DataCb.item = Data.name
        DataCb.amount = amount
        DataCb.result = result
        if useVault and vault then
            vault.saveStorage(accounts, items, weapons)
            if next(vaultChanges.items) ~= nil or next(vaultChanges.accounts) ~= nil or vaultChanges.weapons then
                DataCb.vaultData = vaultChanges
            end
        end
        return DataCb
    else 
        return nil
    end
end)

function safeIsWeapon(name)
    name = string.upper(name)
    if string.find(name, 'WEAPON_') then
        return true
    else
        return false
    end
end