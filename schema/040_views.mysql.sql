-- Auto-generated from schema-views-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  two_factor

-- Contract view for [two_factor]
-- Exposes secret/recovery blobs with hex helpers for troubleshooting.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_two_factor AS
SELECT
  user_id,
  `method`,
  secret,
  CAST(UPPER(SHA2(secret, 256)) AS CHAR(64)) AS secret_hex,
  recovery_codes_enc,
  CAST(UPPER(SHA2(recovery_codes_enc, 256)) AS CHAR(64)) AS recovery_codes_enc_hex,
  hotp_counter,
  enabled,
  created_at,
  version,
  last_used_at
FROM two_factor;
