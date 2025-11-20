<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – two_factor

Second factor configuration per user/method.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| user_id | BIGINT | NO | — | User (FK users.id). |  |
| method | VARCHAR(50) | NO | — | 2FA method key (e.g., totp, hotp, webauthn). |  |
| secret | BYTEA | YES | — | Shared secret (encrypted/encoded). | PII: encrypted |
| recovery_codes_enc | BYTEA | YES | — | Encrypted recovery codes. | PII: encrypted |
| hotp_counter | BIGINT | YES | — | HOTP counter (if HOTP). |  |
| enabled | BOOLEAN | NO | FALSE | Whether method is enabled. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| version | INTEGER | NO | 0 |  |  |
| last_used_at | TIMESTAMPTZ(6) | YES | — | Last successful use (UTC). |  |