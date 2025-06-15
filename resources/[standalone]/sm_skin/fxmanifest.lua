fx_version 'adamant'
game 'gta5'

name "sm_skin"
description "Skin System & Clothe Shop @SM"
author "SM Developer"
version "2.0.1"

ui_page "html/index.html"

files {
    'html/index.html',
    'html/css/*.css',
    'html/js/*.js',
    'html/fonts/*.ttf',
    'html/sound/*.ogg',
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/ComboZone.lua',
    'configs/*.lua',
    'client/function.lua',
    'client/client.lua',
    'client/blockskin.lua',
    'client/baber.lua',
    'client/clotheshop.lua',
    'client/skin.lua',
    'client/accessories.lua',
    'client/shop.lua',
    'client/locker.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'configs/*.lua',
    'sm_auth.lua',
    'server/server.lua',
    'server/skin.lua',
    'server/accessories.lua'
}
