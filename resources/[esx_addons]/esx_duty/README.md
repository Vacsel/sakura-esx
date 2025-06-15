diff --git a/README.md b/README.md
index b5b3534db0c18660b8a6ee196f9eff99ecda6b9a..97ca06815460dc6228e903ae45229fae9c488f37 100644
--- a/README.md
+++ b/README.md
@@ -1,2 +1,11 @@
 # sakura-esx
 fivem server (esx-framework + ox_lib)
+
+### Duty system
+
+The `esx_duty` resource stores confiscated items while players are off duty.
+Items are kept in an `nc_vault` container referenced by the `Vault` id in
+`config.lua`. The vault id corresponds to the `_id` column of the `nc_vault`
+database table. For example, vault `3` is the Police Department locker used to
+store duty equipment. Player item amounts are saved to the `user_offduty_items`
+table so they can be restored correctly when going back on duty.
