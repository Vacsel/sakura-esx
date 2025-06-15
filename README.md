# sakura-esx
fivem server (esx-framework + ox_lib)

### Duty system

The `esx_duty` resource stores confiscated items while players are off duty.
Items are kept in an `nc_vault` container referenced by the `Vault` id in
`config.lua`. The vault id corresponds to the `_id` column of the `nc_vault`
database table. For example, vault `3` is the Police Department locker used to
store duty equipment. Player item amounts are saved to the `user_offduty_items`
table so they can be restored correctly when going back on duty.
