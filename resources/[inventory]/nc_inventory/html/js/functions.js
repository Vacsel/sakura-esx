// ████╗   ██╗   ██████╗   ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ //
// ██╔██╗  ██║ ██╔═════╝   ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ //
// ██║╚██╗ ██║ ██║         ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ //
// ██║ ╚██╗██║ ██║         ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ //
// ██║  ╚████║ ╚═██████╗   ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ //
// ╚═╝   ╚═══╝   ╚═════╝   ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ //

UTILS = {}, FUNCTIONS = {};

UTILS.HasItem = function(type, name) {
	return $(`.nc-primary > .nc-items > .nc-item.hide[data-name="${name}"][data-item-type="${type}"]`).length === 0;
}
UTILS.HasBadges = function(type, name) {
	let $target = $(`.nc-primary > .nc-items > .nc-item[data-name="${name}"][data-item-type="${type}"]`);
	return $target.has('.badge').length > 0;
}

// Function นี้จะถูกเรียกใช้งานก่อนที่จะแสดง Context Menu (secondaryName จะมีค่าเมื่อเปิดกระเป๋าสอง)
// [ name: ชื่อสิ่งของ | type: ชนิดของสิ่งของ | optionType: ชนิดของ Accessory เมื่อ type == 'accessory' | secondaryName: ชื่อชนิดของกระเป๋าสอง ]
FUNCTIONS.WillDisplayContextMenu = function({ name, type, optionType }, contexts, secondaryName) {
	if (type == 'weapon') {
		contexts.push({
			key: 'skin_menu',
			icon: '<iconify-icon icon="material-symbols-light:swords-outline-rounded"></iconify-icon>',
			title: 'สกิน',
			hide: false,
			func: () => {
				$.post('https://nc_inventory/getWeaponSkins', JSON.stringify({ weaponName: name }));
			}
		});
	}
	return contexts;
}