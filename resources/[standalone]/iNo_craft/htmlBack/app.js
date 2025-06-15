const app = Vue.createApp({
    data() {
        return {
            display: false,

            disableControl: false,

            failArea: false,
            successArea: false,
            alertDisplay: false,
            errorDisplay: false,

            failText: '',
            successText: '',
            alertText: '',
            errorText: '',

            imagePath: 'nui://nc_inventory/html/img/items/',

            selectType: '-1',
            selectItemIndex: 0,

            items: {},

            count: 1,
            craftingProgress: 0,

            money: 0,
            black_money: 0,
        }
    },
    computed: {
        itemList() {
            return this.items[this.selectType]?.Item || [];
        },
        itemSelect() {
            // this.count = 1;
            return this.itemList[this.selectItemIndex];
        },
        itemNeeds() {
            return this.itemList[this.selectItemIndex]?.itemNeed || [];
        },
    },
    methods: {
        blockDecimal(evt) {
            const invalid = ['.', ',', 'e', '+', '-'];
            if (invalid.includes(evt.key)) evt.preventDefault();
        },
        sanitizeCount() {
            if (!Number.isInteger(this.count) || this.count < 1) this.count = 1;
        
            if (this.count > this.itemSelect.maxCount)
              this.count = this.itemSelect.maxCount;
        },
        updateSelectType(targetSelectType) {
            app.selectItemIndex = 0;
            app.selectType = targetSelectType;
        },
        decreaseCount() {
            if (this.count <= 1) {
                this.count = 1;
                return;
            }

            this.count--;
        },
        increaseCount() {
            if (this.count >= this.itemSelect.maxCount) {
                this.count = this.itemSelect.maxCount;
                return;
            }

            this.count++;
        },
        craftItem() {
           /*  console.log(this.count); */
            navigator.sendBeacon('https://iNo_craft/craftcheck', JSON.stringify({
                type: this.selectType,
                item: this.selectItemIndex,
                amount: this.count
            }))
        }
    },
}).mount('.wrapper');

window.addEventListener('message', ({ data }) => {
    // Finish
    if (data.type == 'setting') {
        app.imagePath = data.path;
    }

    // Finish
    if (data.type == 'crafting') {
        app.display = data.bool;
       
        if (data.bool) {
            app.craftingProgress = 0;
        }
        let audio2 = new Audio(`./sound/${data.loadlingName}`);
        audio2.volume = 0.15;
        audio2.currentTime = 0;
        audio2.addEventListener('ended', () => audio = null);
        audio2.play().catch(() => { });
    }

    if (data.type == 'playSound') {
        let audioFile = data.result === 'success' ? data.successName : data.result === 'fail' ? data.failName : data.alertName;
        let audio = new Audio(`./sound/${audioFile}`);
        audio.volume = 0.15;
        audio.currentTime = 0;
        audio.addEventListener('ended', () => audio = null);
        audio.play().catch(() => { });
    }

    // Finish
    if (data.type == 'disable') {
        app.disableControl = data.bool;
        if (app.disableControl) {
            document.querySelector('.display').style.pointerEvents = 'none';
        } else {
            document.querySelector('.display').style.pointerEvents = 'all';
        }
    }

    // Finish
    if (data.type == 'result') {
       /*  console.log( data.result) */
        if (data.result == 'success') {
            app.successArea = true;
            app.successText = data.text;

            setTimeout(() => {
                app.successArea = false;
            }, data.time);
        } else if (data.result == 'error') {
            app.errorDisplay = true;
            app.errorText = data.text;

            setTimeout(() => {
                app.errorDisplay = false;
            }, data.time);
        } else if (data.result == 'alert') {
            app.alertDisplay = true;
            app.alertText = data.text;

            setTimeout(() => {
                app.alertDisplay = false;
            }, data.time);
        } else if (data.result == 'fail') {
            app.failArea = true;
            app.failText = data.text;

            setTimeout(() => {
                app.failArea = false;
            }, data.time);
        }
        // app.display = false;
        // navigator.sendBeacon('https://iNo_craft/leaveCrafting');
    }

    // Finish
    if (data.type == 'load') {
        app.craftingProgress = data.per;
    }

    if (data.type == 'reloadMat') {
        app.items = data.ItemList;
        // app.selectType = Object.keys(data.ItemList)[0];
        if (typeof data.money !== 'undefined') app.money = data.money;
        if (typeof data.black_money !== 'undefined') app.black_money = data.black_money;
    }

    if (data.type == 'showDisplay') {
        if (data.showDisplay) {
            app.display = true;
            app.items = data.ItemList || {};
            app.selectType = Object.keys(data.ItemList || {})[0] || '-1';
            app.selectItemIndex = 0;  // รีเซ็ต index
            app.count = 1; // รีเซ็ตจำนวน crafting
            if (typeof data.money !== 'undefined') app.money = data.money;
            if (typeof data.black_money !== 'undefined') app.black_money = data.black_money;
        } else {
            app.display = false;
        }
    }
    
});

window.addEventListener('keydown', ({ key }) => {
    if (key === 'Escape' && !app.disableControl) {
        app.display = false;
        navigator.sendBeacon('https://iNo_craft/leaveCrafting');
    }
})
