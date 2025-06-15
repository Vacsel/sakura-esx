
ESX = nil
Handspawned = nil
setboom = {}
boom = {}
checkcountboom = {}
checkcountrepair = {}
check					= false
Zonerepoairdoor			= false
Timedoor = 0
OBJ = {}
cacheobj = nil
vehiclecache = nil
openedvehicle = nil
checkdoor = false
Citizen.CreateThread(function()
	for k,v in pairs(Config.DoorList) do
		boom[k] = false
	end
end)
xSound = exports.xsound

local playing = false
local musicId = "music_id_" .. PlayerPedId()


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().inventory == nil do 
      
        Citizen.Wait(100) 
    end
    while ESX.GetPlayerData().job == nil do 
		Citizen.Wait(100) 
	end
   
	ESX.PlayerData = ESX.GetPlayerData()

	ESX.PlayerData.inventory = ESX.GetPlayerData().inventory
    Wait(5000)
    for k,v in pairs(Config.DoorList) do
        setboom[k] = v.boom
        checkcountboom[k] = v.countboom
        checkcountrepair[k] = v.countrepair
    end
    localscriptcheck()
    Wait(5000)
    
    ESX.TriggerServerCallback('BN_Doorlock:getDoorInfo', function(doorInfo, doorboom, countboom, countrepair)
        for doorID,state in pairs(doorInfo) do
            Config.DoorList[doorID].locked = true
        end

        for doorID,state in pairs(doorboom) do
            boom[doorID] = state
            if state == true then
                setboom[doorID] = state
                Config.DoorList[doorID].locked = false
            end
        end

        for doorID,state in pairs(countrepair) do
            checkcountrepair[doorID] = state
            
        end
        for doorID,state in pairs(countboom) do
            checkcountboom[doorID] = state
        end

    end)
	localscriptXs()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	Wait(1000)
	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:addInventoryItem')
AddEventHandler('esx:addInventoryItem', function(item, count, showNotification)
	for k,v in ipairs(ESX.PlayerData.inventory) do
		if v.name == item then
			ESX.PlayerData.inventory[k].count = count
		  
			break
		end
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


end)


function localscriptcheck()

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

AddEventHandler('playerSpawned', function()
	check = false
end)

RegisterNetEvent('BN_Doorlock:checkstackbomb')
AddEventHandler('BN_Doorlock:checkstackbomb', function(doorID, count)
	checkcountboom[doorID] = count
end)

RegisterNetEvent('BN_Doorlock:checkstackrepair')
AddEventHandler('BN_Doorlock:checkstackrepair', function(doorID, count)
	checkcountrepair[doorID] = count
end)


AddEventHandler('esx:onPlayerDeath', function(data)
	--ClearPedTasksImmediately(PlayerPedId())


	OnPlayerDeath()

	
end)

function OnPlayerDeath()
	if check then
		TriggerEvent('mythic_progbar:client:cancel')
	end
	check = false
end


Citizen.CreateThread(function()
	while true do
		local playerCoords = GetEntityCoords(PlayerPedId())
		if Zonerepoairdoor then 
			Timedoor = Timedoor - 1
			if Timedoor == 0 then
				Zonerepoairdoor = false
                ESX.Game.DeleteObject(Handspawned)
			end
		end
		Citizen.Wait(1000)
	end
end)



function IsAuthorized(doorID)
	if ESX.PlayerData.job == nil then
		return false
	end
	
	for _,job in pairs(doorID.authorizedJobs) do
		if job == ESX.PlayerData.job.name then
			return true
		end
	end

	return false
end
function ShowNotifi()
	ESX.ShowNotification(_U('no_boom'))
	exports['mythic_notify']:DoHudText('Error', _U('no_boom'))
end

RegisterNetEvent('BN_Doorlock:Checkdoorcooldown')
AddEventHandler('BN_Doorlock:Checkdoorcooldown', function()
	checkdoor = true
    Wait(Config.Cooldowndoor)
    checkdoor = false
end)


-- Set state for a door
RegisterNetEvent('BN_Doorlock:setState')
AddEventHandler('BN_Doorlock:setState', function(doorID, state)
	Config.DoorList[doorID].locked = state
end)

