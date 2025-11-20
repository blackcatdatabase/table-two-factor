-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  two_factor
-- Contract view for [two_factor]
-- Exposes secret/recovery blobs with hex helpers for troubleshooting.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_two_factor AS
SELECT
  user_id,
  `method`,
  secret,
  UPPER(HEX(secret)) AS secret_hex,
  recovery_codes_enc,
  UPPER(HEX(recovery_codes_enc)) AS recovery_codes_enc_hex,
  hotp_counter,
  enabled,
  created_at,
  version,
  last_used_at
FROM two_factor;
