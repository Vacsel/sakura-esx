local tchatdelay = false

RegisterNetEvent("gcPhone:tchat_receive")
AddEventHandler("gcPhone:tchat_receive", function(message)
  SendNUIMessage({event = 'tchat_receive', message = message})
end)

RegisterNetEvent("gcPhone:tchat_channel")
AddEventHandler("gcPhone:tchat_channel", function(channel, messages)
  SendNUIMessage({event = 'tchat_channel', messages = messages})
end)

RegisterNUICallback('tchat_addMessage', function(data, cb)
  if tchatdelay == false then
    tchatdelay = true
    TriggerServerEvent('gcPhone:tchat_addMessage', data.channel, data.message)
    Wait(5000)
    tchatdelay = false
  end
 
end)

RegisterNUICallback('tchat_getChannel', function(data, cb)
  TriggerServerEvent('gcPhone:tchat_channel', data.channel)
end)
