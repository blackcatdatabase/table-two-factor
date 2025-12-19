-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  two_factor

CREATE TABLE IF NOT EXISTS two_factor (
  user_id BIGINT NOT NULL,
  method VARCHAR(50) NOT NULL,
  secret BYTEA NULL,
  secret_key_version VARCHAR(64) NULL,
  recovery_codes_enc BYTEA NULL,
  recovery_codes_enc_key_version VARCHAR(64) NULL,
  hotp_counter BIGINT NULL,
  enabled BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  version INTEGER NOT NULL DEFAULT 0,
  CONSTRAINT chk_two_factor_version CHECK (version >= 0),
  last_used_at TIMESTAMPTZ(6) NULL,
  PRIMARY KEY (user_id, method),
  CONSTRAINT chk_two_factor_hotp_counter CHECK (hotp_counter IS NULL OR hotp_counter >= 0),
  CONSTRAINT chk_two_factor_method CHECK (method IN ('totp','hotp','webauthn','sms','email'))
);
