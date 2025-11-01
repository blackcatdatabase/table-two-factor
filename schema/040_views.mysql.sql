-- Auto-generated from schema-views-mysql.psd1 (map@c5e4097)
-- engine: mysql
-- table:  two_factor
-- Contract view for [two_factor]
-- Hides secret and recovery_codes_enc; keeps method and state.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_two_factor AS
SELECT
  user_id,
  `method`,
  hotp_counter,
  enabled,
  created_at,
  version,
  last_used_at
FROM two_factor;
