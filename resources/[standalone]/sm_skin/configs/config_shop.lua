--[[ 
    script: Skin System & Clothe Shop
    author: SM Developer
    discord: https://discord.gg/ZbJP9wptwB
    ทางเราขอบคุณเป็นอย่างยิ่งที่ท่านได้สนับสนุนสินค้าของเรา
]]

Config = Config or {}

Config['BlipNearest'] = true -- จะโชว์ ฺBlip ที่ใกล้ตัวเรา
Config['WaitLoopBlipChek'] = 10000 -- เวลาที่ทำการเช็คว่าอยู่ใกล็จุดไหน

Config['Shop-Setting'] = {  -- การตั้งค่าทั่วไปเกี่ยวกับโหมดร้านค้า
    ['ClotheShop'] = {
        Blips = {
            sprite = 73,
            scale = 0.7,
            color = 47,
            text = '<font face="font4thai">ร้านเสื้อผ้า</font>'
        },
    },
    ['BarberShop'] = {
        Blips = {
            sprite = 71,
            scale = 0.7,
            color = 47,
            text = '<font face="font4thai">ร้านตัดผม</font>'
        },
    },
    
    ['MaskShop'] = {
        Blips = {
            sprite = 362,
            scale = 0.7,
            color = 2,
            text = 'Mask Shop'
        },
    },
    ['Locker'] = {
        Blips = {
            sprite = 1,
            scale = 1.0,
            color = 4,
            text = 'Locker'
        },
    }
}