RegisterNetEvent('BN_Doorlock:setState2')
AddEventHandler('BN_Doorlock:setState2', function(doorID, state)
	Config.DoorList[doorID].locked = false
	Wait(2000)
	Config.DoorList[doorID].locked = true
end)

RegisterNetEvent('BN_Doorlock:setState3')
AddEventHandler('BN_Doorlock:setState3', function(doorID, state)
	--Config.DoorList[doorID].locked = false
    TriggerServerEvent('BN_Doorlock:updateState', doorID, false)
	Wait(Config.Autodoortime)
    TriggerServerEvent('BN_Doorlock:updateState', doorID, true)
	--Config.DoorList[doorID].locked = true
end)



RegisterNetEvent('BN_Doorlock:boomd')
AddEventHandler('BN_Doorlock:boomd', function(index, state) 
	if state == true then
		setboom[index] = state
		Config.DoorList[index].locked = false
	else
		Config.DoorList[index].locked = true
	end
	boom[index] = state
	-- print(index)
	-- print(state)
end)

AddEventHandler('esx:setstatus', function(data, status) 
	setboom[data] = status
end)

checkHasItem = function(item_name)
	local inventory = ESX.PlayerData.inventory
	for i=1, #inventory do
		local item = inventory[i]
		if item_name == item.name then
			if item.count >= 1  then
				return true
			else
				return false
			end
		end
	end
	return false
end

checkHasItemBoom = function()
	local inventory = ESX.PlayerData.inventory
	for i=1, #inventory do
		local item = inventory[i]
		if Config.item[item.name] then
			if item.count >= 1  then
				return item.name
			end
		end
	end
	return false
end


-- (Re)set locals at start
local infoOn = false    -- Disables the info on restart.
local coordsText = ""   -- Removes any text the coords had stored.
local headingText = ""  -- Removes any text the heading had stored.
local modelText = ""    -- Removes any text the model had stored.
local coordsText2 = ""   -- Removes any text the coords had stored.
local headingText2 = ""  -- Removes any text the heading had stored.
local modelText2 = ""    -- Removes any text the model had stored.
local keymodel = ""
local itemname = ""
local fire = 0
-- Thread that makes everything happen.
Citizen.CreateThread(function()                             -- Create the thread.
    while true do                                           -- Loop it infinitely.
        local pause = 5000                                   -- If infos are off, set loop to every 250ms. Eats less resources.
        if infoOn then                                      -- If the info is on then...
            pause = 0                                      -- Only loop every 5ms (equivalent of 200fps).
            local player = GetPlayerPed(-1)                 -- Get the player.
            if IsPlayerFreeAiming(PlayerId()) then          -- If the player is free-aiming (update texts)...
                local entity = getEntity(PlayerId())        -- Get what the player is aiming at. This isn't actually the function, that's below the thread.
                local coords = GetEntityCoords(entity)      -- Get the coordinates of the object.
                local heading = GetEntityHeading(entity)    -- Get the heading of the object.
                local model = GetEntityModel(entity)        -- Get the hash of the object.
                coordsText = "vector3("..coords.x..","..coords.y..","..coords.z..")"                         -- Set the coordsText local.
                headingText = heading                       -- Set the headingText local.
                modelText = model                           -- Set the modelText local.
            end                                             -- End (player is not freeaiming: stop updating texts).
			
            DrawInfos("Coordinates: " .. coordsText .. "\nHeading: " .. headingText .. "\nHash: " .. modelText)     -- Draw the text on screen
            if IsPedShooting(PlayerPedId()) then
                -- local textmodel = {	
                --     authorizedJobs = {''},
                --     locked = true,
                --     boom = true, -- ตั้งค่าว่ามี
                --     countboom = 2,
                --     countrepair = 1,
                --     item = true,
                --     itemname = itemname,
                --     distance = 2.0,
                --     textCoords = coordsText,
                --     house = keymodel,
                --     doors = {
                --         {objName = modelText, objYaw = headingText, objCoords = coordsText},
                --        -- {objName = 587729701, objYaw = 104.99, objCoords = vector3(-1496.16, -1260.62, 6.91)}
                --      }
                -- }
               -- print(json.encode(textmodel))
                print("{\n  authorizedJobs = {''},\n  locked = true,\n  boom = true,\n  countboom = 2,\n  countrepair = 1,\n  item = true,\n  itemname = '" .. itemname .. "',\n  distance = 2.0,\n  textCoords = " .. coordsText .. ",\n  house = '" .. keymodel .. "',\n    doors = {\n         {objName = "..modelText..",  objYaw = "..headingText..", objCoords = "..  coordsText.." },\n    }\n},")

            end
			
			--print("Coordinates: " .. coordsText .. "\nHeading: " .. headingText .. "\nHash: " .. modelText)
			-- Wait(5000)
		-- end
        end                                                 -- Info is off, don't need to do anything.
        Citizen.Wait(pause)                                 -- Now wait the specified time.
    end                                                     -- End (stop looping).
end)                                                        -- Endind the entire thread here.

