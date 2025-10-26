-- Auto-generated from schema-views-postgres.psd1 (map@38d5403)
-- engine: postgres
-- table:  two_factor
-- Contract view for [two_factor]
-- Hides secret and recovery_codes_enc; keeps method and state.
CREATE OR REPLACE VIEW vw_two_factor AS
SELECT
  user_id,
  method,
  hotp_counter,
  enabled,
  created_at,
  last_used_at
FROM two_factor;
