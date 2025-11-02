-- Auto-generated from schema-map-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  two_factor
CREATE TABLE IF NOT EXISTS two_factor (
  user_id BIGINT UNSIGNED NOT NULL,
  `method` VARCHAR(50) NOT NULL,
  secret VARBINARY(255) NULL,
  recovery_codes_enc LONGBLOB NULL,
  hotp_counter BIGINT UNSIGNED NULL,
  enabled BOOLEAN NOT NULL DEFAULT FALSE,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  version INT UNSIGNED NOT NULL DEFAULT 0,
  last_used_at DATETIME(6) NULL,
  PRIMARY KEY (user_id, `method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