Citizen.CreateThread(function()                             -- Create the thread.
    while true do                                           -- Loop it infinitely.
        local pause = 1000                                   -- If infos are off, set loop to every 250ms. Eats less resources.
        if infoOn2 then                                      -- If the info is on then...
            pause = 0                                      -- Only loop every 5ms (equivalent of 200fps).
            local player = GetPlayerPed(-1)                 -- Get the player.
            if IsPlayerFreeAiming(PlayerId()) then          -- If the player is free-aiming (update texts)...
                local entity = getEntity(PlayerId())        -- Get what the player is aiming at. This isn't actually the function, that's below the thread.
                local coords = GetEntityCoords(entity)      -- Get the coordinates of the object.
                local heading = GetEntityHeading(entity)    -- Get the heading of the object.
                local model = GetEntityModel(entity)        -- Get the hash of the object.
                if fire == 2 then
                    coordsText = "vector3("..coords.x..","..coords.y..","..coords.z..")"                         -- Set the coordsText local.
                    headingText = heading                       -- Set the headingText local.
                    modelText = model                           -- Set the modelText local.
                else                                             -- End (player is not freeaiming: stop updating texts).
                    coordsText2 = "vector3("..coords.x..","..coords.y..","..coords.z..")"                         -- Set the coordsText local.
                    headingText2 = heading                       -- Set the headingText local.
                    modelText2 = model                           -- Set the modelText local.
                end
               
			end
            DrawInfos("Coordinates: " .. coordsText .. "\nHeading: " .. headingText .. "\nHash: " .. modelText)     -- Draw the text on screen
            if IsPedShooting(PlayerPedId()) then
                if fire == 2 then
                    fire = fire - 1
                else
                    fire = 2
                    print("{\n  authorizedJobs = {''},\n  locked = true,\n  boom = true,\n  countboom = 2,\n  countrepair = 1,\n  item = true,\n  itemname = '" .. itemname .. "',\n  distance = 2.0,\n  textCoords = " .. coordsText .. ",\n  house = '" .. keymodel .. "',\n  doors = {\n         {objName = "..modelText..",  objYaw = "..headingText..", objCoords = "..  coordsText.." },\n         {objName = "..modelText2..",  objYaw = "..headingText2..", objCoords = "..  coordsText2.." },\n    }\n},")
                   
                end
                -- local textmodel = {	
                --     authorizedJobs = {''},
                --     locked = true,
                --     boom = true, -- ตั้งค่าว่ามี
                --     countboom = 2,
                --     countrepair = 1,
                --     item = true,
                --     itemname = itemname,
                --     distance = 2.0,
                --     textCoords = coordsText,
                --     house = keymodel,
                --     doors = {
                --         {objName = modelText, objYaw = headingText, objCoords = coordsText},
                --        -- {objName = 587729701, objYaw = 104.99, objCoords = vector3(-1496.16, -1260.62, 6.91)}
                --      }
                -- }
            -- print(json.encode(textmodel))
                

            end
            
			
			--print("Coordinates: " .. coordsText .. "\nHeading: " .. headingText .. "\nHash: " .. modelText)
			-- Wait(5000)
		-- end
        end                                                 -- Info is off, don't need to do anything.
        Citizen.Wait(pause)                                 -- Now wait the specified time.
    end                                                     -- End (stop looping).
end)                                                        -- Endind the entire thread here.

