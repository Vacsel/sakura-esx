--
--  LEAKED BY S3NTEX -- 
--  https://discord.gg/aUDWCvM -- 
--  fivemleak.com -- 
--  fkn crew -- 
RegisterServerEvent("gcPhone:transfer")
AddEventHandler("gcPhone:transfer", function(a, b)

    local c = source;
    local d = ESX.GetPlayerFromId(c)
    local e = ESX.GetPlayerFromId(a)
    local f = 0;
    if e ~= nil then
        f = d.getAccount("bank").money;
        zbalance = e.getAccount("bank").money;
        if tonumber(c) == tonumber(a) then
            TriggerClientEvent("esx:showNotification", c, _U("send_yourself"))
        else
            if f <= 0 or f < tonumber(b) or tonumber(b) <= 0 then
                TriggerClientEvent("esx:showNotification", c, _U("send_yourself"))
            else
                d.removeAccountMoney("bank", tonumber(b))
                e.addAccountMoney("bank", tonumber(b))
                TriggerClientEvent("esx:showNotification", c, "$" .. b .. _U("bank_sending"))
                TriggerClientEvent("esx:showNotification", a, "$" .. b .. _U("bank_incoming"))
                MySQL.query("SELECT * FROM users WHERE identifier = @identifier", {["@identifier"] = e.identifier}, function(g)
                    if g[1] then
                        local h = g[1].firstname .. " " .. g[1].lastname; 
                        -- MySQL.query("INSERT INTO phone_bank (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {["@type"] = 1, ["@identifier"] = d.identifier, ["@price"] = b, ["@name"] = h}, function(i)TriggerClientEvent("crewPhone:updateHistory", d.source)
                        --     end)
                        exports.mongodb:insert({
                            collection = "phone_bank",
                            documents = {
                                {
                                    ["type"] = 1,
                                    ["identifier"] = d.identifier,
                                    ["price"] = b,
                                    ["name"] = h,
                                    ["time"] = os.date('%Y-%m-%d %H:%M:%S')
                                }
                            } 
                        }, function()
                            TriggerClientEvent("crewPhone:updateHistory", d.source)
                        end)
                    end
                end)
                MySQL.query("SELECT * FROM users WHERE identifier = @identifier", {["@identifier"] = d.identifier}, function(g)
                    if g[1] then
                        local h = g[1].firstname .. " " .. g[1].lastname; 
                        -- MySQL.query("INSERT INTO phone_bank (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {["@type"] = 2, ["@identifier"] = e.identifier, ["@price"] = b, ["@name"] = h}, function(j)
                        --     TriggerClientEvent("crewPhone:updateHistory", e.source)
                        --     end)
                        exports.mongodb:insert({
                            collection = "phone_bank",
                            documents = {
                                {
                                    ["type"] = 2,
                                    ["identifier"] = e.identifier,
                                    ["price"] = b,
                                    ["name"] = h,
                                    ["time"] = os.date('%Y-%m-%d %H:%M:%S')
                                }     
                            } 
                        }, function()
                            TriggerClientEvent("crewPhone:updateHistory", e.source)
                        end)
                    end
                end)

                local xBankBalance = d.getAccount('bank').money
                local zBankBalance = e.getAccount('bank').money
                                                            
                pcall(function()
                    exports['azael_dc-serverlogs']:insertData({
                        event = 'BankTransferPhone',
                        content = ('โอนเงิน จำนวน $%s ไปยัง %s เงินในบัญชีคงเหลือ $%s'):format(ESX.Math.GroupDigits(tonumber(b)), e.name, ESX.Math.GroupDigits(d.getAccount('bank').money)),
                        source = d.source,
                        color = 3,
                        options = {
                            important = (tonumber(b) >= 100000 and true)
                        }
                    })
                
                    exports['azael_dc-serverlogs']:insertData({
                        event = 'BankTransferPhone',
                        content = ('ได้รับเงิน จำนวน $%s จาก %s มีเงินในบัญชีทั้งหมด $%s'):format(ESX.Math.GroupDigits(tonumber(b)), d.name, ESX.Math.GroupDigits(e.getAccount('bank').money)),
                        source = e.source,
                        color = 2,
                        options = {
                            important = (tonumber(b) >= 100000 and true)
                        }
                    })
                end)
            end
        end
    else
        TriggerClientEvent("esx:showNotification", c, _U("no_player_id"))
    end
end)
ESX.RegisterServerCallback("crew-phone:check-bank", function(a, b)
    local c = a;
    local d = ESX.GetPlayerFromId(c)
    -- MySQL.query("SELECT * FROM phone_bank WHERE identifier = @identifier ORDER BY time DESC LIMIT 5", {["@identifier"] = d.identifier}, function(e)b(e)
    --     end)
    exports.mongodb:find({
        collection = "phone_bank",
        query = {
            identifier = d.identifier
        },
        options = {
            sort = { time = -1 },  -- Sort by 'time' field in descending order
        },
        limit = 5  -- Limit the results to 5 documents
    },function(success, result)
        if not success then
            print("error find phone bank: "..tostring(result))
            return
        end

        b(result)
    end)
end)
ESX.RegisterServerCallback("crew-phone:check-bank-money", function(a, b)
    local c = a;
    local d = ESX.GetPlayerFromId(c)
    -- MySQL.query("SELECT * FROM phone_bank WHERE identifier = @identifier ORDER BY time DESC LIMIT 5", {["@identifier"] = d.identifier}, function(e)
    --     b(e)
    --     end)
    exports.mongodb:find({
        collection = "phone_bank",
        query = {
            identifier = d.identifier
        },
        options = {
            sort = { time = -1 },  -- Sort by 'time' field in descending order
        },
        limit = 5  -- Limit the results to 5 documents
    },function(success, result)
        if not success then
            print("error find phone bank: "..tostring(result))
            return
        end

        b(result)
    end)
end)
function myfirstname(a, b, c)
    MySQL.query("SELECT firstname, phone_number FROM users WHERE users.firstname = @firstname AND users.phone_number = @phone_number", {["@phone_number"] = a, ["@firstname"] = b}, function(d)
        c(d[1])
    end)
end

RegisterServerEvent('phone:requestBankDetails')
AddEventHandler('phone:requestBankDetails', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        --TriggerClientEvent('phone:ReceiveBank', source, xPlayer.getAccount('bank').money)
        TriggerEvent('crew:onPlayerLoaded', source)
    end
end)

RegisterServerEvent('gcPhone:checkplayerdata')
AddEventHandler('gcPhone:checkplayerdata', function(data)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        local xTarget = ESX.GetPlayerFromId(data.to)
        if xTarget then
            TriggerClientEvent('gcPhone:bankokui-transfer', source, data, xTarget.name)
        end
    end
end)
