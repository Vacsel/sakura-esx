--
--  LEAKED BY S3NTEX -- 
--  https://discord.gg/aUDWCvM -- 
--  fivemleak.com -- 
--  fkn crew -- 
local bank = 0
function setBankBalance (value)
      bank = value
      SendNUIMessage({event = 'updateBankbalance', banking = bank})
end

local societyMoney = 0
function setSocietyBalance (value)
      societyMoney = value
      SendNUIMessage({event = 'updateSocietyBalance', society = societyMoney})
end

local name = ""
function setPlayerName (value)
      name = value
      SendNUIMessage({event = 'updatePlayerName', name = name})
end

RegisterNetEvent('crew:getPlayerBank')
AddEventHandler('crew:getPlayerBank', function(playerData, playerName)
    setPlayerName(playerName)
    local accounts = playerData.accounts or {}
    for index, account in ipairs(accounts) do 
        if account.name == 'bank' then
                setBankBalance(account.money)
                break
        end
    end
    if playerData.job.grade_name == "boss" or playerData.job.grade_name == "mudur" or playerData.job.grade_name == "muduryar" then
        ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
            if money then
                setSocietyBalance(money)
            end
        end, playerData.job.name)
    end
end)

RegisterNetEvent('phone:RequestBankphone')  -- เชื่อมกับเมนู ใน esx_skin  ระบบป้องกันตกแมพ 
AddEventHandler('phone:RequestBankphone', function(balance)
    TriggerServerEvent('phone:requestBankDetails')
end)


RegisterNetEvent('phone:ReceiveBank')
AddEventHandler('phone:ReceiveBank', function(balance)
    print(balance)
    setBankBalance(balance)
end)
RegisterNetEvent('esx:setAccountMoney')
AddEventHandler('esx:setAccountMoney', function(account)
    if account.name == 'bank' then
        setBankBalance(account.money)
    end
end)

RegisterNetEvent("es:addedBank")
AddEventHandler("es:addedBank", function(m)
    setBankBalance(bank + m)
end)

RegisterNetEvent("es:removedBank")
AddEventHandler("es:removedBank", function(m)
    setBankBalance(bank - m)
end)

RegisterNetEvent('es:displayBank')
AddEventHandler('es:displayBank', function(bank)
    setBankBalance(bank)
end)

RegisterNetEvent('crew-phone:updata-transfer')
AddEventHandler('crew-phone:updata-transfer', function()
    SendNUIMessage({event = 'updateBankbalance', banking = bank})
end)

RegisterNetEvent('gcPhone:bankokui-transfer')
AddEventHandler('gcPhone:bankokui-transfer', function(data, name)
    local datalist = data
    TooglePhone()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'gcphonebankokui', {
		title    = "[ "..data.to.." ] "..name.." ใช่ที่คุณโอนเงิน จำนวน "..ESX.Math.GroupDigits(data.amount)..' หรือไม่',
		align    = 'center',
		elements = {
            {label = "ปฏิเสธ [ "..data.to.." ] "..name, value = 'no'},
			{label = "ยินยอม [ "..data.to.." ] "..name, value = 'yes'},
		
		}
	}, function(data, menu)
		if data.current.value == "yes" then
            print(datalist.to, datalist.amount)
            TriggerServerEvent('gcPhone:transfer', datalist.to, datalist.amount)
		elseif data.current.value == "no" then
           
		end
		menu.close()
	end, function(data, menu)
		menu.close()
	end)

   
end)

RegisterNUICallback('transfer', function(data)
    TriggerServerEvent('gcPhone:checkplayerdata', data)
end)

RegisterNUICallback('checkBank', function()
    ESX.TriggerServerCallback('crew-phone:check-bank', function(cb)
        SendNUIMessage({event = 'updateBankHistory', history = cb})
    end)
end)


function setBankBalance (value)
    bank = value
    SendNUIMessage({event = 'updateBankbalance', banking = bank})
end