-- ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
-- ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

Utils.SpawnVehicle = function(model, coords, heading, cb)
	coords = type(coords) == 'vector3' and coords or vector3(coords.x, coords.y, coords.z)
	CreateThread(function()
		if not HasModelLoaded(model) and IsModelInCdimage(model) then
			RequestModel(model)
			while not HasModelLoaded(model) do Wait(0) end
		end
		local vehicle = CreateVehicle(model, coords, heading, true, true)

		local netId = NetworkGetNetworkIdFromEntity(vehicle)
		SetNetworkIdCanMigrate(netId, true)
		SetEntityAsMissionEntity(vehicle, true, false)

		SetVehicleHasBeenOwnedByPlayer(vehicle, true)
		SetVehicleNeedsToBeHotwired(vehicle, false)
		SetModelAsNoLongerNeeded(model)
		SetVehRadioStation(vehicle, 'OFF')

		RequestCollisionAtCoord(coords)
		while not HasCollisionLoadedAroundEntity(vehicle) do Wait(0) end
		if cb then cb(vehicle) end
	end)
end

-- START OVERRIDDEN SOME NATIVE FUNCTIONS
local __GVM, __ITMO, __GVL, __GVWT, __GVNPTI = GetVehicleMod, IsToggleModOn, GetVehicleLivery, GetVehicleWindowTint
local GetVehicleMod = function(vehicle, modType) local mod = __GVM(vehicle, modType) return mod ~= -1 and mod or nil end
local IsToggleModOn = function(vehicle, modType) return __ITMO(vehicle, modType) or nil end
local GetVehicleLivery = function(vehicle, livery) local mod = __GVL(vehicle, livery) return mod ~= -1 and mod or nil end
local GetVehicleWindowTint = function(vehicle) local tint = __GVWT(vehicle) return tint ~= -1 and tint or nil end
-- ENDED OVERRIDDEN SOME NATIVE FUNCTIONS

-- For LegacyFuel
local legacyfuelResourceName = 'LegacyFuel'		-- ชื่อ Resource LegacyFuel ที่ใช้งาน
if GetResourceState(legacyfuelResourceName) ~= 'missing' then
	function GetVehicleFuelLevel(vehicle) local success, result = pcall(function() return exports[legacyfuelResourceName]:GetFuel(vehicle) end) return success and result or 100.0 end
	function SetVehicleFuelLevel(vehicle, fuel) pcall(function() return exports[legacyfuelResourceName]:SetFuel(vehicle, fuel) end) end
end

Utils.ClientGetVehicleStats = function(model)
	return {
		speed = Utils.BoundPercent(((GetVehicleModelEstimatedMaxSpeed(model) * 3600 / 1000) / 250) * 100),
		acceleration = Utils.BoundPercent((GetVehicleModelAcceleration(model) / 0.6) * 100),
		braking = Utils.BoundPercent((GetVehicleModelMaxBraking(model) / 1.5) * 100),
		handling = Utils.BoundPercent((GetVehicleModelMaxTraction(model) / 4) * 100)
	}
end

