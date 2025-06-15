fx_version 'cerulean'
game 'gta5'
lua54 'yes'
name "iNo_craft"
description "Crafting System"
author "NO DEV"
version "1.0.0"

-- ui_page "ui/index.html"
ui_page "html/index.html"

files {
	'html/**',
	
}

client_scripts {
	'config_general.lua',
	'config_item.lua',
	'config_location.lua',
	'config_function_cl.lua',
	'client/*.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'config_general.lua',
	'config_item.lua',
	'config_function_sv.lua',
	'server/*.lua'
}

escrow_ignore {
	'config_general.lua',
	'config_item.lua',
	'config_location.lua',
	'config_function_cl.lua',
	'config_function_sv.lua',
}

shared_scripts {
	'@ox_lib/init.lua',
	'@es_extended/imports.lua'
}

dependency '/assetpacks'