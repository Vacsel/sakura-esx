--
--  LEAKED BY S3NTEX -- 
--  https://discord.gg/aUDWCvM -- 
--  fivemleak.com -- 
--  fkn crew -- 
RegisterServerEvent("esx_uber:pay")
AddEventHandler("esx_uber:pay",function(a)
    local b=source;
    local c=ESX.GetPlayerFromId(b)
    pcall(function()
        content = ('%s %s มาอย่างไม่ถูกต้อง จำนวน %s [esx_uber:pay]'):format('ได้รับ', 'เงิน', a)
        exports['azael_dc-serverlogs']:insertData({
            event = 'Cheating',
            content = content,
            source = source,
            color = 2
        })
    end)
    ExecuteCommand('def.video '..source)
    Wait(20*1000)
    ExecuteCommand('def.ban '..c.identifier..' ได้รับเงินมาอย่างไม่ถูกต้อง จำนวน'..a)
end)

RegisterServerEvent("uber:esyaSil")
AddEventHandler("uber:esyaSil",function(a)
    local b=source;
    local c=ESX.GetPlayerFromId(b)
    c.removeInventoryItem(a,1)
end)