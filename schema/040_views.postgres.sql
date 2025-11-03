-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
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
  version,
  last_used_at,
  UPPER(encode(secret,'hex'))::char(64)            AS secret_hex,
  UPPER(encode(recovery_codes_enc,'hex'))::char(64) AS recovery_codes_enc_hex
FROM two_factor;
