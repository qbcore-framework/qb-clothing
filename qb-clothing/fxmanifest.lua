fx_version 'cerulean'
game 'gta5'

description 'QB-Clothing'
version '1.0.0'

ui_page "html/index.html"

server_scripts {
	"config.lua",
	"server/main.lua"
}

client_scripts {
	"config.lua",
	"client/main.lua"
}

files {
	'html/index.html',
	'html/style.css',
	'html/reset.css',
	'html/script.js'
}

dependencies {
	'qb-core'
}