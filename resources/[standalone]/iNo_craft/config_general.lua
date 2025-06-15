Config = {}
-- Framework ของท่าน
Config['framework_client'] = 'esx:getSharedObject' 
Config['framework_server'] = 'esx:getSharedObject' 

--Hanler ของสคริปเมื่อเสียชีวิต
Config['onPlayerDeath'] = 'esx:onPlayerDeath'

-- Delay ในการกดปุ่มคราฟแต่ละครั้ง
Config['Delay_click'] = 2000    

-- Delay การเปิดโต๊ะคราฟหากเปิดไม่สำเร็จ เพื่อป้องกันการแสปม
Config['Delay_open'] = 2000    


-- ข้อความแสดงบน Title โต๊ะคราฟ
Config['Title'] = 'iNo DEV CRAFTING'


-- สีของโต๊ะคราฟ  
-- [[main]] = สีหลัก
-- [[main_2]] = สีรอง(จากสีหลักไล่ไปสีรองถ้าไม่อยากให้ไล่สีใส่เหมือนสีหลัก)
-- [['main_bg']] = สีพื้นหลัง
-- [['main_list']] = สีพื้นหลังของเมนูไอเทมด้านซ้าย

Config['color'] = {
    ['main'] = '#ff5f8f',
    ['main_2'] = '#ff5f8f',
    ['main_bg'] = 'rgba(16, 16, 16, 0.863)',
    ['main_list'] = 'rgba(26, 26, 26, 0.863)',

}


-- ตั้งค่าเสียงต่างๆ
--  ['distance'] => ระยะการได้ยินเสียงเมื่อคราฟสำเร็จและผิดพลา่ด
--  ['success_filename']  => ไฟล์เสียงและนามสกุลของเสียงที่สำเร็จ
--  ['fail_filename']   => ไฟล์เสียงและนามสกุลของเสียงที่ผิดพลาด
--  ['alert_filename']  => ไฟล์เสียงและนามสกุลของเสียงที่แจ้งเตือน 
-- หมายเหตุต้องนำไฟล์เสียงมาใส่ในที่อยู่ iNo_craft/ui/sound/  เท่านั้น
Config['sound'] = {
    ['distance'] = 12,
    ['success_filename'] = 'Success.ogg',
    ['fail_filename'] = 'Failed.ogg',
    ['alert_filename'] = 'Alert.ogg',
    ['loadling_filename'] = 'loading.ogg',
}


-- เวลา่แสดงผลUI ตอนคราฟเสร็จ FAIL SUCCESS
Config['Duration_result'] = 2


-- ดึงค่ารูปภาพจากกระเป๋า
Config['item_path'] = 'nui://nc_inventory/html/img/items/'


-- สำหรับประเทศที่เป็น Limit เช็คไอเทมผลิตภัณฑ์ว่าเกินไหม ถ้าไม่ต้องการให้เช็คประเป็น false 
Config['limit_check'] = true 
Config['maxcount'] = 100 
Config['defectcount'] = 1 


-- หากค่าเป็น True เมื่อมีถูกผลักออกจากระยะ distance_action ของโต๊ะคราฟ จะสั่งปิด UI โค๊ะคราฟ
Config['out_action_disable'] = true  


-- หากค่าเป็น true จะสามารถเปิดโต๊ะคราฟบนรถได้
Config['open_inVehicle'] = false 

-- ข้อความแสดงบน UI เมื่อมีการแจ้งเตือน
-- success = เมื่อคราฟไอเทมสำเร็จ
-- fail = เมื่อคราฟไอเทมไม่สำเร็จ
-- over_limit = เมื่อไอเทมผลิตภัณฑ์เกินขีดจำกัด
-- no_item = เมื่อวัตถุกิบที่ต้องการไม่เพียงพอ
Config['notification_text'] = {
    ['success'] = 'ติดแล้วง่ายไปป่าว!',
    ['fail'] = 'เสียใจด้วยนะแงT^T',
    ['over_limit'] = 'คราฟไม่ได้น่ะเกิน Limit',
    ['no_item'] = 'วัตถุดิบของคุณไม่พอนะ'
}


-- Animation ในการคราฟ 
Config['animation'] = {
    ['Dict'] = 'anim@amb@business@coc@coc_unpack_cut_left@',
    ['Anim'] = 'cut_cough_coccutter'
}


