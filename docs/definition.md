<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – two_factor

Second factor configuration per user/method.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| user_id | BIGINT UNSIGNED | NO | — | User (FK users.id). |  |
| method | VARCHAR(50) | NO | — | 2FA method key (e.g., totp, hotp, webauthn). |  |
| secret | VARBINARY(255) | YES | — | Shared secret (encrypted/encoded). | PII: encrypted |
| recovery_codes_enc | LONGBLOB | YES | — | Encrypted recovery codes. | PII: encrypted |
| hotp_counter | BIGINT UNSIGNED | YES | — | HOTP counter (if HOTP). |  |
| enabled | BOOLEAN | NO | FALSE | Whether method is enabled. |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| last_used_at | DATETIME(6) | YES | — | Last successful use (UTC). |  |
