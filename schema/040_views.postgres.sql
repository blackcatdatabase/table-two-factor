-- Auto-generated from schema-views-postgres.yaml (map@sha1:5C6FE96DC2067A978A357A1DCB8631B46C71D429)
-- engine: postgres
-- table:  two_factor

-- Contract view for [two_factor]
-- Exposes secret/recovery blobs with hex helpers for troubleshooting.
CREATE OR REPLACE VIEW vw_two_factor AS
SELECT
  user_id,
  method,
  secret,
  UPPER(encode(digest(secret,'sha256'),'hex')) AS secret_hex,
  recovery_codes_enc,
  UPPER(encode(digest(recovery_codes_enc,'sha256'),'hex')) AS recovery_codes_enc_hex,
  hotp_counter,
  enabled,
  created_at,
  version,
  last_used_at
FROM two_factor;
