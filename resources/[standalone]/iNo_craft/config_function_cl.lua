-- [[ CLIENT FUNCTION ]] --


-- จำนวนเงินไม่เพียงพอ ส่งค่า type 2 แบบ 
-- 1) money = จำนวนเงินเขียวไม่เพียงพอ 2) black_money = จำนวนเงินแดงไม่เพียงพอ
Config['NO_MONEY'] = function(type)
 --   print('NO '..type)
end


-- วัตถุุดิบจำเป็นไม่เพียงพอ 
-- ค่าจะส่งมาเมื่อวัตถุุดิบจำเป็นไม่เพียงพอ
Config['NO_EQUIPMENT'] = function()
  --  print('NO EQUIPMENT')
end 


-- จำนวนส่วนผสมไม่เพียงพอ 
-- ค่าจะส่งมาเมื่อวัตถุดิบหลักไม่พอในการคราฟ
Config['NO_MATERIAL'] = function()
 --   print('NO MATERIAL')
end


-- ทำงานเมื่อ ผลิตภัุณฑ์เกิน Limit 
Config['OUT_LIMIT'] = function()
  --  print('OUT LIMIT')
end 


-- ทำงานเมื่อกดปุ่มคราฟแล้วติด Delay Time
Config['DELAY_NOTIFICATION'] = function()
  --  print('NOW DELAY PLEASE WAIT')
end 


--ทำงานเมื่อผู้เล่นอยู่บนรถและไม่สามารถเปิดโต๊ะคราฟได้
Config['CANTOPEN_ONVEHICLE'] = function()
  -- print('CANT OPEN ON VEHICLE')
end 


-- Labelแสดงผลไอเทมบน UI 
Config['label_item'] = function (label,count)
    local LabelUI = label.. ' x'..count..''
    return LabelUI
end


-- ฟังค์ชั่นนี้ทำงานเมื่อผู้เล่นจะเปิดโต๊ะคราฟ หากให้เปิดสำเร็จ ตั้งให้ return เป็น true 
Config['actionWillopentable'] = function(tableName)
    return true 
end 


-- ฟังค์ชั่นนี้ทำงานเมื่อเช็คJobไม่สำเร็จ
Config['job_not_allow'] = function()
  --  print('Your job cant use this crafting table!')
end 


-- Drawtext3D เมื่อเข้าใกล้โต๊ะคราฟ
Config['DrawText3D'] = function(text,coords,text2)
  fontID = RegisterFontId("Sarabun")
  local onScreen, _x, _y = World3dToScreen2d(coords.x,coords.y,coords.z+0.5)
  local p = GetGameplayCamCoords()
  local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, coords.x,coords.y,coords.z+0.5, 1)
  local scale = (1 / distance) * 3
  local fov = (1 / GetGameplayCamFov()) * 100
  local scale = scale * fov
  if onScreen then
      SetTextScale(0.0*scale, 0.65*scale)
      SetTextFont(fontID)
      SetTextProportional(1)
      SetTextColour(255, 255, 255, 255)
      SetTextDropshadow(0, 0, 0, 0, 255)
      SetTextEdge(2, 0, 0, 0, 150) 
      SetTextDropShadow()
      SetTextOutline()
      SetTextEntry("STRING")
      SetTextCentre(1)
      AddTextComponentString(text2..'\n'..text)
      DrawText(_x,_y)
  end

  -- local onScreen, _x, _y = World3dToScreen2d(coords.x,coords.y,coords.z+0.70)
  -- local p = GetGameplayCamCoords()
  -- local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, coords.x,coords.y,coords.z+0.5, 1)
  -- local scale = (1 / distance) * 3
  -- local fov = (1 / GetGameplayCamFov()) * 100
  -- local scale = scale * fov
  -- if onScreen then
  --     SetTextScale(0.0*scale, 0.65*scale)
  --     SetTextFont(4)
  --     SetTextProportional(1)
  --     SetTextColour(255, 255, 255, 255)
  --     SetTextDropshadow(0, 0, 0, 0, 255)
  --     SetTextEdge(2, 0, 0, 0, 150) 
  --     SetTextDropShadow()
  --     SetTextOutline()
  --     SetTextEntry("STRING")
  --     SetTextCentre(1)
  --     AddTextComponentString(text2)
  --     DrawText(_x,_y)
  -- end

       
end 


-- Help Notification 
Config['HelpNotification'] = function(text)
    -- ESX.ShowHelpNotification('PRESS ~INPUT_PICKUP~ To open Craft')
    -- exports["nextra_textui"]:ShowHelpNotification('PRESS E To open Craft')

end 


-- [[ Function นี้ทำงานหลังฝั่ง SERVER ส่งค่ากลับมายังฝั่ง CLIENT สำเร็จ+++++]]
-- ค่าตัวแปรที่ส้งมาหลังจากสุ่มสำเร็จ
----- result ผลลัพธ์จากการคราฟ แสดงผลเป็น success และ fail เท่านั้น
----- typeItem ชนิดของไอเทมที่คราฟได้ มี 4 ชนิด คือ item , money , black_money , weapon 
----- item ไอเทมที่ทำการคราฟ
----- amount จำนวนไอเทมที่ผู้เล่นต้องคราฟ (ค่าที่ผู้เล่น Input มา)
----- count จำนวนไอเทมที่คราฟได้แต่ละครั้ง (จำนวนที่สิ่งที่ผู้เล่นคราฟได้ทั้งหมดเท่ากับ amount * count)
Config['action_aftercraft'] = function(result,typeItem,item,amount,count)
    -- print(result)
    -- print(typeItem)
    -- print(item)
    -- print(amount)
    -- print(count)
end 