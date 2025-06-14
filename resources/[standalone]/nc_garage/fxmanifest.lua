shared_script "@bt_defender/module/shared.lua"





fx_version 'cerulean'
game 'gta5'

description 'NC Garage'
version '1.0.8'
author 'NC'

lua54 'yes'

shared_scripts {
	'config/config.general.lua',
	'config/config.extensions.lua',
	'config/config.locale.lua',
	'config/functions/config.utilities.shared.lua',
	'addons/**/*shared*.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'config/config.database.lua',
	'config/functions/config.functions.server.lua',
	'config/capture/config.capture.server.lua',
	'addons/**/*server*.lua',
	'server/main.lua'
}

client_scripts {
	'config/functions/config.utilities.client.lua',
	'config/functions/config.functions.client.lua',
	'config/config.settings.lua',
	'config/config.colors.lua',
	'config/capture/config.capture.client.lua',
	'addons/**/*client*.lua',
	'client/main.lua'
}

ui_page 'html/index.html'

files {
	'html/**',
	'config/GARAGES/*.lua',
	'config/REMOVERS/*.lua',
	'config/POUNDS/*.lua'
}