Utils.ClientGetVehicleProperties = function(vehicle)
	local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
	local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
	local hasCustomPrimaryColor = GetIsVehiclePrimaryColourCustom(vehicle)
	local customPrimaryColor = hasCustomPrimaryColor and { GetVehicleCustomPrimaryColour(vehicle) } or nil

	local customXenonColorR, customXenonColorG, customXenonColorB = GetVehicleXenonLightsCustomColor(vehicle)
	local customXenonColor = nil
	if customXenonColorR and customXenonColorG and customXenonColorB then 
		customXenonColor = { customXenonColorR, customXenonColorG, customXenonColorB }
	end
	
	local hasCustomSecondaryColor = GetIsVehicleSecondaryColourCustom(vehicle)
	local customSecondaryColor = hasCustomSecondaryColor and { GetVehicleCustomSecondaryColour(vehicle) } or nil
	
	local haveExtras = false
	local extras = {}
	for extraId = 0, 12 do
		if DoesExtraExist(vehicle, extraId) then
			extras[tostring(extraId)] = IsVehicleExtraTurnedOn(vehicle, extraId)
			haveExtras = true
		end
	end

	local someDoorsBroken, someWindowsBroken, someTyreBurst, someNeonEnabled = false, false, false, false
	local doorsBroken, windowsBroken, tyreBurst = {}, {}, {}
	local numWheels = tostring(GetVehicleNumberOfWheels(vehicle))

	local TyresIndex = { -- Wheel index list according to the number of vehicle wheels.
		['2'] = { 0, 4 }, -- Bike and cycle.
		['3'] = { 0, 1, 4, 5 }, -- Vehicle with 3 wheels (get for wheels because some 3 wheels vehicles have 2 wheels on front and one rear or the reverse).
		['4'] = { 0, 1, 4, 5 }, -- Vehicle with 4 wheels.
		['6'] = { 0, 1, 2, 3, 4, 5 } -- Vehicle with 6 wheels.
	}
	if TyresIndex[numWheels] then
		for tyre, idx in pairs(TyresIndex[numWheels]) do
			local state = not not IsVehicleTyreBurst(vehicle, idx, false)
			tyreBurst[tostring(idx)] = state
			if state then someTyreBurst = true end
		end
	end

	for windowId = 0, 7 do -- 13
		local state = not IsVehicleWindowIntact(vehicle, windowId)
		windowsBroken[tostring(windowId)] = state
		if state then someWindowsBroken = true end
	end

	local numDoors = GetNumberOfVehicleDoors(vehicle)
	if numDoors and numDoors > 0 then
		for doorsId = 0, numDoors do
			local state = not not IsVehicleDoorDamaged(vehicle, doorsId)
			doorsBroken[tostring(doorsId)] = state
			if state then someDoorsBroken = true end
		end
	end

	local neonEnabled = {}
	for i = 0, 3 do
		local state = IsVehicleNeonLightEnabled(vehicle, i)
		neonEnabled[i + 1] = state
		if state then someNeonEnabled = true end
	end

	return {
		model = GetEntityModel(vehicle),
		plate = Utils.Trim(GetVehicleNumberPlateText(vehicle)),
		plateIndex = GetVehicleNumberPlateTextIndex(vehicle),
		doorsBroken = someDoorsBroken and doorsBroken or nil,
		windowsBroken = someWindowsBroken and windowsBroken or nil,
		tyreBurst = someTyreBurst and tyreBurst or nil,

		bodyHealth = Utils.Round(GetVehicleBodyHealth(vehicle), 1),
		engineHealth = Utils.Round(GetVehicleEngineHealth(vehicle), 1),
		tankHealth = Utils.Round(GetVehiclePetrolTankHealth(vehicle), 1),

		fuelLevel = Utils.Round(GetVehicleFuelLevel(vehicle), 1),
		dirtLevel = Utils.Round(GetVehicleDirtLevel(vehicle), 1),

		color1 = colorPrimary,
		color2 = colorSecondary,
		customPrimaryColor = customPrimaryColor,
		customSecondaryColor = customSecondaryColor,

		pearlescentColor = pearlescentColor,
		wheelColor = wheelColor,

		wheels = GetVehicleWheelType(vehicle),
		windowTint = GetVehicleWindowTint(vehicle),
		xenonColor = GetVehicleXenonLightsColor(vehicle),
		customXenonColor = customXenonColor,

		neonEnabled = someNeonEnabled and neonEnabled or nil,

		neonColor = { GetVehicleNeonLightsColour(vehicle) },
		extras = haveExtras and extras or nil,
		tyreSmokeColor = { GetVehicleTyreSmokeColor(vehicle) },

		modSpoilers = GetVehicleMod(vehicle, 0),
		modFrontBumper = GetVehicleMod(vehicle, 1),
		modRearBumper = GetVehicleMod(vehicle, 2),
		modSideSkirt = GetVehicleMod(vehicle, 3),
		modExhaust = GetVehicleMod(vehicle, 4),
		modFrame = GetVehicleMod(vehicle, 5),
		modGrille = GetVehicleMod(vehicle, 6),
		modHood = GetVehicleMod(vehicle, 7),
		modFender = GetVehicleMod(vehicle, 8),
		modRightFender = GetVehicleMod(vehicle, 9),
		modRoof = GetVehicleMod(vehicle, 10),

		modEngine = GetVehicleMod(vehicle, 11),
		modBrakes = GetVehicleMod(vehicle, 12),
		modTransmission = GetVehicleMod(vehicle, 13),
		modHorns = GetVehicleMod(vehicle, 14),
		modSuspension = GetVehicleMod(vehicle, 15),
		modArmor = GetVehicleMod(vehicle, 16),

		modTurbo = IsToggleModOn(vehicle, 18),
		modSmokeEnabled = IsToggleModOn(vehicle, 20),
		modXenon = IsToggleModOn(vehicle, 22),

		modFrontWheels = GetVehicleMod(vehicle, 23),
		modBackWheels = GetVehicleMod(vehicle, 24),

		modPlateHolder = GetVehicleMod(vehicle, 25),
		modVanityPlate = GetVehicleMod(vehicle, 26),
		modTrimA = GetVehicleMod(vehicle, 27),
		modOrnaments = GetVehicleMod(vehicle, 28),
		modDashboard = GetVehicleMod(vehicle, 29),
		modDial = GetVehicleMod(vehicle, 30),
		modDoorSpeaker = GetVehicleMod(vehicle, 31),
		modSeats = GetVehicleMod(vehicle, 32),
		modSteeringWheel = GetVehicleMod(vehicle, 33),
		modShifterLeavers = GetVehicleMod(vehicle, 34),
		modAPlate = GetVehicleMod(vehicle, 35),
		modSpeakers = GetVehicleMod(vehicle, 36),
		modTrunk = GetVehicleMod(vehicle, 37),
		modHydrolic = GetVehicleMod(vehicle, 38),
		modEngineBlock = GetVehicleMod(vehicle, 39),
		modAirFilter = GetVehicleMod(vehicle, 40),
		modStruts = GetVehicleMod(vehicle, 41),
		modArchCover = GetVehicleMod(vehicle, 42),
		modAerials = GetVehicleMod(vehicle, 43),
		modTrimB = GetVehicleMod(vehicle, 44),
		modTank = GetVehicleMod(vehicle, 45),
		modDoorR = GetVehicleMod(vehicle, 47),
		modLivery = GetVehicleMod(vehicle, 48),
		modLightbar = GetVehicleMod(vehicle, 49),

		livery = GetVehicleLivery(vehicle)
	}
