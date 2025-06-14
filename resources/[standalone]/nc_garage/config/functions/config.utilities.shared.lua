-- ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
-- ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

Utils = {}

Utils.Trim = function(str) return string.match(str, '^()%s*$') and '' or string.match(str, '^%s*(.*%S)') end
Utils.Round = function(val, dec) if dec then local pow = 10 ^ dec return math.floor((val * pow) + 0.5) / pow else return math.floor(val + 0.5) end end
Utils.BoundPercent = function(percent) return math.max(math.min(percent, 100), 0) end

-- Engine Health
local engineSafeGuard = 100		-- ตั้งค่าให้ตรงกับ config ของ RealisticVehicleFailure
Utils.ClientGetEngineHealthByPercent = function(enginePercent)
	return ((Utils.BoundPercent(enginePercent) / 100) * (1000 - engineSafeGuard)) + 100
end
Utils.ClientGetEngineHealthPercent = function(engineHealth)
	return Utils.BoundPercent((((engineHealth or 1000) - 100) / (1000 - engineSafeGuard)) * 100)
end