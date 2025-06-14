const { createApp } = Vue

createApp({
    data() {
        return {
            isOpen: false,
            displayName: '',
            displayImage: '',
            displaySkinLists: [],
            selectedSkin: null,
            Now_Weapon: null,
        };
    },
    methods: {
        openSkinMenu(data) {
            try {
                if (!data || !Array.isArray(data) || data.length === 0) {
                    console.error('Invalid data received');
                    return;
                }

                const weaponData = data[0];
                this.displayName = weaponData.name || '';

                let skins = [];
                if (weaponData.SkinLists) {
                    const key = Object.keys(weaponData.SkinLists)[0];
                    skins = weaponData.SkinLists[key] || [];
                    
                    // Sort skins: Default first, then can:true skins
                    skins.sort((a, b) => {
                        // Default skin first
                        if (a.mainskin) return -1;
                        if (b.mainskin) return 1;
                        
                        // Then can:true skins
                        if (a.can && !b.can) return -1;
                        if (!a.can && b.can) return 1;
                        
                        // Keep original order for others
                        return 0;
                    });

                    // Set Now_Weapon from default skin
                    const defaultSkin = skins.find(skin => skin.default === true);
                    if (defaultSkin) {
                        this.Now_Weapon = defaultSkin.default;
                    }
                }

                this.displaySkinLists = skins;
                this.selectedSkin = null;

                if (skins[0]) {
                    const item = skins[0].Item || skins[0].Component;
                    this.displayImage = `./img/items/${item}.png`;
                    this.displayName = skins[0].Label || this.displayName;
                } else {
                    this.displayImage = '';
                }
                
                this.isOpen = true;
            } catch (error) {
                console.error('Error in openSkinMenu:', error);
            }
        },
        closeSkinMenu() {
            this.isOpen = false;
            this.selectedSkin = null;
            this.displaySkinLists = [];
            this.Now_Weapon = null;
        },
        selectSkin(skin) {
            try {
                if (skin.can === false) {
                    this.Now_Weapon = skin.default;
                    return;
                }
                this.selectedSkin = skin.Component;
                this.displayImage = `./img/items/${skin.Item || skin.Component}.png`;
                this.displayName = skin.Label;
            } catch (error) {
                console.error('Error in selectSkin:', error);
            }
        },
        useSkin() {
            try {
                if (!this.selectedSkin) {
                    console.log('No skin selected!');
                    return;
                }
                
                const selectedSkinData = this.displaySkinLists.find(skin => skin.Component === this.selectedSkin);
                if (!selectedSkinData) return;

                $.post('https://nc_inventory/CloseUI', JSON.stringify({}));
                $.post('https://nc_inventory/handleSelectedSkin', JSON.stringify({
                    now: this.Now_Weapon,
                    weaponcomponent: selectedSkinData.Component,
                    can: selectedSkinData.can,
                    label: selectedSkinData.Label,
                    item: selectedSkinData.Item,
                    category: selectedSkinData.Category,
                    main: selectedSkinData.mainskin,
                    weapon: selectedSkinData.nameweaponuse
                }));
            } catch (error) {
                console.error('Error in useSkin:', error);
            }
        },
        removeSkin() {
            try {
                const defaultSkin = this.displaySkinLists.find(skin => skin.mainskin === true);
                if (defaultSkin) {
                    this.selectedSkin = defaultSkin.Component;
                    $.post('https://nc_inventory/handleSelectedSkin', JSON.stringify({
                        now: this.Now_Weapon,
                        weaponcomponent: defaultSkin.Component,
                        can: defaultSkin.can,
                        label: defaultSkin.Label,
                        item: defaultSkin.Item,
                        category: defaultSkin.Category,
                        main: defaultSkin.mainskin,
                        weapon: defaultSkin.nameweaponuse
                    }));
                }
                $.post('https://nc_inventory/CloseUI', JSON.stringify({}));
            } catch (error) {
                console.error('Error in removeSkin:', error);
            }
        },
        handleImageError(e) {
            e.target.src = './img/items/WEAPON_UNARMED.png';
        },
        handleSkinImageError(e) {
            e.target.src = './img/items/WEAPON_UNARMED.png';
        }
    },
    mounted() {
        try {
            window.addEventListener('message', (event) => {
                try {
                    if (event.data.action === 'openWeaponSkinMenu') {
                        this.openSkinMenu(event.data.data);
                    } else if (event.data.action === 'SET_DISPLAY') {
                        if (event.data.data.state === false) {
                            this.closeSkinMenu();
                        }
                    }
                } catch (error) {
                    console.error('Error handling message:', error);
                }
            });

            document.onkeyup = function (data) {
                if (data.which == 84) {
                    $.post('https://nc_inventory/CloseUI', JSON.stringify({}));
                }
            };
        } catch (error) {
            console.error('Error in mounted:', error);
        }
    },
}).mount('#nc-inventory-content');