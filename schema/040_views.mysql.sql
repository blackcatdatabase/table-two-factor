-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  two_factor
-- Contract view for [two_factor]
-- Hides secret and recovery_codes_enc; keeps method and state.
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_two_factor AS
SELECT
  user_id,
  method,
  hotp_counter,
  enabled,
  created_at,
  last_used_at
FROM two_factor;