Citizen.CreateThread(function()                             -- Create the thread.
    while true do                                           -- Loop it infinitely.
        local pause = 1000                                   -- If infos are off, set loop to every 250ms. Eats less resources.
        if infoOn then                                      -- If the info is on then...
            pause = 0                                      -- Only loop every 5ms (equivalent of 200fps).
            local player = GetPlayerPed(-1)                 -- Get the player.
            if IsPlayerFreeAiming(PlayerId()) then          -- If the player is free-aiming (update texts)...
                local entity = getEntity(PlayerId())        -- Get what the player is aiming at. This isn't actually the function, that's below the thread.
                local coords = GetEntityCoords(entity)      -- Get the coordinates of the object.
                local heading = GetEntityHeading(entity)    -- Get the heading of the object.
                local model = GetEntityModel(entity)        -- Get the hash of the object.
                coordsText = "vector3("..coords.x..","..coords.y..","..coords.z..")"                         -- Set the coordsText local.
                headingText = heading                       -- Set the headingText local.
                modelText = model                           -- Set the modelText local.
            end                                             -- End (player is not freeaiming: stop updating texts).
			
            DrawInfos("Coordinates: " .. coordsText .. "\nHeading: " .. headingText .. "\nHash: " .. modelText)     -- Draw the text on screen
            if IsPedShooting(PlayerPedId()) then
                -- local textmodel = {	
                --     authorizedJobs = {''},
                --     locked = true,
                --     boom = true, -- ตั้งค่าว่ามี
                --     countboom = 2,
                --     countrepair = 1,
                --     item = true,
                --     itemname = itemname,
                --     distance = 2.0,
                --     textCoords = coordsText,
                --     house = keymodel,
                --     doors = {
                --         {objName = modelText, objYaw = headingText, objCoords = coordsText},
                --        -- {objName = 587729701, objYaw = 104.99, objCoords = vector3(-1496.16, -1260.62, 6.91)}
                --      }
                -- }
               -- print(json.encode(textmodel))
               -- if
               print("{\n  authorizedJobs = {''},\n  locked = true,\n  boom = true,\n  countboom = 2,\n  countrepair = 1,\n  item = true,\n  itemname = '" .. itemname .. "',\n  distance = 2.0,\n  textCoords = " .. coordsText .. ",\n  house = '" .. keymodel .. "',\n    doors = {\n         {objName = "..modelText..",  objYaw = "..headingText..", objCoords = "..  coordsText.." },\n    }\n},")

            end
			
			--print("Coordinates: " .. coordsText .. "\nHeading: " .. headingText .. "\nHash: " .. modelText)
			-- Wait(5000)
		-- end
        end                                                 -- Info is off, don't need to do anything.
        Citizen.Wait(pause)                                 -- Now wait the specified time.
    end                                                     -- End (stop looping).
end)     

-- Function to get the object the player is actually aiming at.
function getEntity(player)                                          -- Create this function.
    local result, entity = GetEntityPlayerIsFreeAimingAt(player)    -- This time get the entity the player is aiming at.
    return entity                                                   -- Returns what the player is aiming at.
end                                                                 -- Ends the function.



-- Function to draw the text.
function DrawInfos(text)
    
    SetTextColour(255, 255, 255, 255)   -- Color
    SetTextFont(1)                      -- Font
    SetTextScale(0.4, 0.4)              -- Scale
    SetTextWrap(0.0, 1.0)               -- Wrap the text
    SetTextCentre(false)                -- Align to center(?)
    SetTextDropshadow(0, 0, 0, 0, 255)  -- Shadow. Distance, R, G, B, Alpha.
    SetTextEdge(50, 0, 0, 0, 255)       -- Edge. Width, R, G, B, Alpha.
    SetTextOutline()                    -- Necessary to give it an outline.
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(0.015, 0.71)               -- Position
end



-- Creating the function to toggle the info.
ToggleInfos = function()                -- "ToggleInfos" is a function
    infoOn = not infoOn                 -- Switch them around
end                                     -- Ending the function here.

ToggleInfos2 = function()                -- "ToggleInfos" is a function
    infoOn2 = not infoOn2                 -- Switch them around
end     

-- Creating the command.
RegisterCommand("checkgun", function(source, args)     -- Listen for this command.
    keymodel = args[1]
    itemname = args[2]
    ToggleInfos()                       -- Heard it! Let's toggle the function above.
end)                                    -- Ending the function here.


