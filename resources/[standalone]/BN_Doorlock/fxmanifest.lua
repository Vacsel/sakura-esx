fx_version 'adamant'

game 'gta5'
lua54 'yes'
description 'BlackNight DoorLock'

version '1.1.0'

server_scripts {
	'SECURE.lua',
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
        'SECURE.lua',
        '@es_extended/locale.lua',
        'locales/*.lua',
        'config.lua',
        'client/main.lua',
        'client/clientfunction.lua',

}

dependency 'es_extended'
dependency 'ox_lib'

escrow_ignore {
        'config.lua',
}