Config['ShopPosition'] = {  
    ['ClotheShop'] = {
        Shop1 = {   -- ชื่อ index ห้ามซื้อกัน
            type = 'normal',  -- ห้ามเปลี่ยน
            zone = vector3(123.58999633789064, -219.5500030517578, 54.56000137329101), --  ตำแหน่งของ Blips และ Marker
            rad = 9.0, -- ระยะที่สามารถกด E ได้
            blip = {
                enable = true, --  (เปิด/ปิด) Blips
            },
            marker = {
                type = 1,
                size = {13.0,13.0,1.5},
                color = {255,103,223,0}
            }
        },
        Shop2 = {   -- ชื่อ index ห้ามซื้อกัน
            type = 'normal',  -- ห้ามเปลี่ยน
            zone = vector3(-167.863, -298.969, 38.733), --  ตำแหน่งของ Blips และ Marker
            rad = 12.0, -- ระยะที่สามารถกด E ได้
            blip = {
                enable = true, --  (เปิด/ปิด) Blips
            },
            marker = {
                type = 1,
                size = {13.0,13.0,1.5},
                color = {255,103,223,0}
            }
        },
        Shop3 = {   -- ชื่อ index ห้ามซื้อกัน
            type = 'normal',  -- ห้ามเปลี่ยน
            zone = vector3(76.1406, -1394.8994, 29.3762), --  ตำแหน่งของ Blips และ Marker
            rad = 8.0, -- ระยะที่สามารถกด E ได้
            blip = {
                enable = true, --  (เปิด/ปิด) Blips
            },
            marker = {
                type = 1,
                size = {13.0,13.0,1.5},
                color = {255,103,223,0}
            }
        },
        Shop4 = {   -- ชื่อ index ห้ามซื้อกัน
            type = 'normal',  -- ห้ามเปลี่ยน
            zone = vector3(424.8359, -803.8372, 29.4912), --  ตำแหน่งของ Blips และ Marker
            rad = 8.0, -- ระยะที่สามารถกด E ได้
            blip = {
                enable = false, --  (เปิด/ปิด) Blips
            },
            marker = {
                type = 1,
                size = {13.0,13.0,1.5},
                color = {255,103,223,0}
            }
        },
        Shop5 = {   -- ชื่อ index ห้ามซื้อกัน
            type = 'normal',  -- ห้ามเปลี่ยน
            zone = vector3(-1447.797, -242.461, 48.820), --  ตำแหน่งของ Blips และ Marker
            rad = 12.0, -- ระยะที่สามารถกด E ได้
            blip = {
                enable = true, --  (เปิด/ปิด) Blips
            },
            marker = {
                type = 1,
                size = {13.0,13.0,1.5},
                color = {255,103,223,0}
            }
        },
        Shop6 = {   -- ชื่อ index ห้ามซื้อกัน
            type = 'normal',  -- ห้ามเปลี่ยน
            zone = vector3(1190.609130859375, 2713.605712890625, 38.22264862060547), --  ตำแหน่งของ Blips และ Marker
            rad = 6.0, -- ระยะที่สามารถกด E ได้
            blip = {
                enable = true, --  (เปิด/ปิด) Blips
            },
            marker = {
                type = 1,
                size = {13.0,13.0,1.5},
                color = {255,103,223,0}
            }
        },
        -- Club1 = {
        --     type = 'normal',
        --     zone = vector3(-30.4910, 276.9464, 94.9524),
        --     rad = 2.0,
        --     blip = {
        --         enable = false,
        --     },
        --     marker = {
        --         type = 1,
        --         size = {1.0,1.0,1.0},
        --         color = {255,103,223,100}
        --     }
        -- },
        Shop7 = {   -- ชื่อ index ห้ามซื้อกัน
            type = 'normal',  -- ห้ามเปลี่ยน
            zone = vector3(-824.1562, -1075.3896, 11.3281), --  ตำแหน่งของ Blips และ Marker
            rad = 8.0, -- ระยะที่สามารถกด E ได้
            blip = {
                enable = false, --  (เปิด/ปิด) Blips
            },
            marker = {
                type = 1,
                size = {13.0,13.0,1.5},
                color = {255,103,223,0}
            }
        }
    },
     
    ['BarberShop'] = {
        Shop1 = {
            type = 'normal',
            zone = vector3(-32.885, -152.319, 56.076),
            rad = 6.0,
            blip = {
                enable = true,
            },
            marker = {
                type = 1,
                size = {11.0,11.0,1.5},
                color = {255,103,223,0}
            }
        },
        Shop2 = {
            type = 'normal',
            zone = vector3(1212.840, -472.921, 65.208),
            rad = 6.0,
            blip = {
                enable = true,
            },
            marker = {
                type = 1,
                size = {11.0,11.0,1.5},
                color = {255,103,223,0}
            }
        },
        Shop3 = {
            type = 'normal',
            zone = vector3(136.826, -1708.373, 28.291),
            rad = 6.0,
            blip = {
                enable = true,
            },
            marker = {
                type = 1,
                size = {11.0,11.0,1.5},
                color = {255,103,223,0}
            }
        },
        Shop4 = {
            type = 'normal',
            zone = vector3(137.0067901611328, -1707.5892333984375, 29.29162788391113),
            rad = 6.0,
            blip = {
                enable = true,
            },
            marker = {
                type = 1,
                size = {11.0,11.0,1.5},
                color = {255,103,223,0}
            }
        },
        Shop5 = {
            type = 'normal',
            zone = vector3(-1281.1044, -1117.3285, 6.9901),
            rad = 8.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {11.0,11.0,1.5},
                color = {255,103,223,0}
            }
        }
    },

    ['Locker'] = {
        Shop1 = {
            type = 'normal',
            zone = vector3(-424.9316, 1036.4474, 329.1179),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {2.0,2.0,1.5},
                color = {255,103,223,100}
            }
        },
        WeRich = {
            type = 'normal',
            zone = vector3(2235.8015, 1570.7386, 87.7869),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {2.0,2.0,0.5},
                color = {255,103,223,100}
            }
        },
        Bedict = {
            type = 'normal',
            zone = vector3(1446.8942, 1617.3824, 120.5012),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {2.0,2.0,0.5},
                color = {255,103,223,100}
            }
        },
        NST = {
            type = 'normal',
            zone = vector3(1087.0396, 1533.3995, 182.2446),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {2.0,2.0,0.5},
                color = {255,103,223,100}
            }
        },
        PSY = {
            type = 'normal',
            zone = vector3(592.0339, 730.5099, 209.5258),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {2.0,2.0,0.5},
                color = {255,103,223,100}
            }
        },
        -- Ambulance = {
        --     type = 'normal',
        --     zone = vector3(1141.3044, -1566.1666, 35.418),
        --     rad = 2.0,
        --     blip = {
        --         enable = false,
        --     },
        --     marker = {
        --         type = 1,
        --         size = {2.0,2.0,0.5},
        --         color = {255,103,223,100}
        --     }
        -- },
        Police2 = {
            type = 'normal',
            zone = vector3(1848.4163, 3690.2773, 34.2671),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {2.0,2.0,0.5},
                color = {255,103,223,100}
            }
        },
        Police = {
            type = 'normal',
            zone = vector3(450.7186, -993.2880, 30.6896),
            rad = 2.5,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {2.0,2.0,0.5},
                color = {255,103,223,100}
            }
        },
        House10 = {
            type = 'normal',
            zone = vector3(1472.0381, -1566.5272, 81.7197),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {1.0,1.0,1.0},
                color = {255,103,223,100}
            }
        },
        A211 = {
            type = 'normal',
            zone = vector3(408.9365, 11.7327, 99.6460),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {1.0,1.0,1.0},
                color = {255,103,223,100}
            }
        },
        House1 = {
            type = 'normal',
            zone = vector3(-1494.5454, -1255.2312, 11.0872),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {1.0,1.0,1.0},
                color = {255,103,223,100}
            }
        },
        House2 = {
            type = 'normal',
            zone = vector3(-2720.9158, -94.1050, 23.1991),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {1.0,1.0,1.0},
                color = {255,103,223,100}
            }
        },
        House3 = {
            type = 'normal',
            zone = vector3(-974.6537, 1113.6456, 225.2687),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {1.0,1.0,1.0},
                color = {255,103,223,100}
            }
        },
        House4 = {
            type = 'normal',
            zone = vector3(-830.1779, 1723.8895, 204.9068),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {1.0,1.0,1.0},
                color = {255,103,223,100}
            }
        },
        House9 = {
            type = 'normal',
            zone = vector3(2728.8777, 417.9292, 102.2791),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {1.0,1.0,1.0},
                color = {255,103,223,100}
            }
        },
        -- Shop3 = {
        --     type = 'normal',
        --     zone = vector3(314.9331970214844, -579.483642578125, 43.30620193481445),
        --     rad = 2.0,
        --     blip = {
        --         enable = false,
        --     },
        --     marker = {
        --       type = 1,
        --       size = {1.0,1.0,1.0},
        --       color = {255,103,223,100}
        --     }
        -- }
    },

    ['MaskShop'] = {
        Shop1 = {
            type = 'normal',
            zone = vector3(-1337.4, -1278.151, 4.870889),
            rad = 10.0,
            blip = {
                enable = true,
            },
            marker = {
                type = 1,
                size = {10.0,10.0,1.5},
                color = {255,103,223,100}
            }
        } 
    },

    ['EarsShop'] = {
        Shop1 = {
            type = 'normal',
            zone = vector3(123.8444, -208.6854, 55.55782),
            rad = 3.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {1.0, 1.0, 1.0},
                color = {255,103,223,0}
            }
        },
        Shop2 = {
            type = 'normal',
            zone = vector3(-156.79795837402344, -301.401611328125, 39.73326873779297),
            rad = 3.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {1.0, 1.0, 1.0},
                color = {255,103,223,0}
            }
        }
    },

    ['HelmetShop'] = {
        Shop1 = {
            type = 'normal',
            zone = vector3(131.3255, -211.5844, 55.55783),
            rad = 3.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 0,
                size = {1.0, 1.0, 1.0},
                color = {150, 0, 122, 100}
            }
        },
        Shop2 = {
            type = 'normal',
            zone = vector3(-157.60629272460938, -297.0874328613281, 39.73333740234375),
            rad = 3.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 1,
                size = {1.0, 1.0, 1.0},
                color = {255,103,223,0}
            }
        }
    },

    ['GlassesShop'] = {
        Shop1 = {
            type = 'normal',
            zone = vector3(123.4355, -229.5884, 55.55787),
            rad = 2.0,
            blip = {
                enable = false,
            },
            marker = {
                type = 0,
                size = {1.0, 1.0, 1.0},
                color = {150, 122, 122, 100}
            }
        },
    },


     

}
