Config = {}

Config['ResetTime'] = '00:05:00' -- Time to reset the duty time

Config.Duty = {
    {
        Onduty = 'police',
        Offduty = 'unemployed',
        Position = vector3(453.3347, -996.4365, 31.1393),
        Marker = {
            Id = 27,
        },
        -- Vault identifier for duty equipment. The id corresponds to the
        -- `_id` column in the `nc_vault` table. Vault `3` is the dedicated
        -- Police Department locker used to store seized duty items.
        Vault = 3,
        Items = {
            'radio_job',
            'fixkit_job',
            'painkiller_job',
            'aed_job',
            'armor_job',
            'snockle_job'
        }
    },

    -- {
    --     Onduty = 'ambulance',
    --     Offduty = 'offambulance',
    --     Position = vector3(1132.2793, -1539.6833, 35.4188 - 0.97),
    --     Marker = {
    --         Id = 27,
    --     },
    --     -- Vault identifier for medical equipment. Replace `4` with the
    --     -- appropriate locker id from the `nc_vault` table if different.
    --     Vault = 4,
    --     Items = {
    --         'radio_job',
    --         'fixkit_job',
    --         'painkiller_job',
    --         'aed_job',
    --         'armor_job',
    --         'snockle_job'
    --     }
    -- },
    
    -- {
    --     Onduty = 'ambulance',
    --     Offduty = 'offambulance',
    --     Position = vector3(1132.2793, -1539.6833, 35.4188-0.97),
    --     Marker = {
    --         Id = 27,
    --     }
    -- },

    {
        Onduty = 'council',
        Offduty = 'offcouncil',
        Position = vector3(-420.6002807617188, 1040.666259765625, 329.1094970703125-0.97),
        Marker = {
            Id = 27,
        }
    },
}

Config.Discord = {
    ['police'] = {
        log = 'https://discord.com/api/webhooks/1242591307793305693/GLTwpiD9q9Pb9zfIPAbbJVX5jvvht8XkBmil63ATGlWEdZc6GcZ-Xe2EVzbbIdd-DviG',
        label = 'Police'
    },
    ['ambulance'] = {
        log = 'https://discord.com/api/webhooks/1242591358510956614/eC9u_Rw4BU6aKmEdG4s_NYWSfB_S_9IDWIK7cYjHIpMOaERY3THBkR4Ycmj2Aae7NIrB',
        label = 'Ambulance'
    },
    ['council'] = {
        log = 'https://discord.com/api/webhooks/1336021222835748975/IdLw_Ib0cro_kXPf30h5GXR6BW0oy-cIOd82lQmEuPetYC7YBwndl8OplVJqtca0OvD5',
        label = 'Council'
    }
}

Config["discord_template"] = [[
# เวลาเข้างานประจำสัปดาห์

%s
]]