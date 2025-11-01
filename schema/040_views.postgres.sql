-- Auto-generated from schema-views-postgres.psd1 (map@c5e4097)
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
  encode(secret, 'hex')            AS secret_hex,
  encode(recovery_codes_enc, 'hex') AS recovery_codes_enc_hex
FROM two_factor;
