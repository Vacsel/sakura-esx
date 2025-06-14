
fx_version 'adamant'

game 'gta5'
lua54 'yes'
description 'ESX Ambulance Job'

version '1.2.0'


server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'locales/cs.lua',
	'locales/th.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'@es_extended/client/client/function.lua',
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/ComboZone.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'locales/cs.lua',
	'locales/th.lua',
	'config.lua',
	'client/main.lua',
	'client/job.lua'
}

shared_scripts {
	'@es_extended/imports.lua',
	'@ox_lib/init.lua',
}

dependencies {
	'es_extended',
	--'esx_vehicleshop',
}


ui_page "html/index.html"

files {
	'html/index.html',
	'html/***'
}