end

Utils.ClientSetVehicleProperties = function(vehicle, props)
	local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
	local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
	SetVehicleModKit(vehicle, 0)

	if props.plate then SetVehicleNumberPlateText(vehicle, props.plate) end
	if props.plateIndex then SetVehicleNumberPlateTextIndex(vehicle, props.plateIndex) end
	if props.customPrimaryColor then SetVehicleCustomPrimaryColour(vehicle, props.customPrimaryColor[1], props.customPrimaryColor[2], props.customPrimaryColor[3]) end
	if props.customSecondaryColor then SetVehicleCustomSecondaryColour(vehicle, props.customSecondaryColor[1], props.customSecondaryColor[2], props.customSecondaryColor[3]) end
	if props.color1 then SetVehicleColours(vehicle, props.color1, colorSecondary) end
	if props.color2 then SetVehicleColours(vehicle, props.color1 or colorPrimary, props.color2) end
	if props.pearlescentColor then SetVehicleExtraColours(vehicle, props.pearlescentColor, wheelColor) end
	if props.wheelColor then SetVehicleExtraColours(vehicle, props.pearlescentColor or pearlescentColor, props.wheelColor) end
	if props.wheels then SetVehicleWheelType(vehicle, props.wheels) end
	if props.windowTint then SetVehicleWindowTint(vehicle, props.windowTint) end

	if props.neonEnabled then
		for i = 0, 3 do
			SetVehicleNeonLightEnabled(vehicle, i, props.neonEnabled[i + 1])
		end
	end

	if props.extras then
		for extraId, enabled in pairs(props.extras) do
			SetVehicleExtra(vehicle, tonumber(extraId), enabled and 0 or 1)
		end
	end

	if props.neonColor then SetVehicleNeonLightsColour(vehicle, props.neonColor[1], props.neonColor[2], props.neonColor[3]) end
	if props.xenonColor then SetVehicleXenonLightsColor(vehicle, props.xenonColor) end
	if props.customXenonColor then SetVehicleXenonLightsCustomColor(vehicle, props.customXenonColor[1], props.customXenonColor[2], props.customXenonColor[3]) end
	if props.modSmokeEnabled then ToggleVehicleMod(vehicle, 20, true) end
	if props.tyreSmokeColor then SetVehicleTyreSmokeColor(vehicle, props.tyreSmokeColor[1], props.tyreSmokeColor[2], props.tyreSmokeColor[3]) end

	if props.modSpoilers then SetVehicleMod(vehicle, 0, props.modSpoilers, false) end
	if props.modFrontBumper then SetVehicleMod(vehicle, 1, props.modFrontBumper, false) end
	if props.modRearBumper then SetVehicleMod(vehicle, 2, props.modRearBumper, false) end
	if props.modSideSkirt then SetVehicleMod(vehicle, 3, props.modSideSkirt, false) end
	if props.modExhaust then SetVehicleMod(vehicle, 4, props.modExhaust, false) end
	if props.modFrame then SetVehicleMod(vehicle, 5, props.modFrame, false) end
	if props.modGrille then SetVehicleMod(vehicle, 6, props.modGrille, false) end
	if props.modHood then SetVehicleMod(vehicle, 7, props.modHood, false) end
	if props.modFender then SetVehicleMod(vehicle, 8, props.modFender, false) end
	if props.modRightFender then SetVehicleMod(vehicle, 9, props.modRightFender, false) end
	if props.modRoof then SetVehicleMod(vehicle, 10, props.modRoof, false) end
	if props.modEngine then SetVehicleMod(vehicle, 11, props.modEngine, false) end
	if props.modBrakes then SetVehicleMod(vehicle, 12, props.modBrakes, false) end
	if props.modTransmission then SetVehicleMod(vehicle, 13, props.modTransmission, false) end
	if props.modHorns then SetVehicleMod(vehicle, 14, props.modHorns, false) end
	if props.modSuspension then SetVehicleMod(vehicle, 15, props.modSuspension, false) end
	if props.modArmor then SetVehicleMod(vehicle, 16, props.modArmor, false) end
	if props.modTurbo then ToggleVehicleMod(vehicle, 18, props.modTurbo) end
	if props.modXenon then ToggleVehicleMod(vehicle, 22, props.modXenon) end
	if props.modFrontWheels then SetVehicleMod(vehicle, 23, props.modFrontWheels, false) end
	if props.modBackWheels then SetVehicleMod(vehicle, 24, props.modBackWheels, false) end
	if props.modPlateHolder then SetVehicleMod(vehicle, 25, props.modPlateHolder, false) end
	if props.modVanityPlate then SetVehicleMod(vehicle, 26, props.modVanityPlate, false) end
	if props.modTrimA then SetVehicleMod(vehicle, 27, props.modTrimA, false) end
	if props.modOrnaments then SetVehicleMod(vehicle, 28, props.modOrnaments, false) end
	if props.modDashboard then SetVehicleMod(vehicle, 29, props.modDashboard, false) end
	if props.modDial then SetVehicleMod(vehicle, 30, props.modDial, false) end
	if props.modDoorSpeaker then SetVehicleMod(vehicle, 31, props.modDoorSpeaker, false) end
	if props.modSeats then SetVehicleMod(vehicle, 32, props.modSeats, false) end
	if props.modSteeringWheel then SetVehicleMod(vehicle, 33, props.modSteeringWheel, false) end
	if props.modShifterLeavers then SetVehicleMod(vehicle, 34, props.modShifterLeavers, false) end
	if props.modAPlate then SetVehicleMod(vehicle, 35, props.modAPlate, false) end
	if props.modSpeakers then SetVehicleMod(vehicle, 36, props.modSpeakers, false) end
	if props.modTrunk then SetVehicleMod(vehicle, 37, props.modTrunk, false) end
	if props.modHydrolic then SetVehicleMod(vehicle, 38, props.modHydrolic, false) end
	if props.modEngineBlock then SetVehicleMod(vehicle, 39, props.modEngineBlock, false) end
	if props.modAirFilter then SetVehicleMod(vehicle, 40, props.modAirFilter, false) end
	if props.modStruts then SetVehicleMod(vehicle, 41, props.modStruts, false) end
	if props.modArchCover then SetVehicleMod(vehicle, 42, props.modArchCover, false) end
	if props.modAerials then SetVehicleMod(vehicle, 43, props.modAerials, false) end
	if props.modTrimB then SetVehicleMod(vehicle, 44, props.modTrimB, false) end
	if props.modTank then SetVehicleMod(vehicle, 45, props.modTank, false) end
	if props.modWindows then SetVehicleMod(vehicle, 46, props.modWindows, false) end
	if props.modLivery then SetVehicleMod(vehicle, 48, props.modLivery, false) end
	if props.livery then SetVehicleLivery(vehicle, props.livery) end

	if props.windowsBroken then
		for k, v in pairs(props.windowsBroken) do
			if v then SmashVehicleWindow(vehicle, tonumber(k)) end
		end
	end
	if props.doorsBroken then
		for k, v in pairs(props.doorsBroken) do
			if v then SetVehicleDoorBroken(vehicle, tonumber(k), true) end
		end
	end
	if props.tyreBurst then
		for k, v in pairs(props.tyreBurst) do
			if v then SetVehicleTyreBurst(vehicle, tonumber(k), true, 1000.0) end
		end
	end

	-- Vehicle Stats
	if props.bodyHealth then SetVehicleBodyHealth(vehicle, props.bodyHealth + 0.0) end
	if props.engineHealth then SetVehicleEngineHealth(vehicle, props.engineHealth + 0.0) end
	if props.tankHealth then SetVehiclePetrolTankHealth(vehicle, props.tankHealth + 0.0) end
	if props.fuelLevel then SetVehicleFuelLevel(vehicle, props.fuelLevel + 0.0) end
	if props.dirtLevel then SetVehicleDirtLevel(vehicle, props.dirtLevel + 0.0) end
end

exports('GetVehicleProperties', Utils.ClientGetVehicleProperties)
exports('SetVehicleProperties', Utils.ClientSetVehicleProperties)