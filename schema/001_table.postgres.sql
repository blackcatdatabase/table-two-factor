-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  two_factor
CREATE TABLE IF NOT EXISTS two_factor (
  user_id BIGINT NOT NULL,
  method VARCHAR(50) NOT NULL,
  secret BYTEA NULL,
  recovery_codes_enc BYTEA NULL,
  hotp_counter BIGINT NULL,
  enabled BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  last_used_at TIMESTAMPTZ(6) NULL,
  PRIMARY KEY (user_id, method)
);