RegisterCommand("checkgun2", function(source, args)     -- Listen for this command.
    keymodel = args[1]
    itemname = args[2]
    fire = 2
    ToggleInfos2()                       -- Heard it! Let's toggle the function above.
end)                                    -- Ending the function here.


Citizen.CreateThread(function()
    for k,v in pairs(Config.OBJ) do
        for k2,v2 in pairs(v.position) do
            local hash = GetHashKey(v.prop)
            RequestModel(hash)
    
            while not HasModelLoaded(hash) do 
                Citizen.Wait(0) 
            end
            if v2.useobj then
                local object = CreateObject(hash, v2.coord, false, false, false)
                local heading = 0
                FreezeEntityPosition(object, true)
                SetEntityHeading(object, v2.heading)
                SetModelAsNoLongerNeeded(hash)
                table.insert(OBJ,{
                    obj = object,
                    prop = hash,
                    coord = v2.coord,
                    heading = v2.heading,
                    spawn = true
                })
            end
        
        end
    end
    while true do
        local playerped = PlayerPedId()
        local playercoord = GetEntityCoords(playerped)
        for k3, v3 in pairs(OBJ) do
            if GetDistanceBetweenCoords(playercoord,v3.coord,true) < 100.0 then
               -- print(v3.spawn)
                if v3.spawn == nil then
                    local object = CreateObject(v3.prop, v3.coord, false, false, false)
                    local heading = 0
                    FreezeEntityPosition(object, true)
                    SetEntityHeading(object, v3.heading)
                    SetModelAsNoLongerNeeded(hash)
                    v3.obj = object
                    v3.spawn = true
                    
                end
                
                
            elseif v3.spawn == true then

                DeleteObject(v3.obj)
                ESX.Game.DeleteObject(v3.obj)
                v3.spawn = nil
            end
        end
        if #OBJ == 0 then
            break
        end
        Citizen.Wait(5000)
    end
end)

Citizen.CreateThread(function()
    while true do
        local playerped = PlayerPedId()
        local playercoord = GetEntityCoords(playerped)

  
        for _,v in pairs(OBJ) do
            if GetDistanceBetweenCoords(playercoord,v.coord,true) < 2.0 then
                cacheobj = v
            end
        end
        Citizen.Wait(1000)
    end
end)


Citizen.CreateThread(function()
    while true do
		local sleep = 500
        if cacheobj then
			sleep = 0
            ShowFloatingHelpNotification("Press [~r~E~w~] to Repair Door",cacheobj.coord+vector3(0,0,1.0))
           -- exports["Tn_Textui"]:ShowHelpNotification("Press ~INPUT_PICKUP~ to access trunk")   
            if IsControlJustReleased(0, Keys['E']) and not Zonerepoairdoor then
				Zonerepoairdoor = true
				Timedoor = Config.Timeoutrepairdoor
                local ad = "anim@heists@box_carry@"
                loadAnimDict( ad )
                TaskPlayAnim( PlayerPedId(), ad, "idle", 3.0, -8, -1, 63, 0, 0, 0, 0 )   --ท่าทาง
                local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
                Hand = Config.Hand.HandPickup  --ไอเทมบนมือ
                Handspawned = CreateObject(GetHashKey(Hand), x, y, z+1000,  true,  true, true)
                ObjectPickup(Handspawned)
            end
            local playerped = PlayerPedId()
            local playercoord = GetEntityCoords(playerped)
            if GetDistanceBetweenCoords(playercoord,cacheobj.coord,true) > 5.0 then
                cacheobj = nil
            end
        end
       
        Citizen.Wait(sleep)
    end
end)

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(10)
	end
end

Citizen.CreateThread(function()
	while true do
        local sleep = 500
		if Zonerepoairdoor then 
            sleep = 0
			DisableActions()
		end
		Citizen.Wait(sleep)
	end
end)


ShowFloatingHelpNotification = function(msg, coords)
	SetTextFont(fontId)
	AddTextEntry('BN_Doorlock', msg)
	SetFloatingHelpTextWorldPosition(1, coords)
	SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
	BeginTextCommandDisplayHelp('BN_Doorlock')
	EndTextCommandDisplayHelp(2, false, false, -1)
end



AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(OBJ) do
			DeleteObject(v.obj)
            ESX.Game.DeleteObject(v.obj)
		end
	end
end)

end