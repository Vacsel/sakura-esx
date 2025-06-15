ESX = nil
local PlayerTime = {}
local CashPlayerTime = {}
local data = {}

MySQL.ready(function()
    MySQL.Async.execute([[CREATE TABLE IF NOT EXISTS `offduty_storage` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `identifier` VARCHAR(60) NOT NULL,
        `job` VARCHAR(60) NOT NULL,
        `item` VARCHAR(100) NOT NULL,
        `count` INT NOT NULL,
        `metadata` LONGTEXT,
        `vault` VARCHAR(60) NOT NULL,
        `grade` INT NOT NULL,
        `stored_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;]])
end)

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
    for _, v in pairs(Config.Duty) do
        data[v.Onduty] = true
    end 
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
    local xPlayer = ESX.GetPlayerFromId(playerData)
    if data[xPlayer.job.name] then
        loadDutyTime(xPlayer)
    end
end)

RegisterNetEvent('esx_duty:load')
AddEventHandler('esx_duty:load', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if data[xPlayer.job.name] then 
        loadDutyTime(xPlayer)
    end 
end)

AddEventHandler('esx:playerLogout', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if data[xPlayer.job.name] then 
        saveDutyTime(xPlayer)
    end 
    PlayerTime[xPlayer.source] = nil
end)

RegisterNetEvent('esx_duty:save')
AddEventHandler('esx_duty:save', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if data[xPlayer.job.name] then 
        saveDutyTime(xPlayer)
    end 
end)

function loadDutyTime(xPlayer)
    MySQL.Async.fetchAll('SELECT duty_time FROM users WHERE identifier = @identifier', { ['@identifier'] = xPlayer.identifier }, function(result)
        if result[1].duty_time then
            if result[1].job ~= 'unemployed' then
                PlayerTime[xPlayer.source] = result[1].duty_time
                startDutyTimeCounter(xPlayer.source)
                if CashPlayerTime[xPlayer.identifier] == nil then
                    CashPlayerTime[xPlayer.identifier] = 0
                    startDutyCount(xPlayer.identifier)
                else
                    startDutyCount(xPlayer.identifier)
                end
            end
        end
    end)
end

function saveDutyTime(xPlayer)
    Wait(1000)
    MySQL.Async.execute("UPDATE users SET duty_time=@duty_time WHERE identifier=@identifier", {
        ['@identifier'] = xPlayer.identifier,
        ['@duty_time'] = PlayerTime[xPlayer.source] or 0
    })
end

function startDutyCount(id)
    Citizen.CreateThread(function()
        while CashPlayerTime[id] do 
            Citizen.Wait(1000)
            if CashPlayerTime[id] then 
                CashPlayerTime[id] = CashPlayerTime[id] + 1
            else
                break
            end 
        end 
    end)
end

function startDutyTimeCounter(id)
    Citizen.CreateThread(function()
        while PlayerTime[id] do 
            Citizen.Wait(1000)
            if PlayerTime[id] then 
                PlayerTime[id] = PlayerTime[id] + 1
            else    
                break 
            end 
        end 
    end)
end

local function recordOffDutyItem(identifier, job, item, count, metadata, vault, grade)
    MySQL.Async.execute('INSERT INTO offduty_storage (identifier, job, item, count, metadata, vault, grade) VALUES (@identifier, @job, @item, @count, @meta, @vault, @grade)', {
        ["@identifier"] = identifier,
        ["@job"] = job,
        ["@item"] = item,
        ["@count"] = count,
        ["@meta"] = metadata and json.encode(metadata) or nil,
        ["@vault"] = tostring(vault),
        ["@grade"] = grade
    })
end

local function fetchOffDutyItems(identifier, job)
    return MySQL.Sync.fetchAll('SELECT item, count, metadata, vault, grade FROM offduty_storage WHERE identifier = @identifier AND job = @job', {
        ["@identifier"] = identifier,
        ["@job"] = job
    })
end

local function clearOffDutyItems(identifier, job)
    MySQL.Async.execute('DELETE FROM offduty_storage WHERE identifier=@identifier AND job=@job', {
        ["@identifier"] = identifier,
        ["@job"] = job
    })
end


-- Citizen.CreateThread(function()
--     while true do 
--         Citizen.Wait(1000)
--         if os.date("%A") == "Monday" and os.date('%H:%M:%S') == Config['ResetTime'] then
--             resetDutyTimes()
--         end
--     end 
-- end)

function resetDutyTimes()
    local result_text = {}

    for _, v in pairs(Config.Discord) do
        result_text[v.job] = ''
    end

    MySQL.Async.fetchAll('SELECT job, firstname, lastname, duty_time FROM users', {}, function(result)
        for _, v in pairs(result) do
            if Config.Discord[v.job] then
                result_text[v.job] = result_text[v.job] .. string.format('%s %s Time: %s\n', v.firstname, v.lastname, secondsToClock(v.duty_time))
            end
        end

        for _, v in pairs(result_text) do 
            local txt = string.format(Config["discord_template"], v)
            sendDutyTimeToDiscord(Config.Discord[v.job].log, txt, Config.Discord[v.job].label)
        end
    end)

    MySQL.Async.execute("UPDATE users SET duty_time=@duty_time", { ['@duty_time'] = 0 })
    for k in pairs(PlayerTime) do
        PlayerTime[k] = 0
    end
end

function secondsToClock(seconds)
    local hours = math.floor(seconds / 3600)
    local mins = math.floor((seconds % 3600) / 60)
    local secs = seconds % 60
    return string.format('%02.f:%02.f:%02.f', hours, mins, secs)
end

function sendDutyTimeToDiscord(link, txt, job)
    pcall(function() 
        exports['azael_dc-serverlogs']:insertData({
            event = 'Duty Time Of Week',
            content = txt,
            color = 16711680
        })
    end)
    -- local embeds = {
    --     {
    --         ["title"] = "**Duty Time "..job.."**",
    --         ['description'] = "```"..txt.."```",
    --         ["type"] = "rich",
    --         ["color"] = 16711680
    --     }
    -- }
    -- PerformHttpRequest(link, function() end, 'POST', json.encode({username = "Duty Time Of Week", embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

RegisterNetEvent('esx_duty:toggleduty')
AddEventHandler('esx_duty:toggleduty', function(v)
    local xPlayer = ESX.GetPlayerFromId(source)
    local grade = xPlayer.job.grade
    if xPlayer.job.name == v.Onduty then
        if v.Items and v.Vault then
            local vault = exports.nc_vault:GetVault(v.Vault)
            if vault then
                local accounts, items, weapons = vault.getStorage()
                accounts = accounts or {}
                items = items or {}
                weapons = weapons or {}
                for _, itemName in ipairs(v.Items) do
                    local count = xPlayer.getInventoryItem(itemName).count
                    if count > 0 then
                        xPlayer.removeInventoryItem(itemName, count)
                        items[itemName] = (items[itemName] or 0) + count
                        recordOffDutyItem(xPlayer.identifier, v.Onduty, itemName, count, nil, v.VaultName or v.Vault, grade)
                    end
                end
                vault.saveStorage(accounts, items, weapons)
            end
        end
        xPlayer.setMeta('duty_backup', { job = v.Onduty, grade = grade })
        xPlayer.setJob(v.Offduty, 0)
        sendDutyNotification(xPlayer, 'success', ''..xPlayer.name..'ได้ลงชื่อออกเวรแล้ว ออนไลน์ทั้งหมด '..secondsToClock(CashPlayerTime[xPlayer.identifier])..'')
        saveDutyTime(xPlayer)
        PlayerTime[xPlayer.source] = nil
        CashPlayerTime[xPlayer.identifier] = nil
    else
        local last = xPlayer.getMeta('duty_backup') or { grade = grade }
        local rows = fetchOffDutyItems(xPlayer.identifier, v.Onduty)
        if v.Items and ((rows[1] and rows[1].vault) or v.Vault) then
            local vault = exports.nc_vault:GetVault(rows[1] and rows[1].vault or v.Vault)
            if vault then
                local accounts, items, weapons = vault.getStorage()
                accounts = accounts or {}
                items = items or {}
                weapons = weapons or {}
                local changed = false
                if #rows > 0 then
                    for _, row in ipairs(rows) do
                        local available = items[row.item] or 0
                        local take = math.min(row.count, available)
                        if take > 0 then
                            items[row.item] = available - take
                            if items[row.item] <= 0 then items[row.item] = nil end
                            xPlayer.addInventoryItem(row.item, take)
                            changed = true
                        end
                    end
                else
                    for _, itemName in ipairs(v.Items) do
                        local amount = items[itemName] or 0
                        if amount > 0 then
                            items[itemName] = nil
                            xPlayer.addInventoryItem(itemName, amount)
                            changed = true
                        end
                    end
                end
                if changed then
                    vault.saveStorage(accounts, items, weapons)
                end
            end
        end
        if #rows > 0 then clearOffDutyItems(xPlayer.identifier, v.Onduty) end
        local restoreGrade = last.grade or (rows[1] and rows[1].grade) or grade
        xPlayer.setJob(v.Onduty, restoreGrade)
        xPlayer.clearMeta('duty_backup')
        sendDutyNotification(xPlayer, 'success', ''..xPlayer.name..'ได้ลงชื่อเข้าเวรแล้ว')
        loadDutyTime(xPlayer)
    end
end)
function sendDutyNotification(xPlayer, type, message)
    TriggerClientEvent("pNotify:SendNotification", xPlayer.source, {
        text = message,
        type = type,
        queue = "duty",
        timeout = 10000,
        layout = "bottomCenter"
    })
    local jobName = xPlayer.job.name
    local logEvent = 'JobDuty' .. jobName
    TriggerEvent('azael_dc-serverlogs:sendToDiscord', logEvent, message, xPlayer.source, jobName:match('off') and '^2' or '^3')
end
