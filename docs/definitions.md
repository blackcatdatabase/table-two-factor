# two_factor

Second factor configuration per user/method.

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| user_id | BIGINT | NO |  | User (FK users.id). |  |
| method | VARCHAR(50) | NO |  | 2FA method key (e.g., totp, hotp, webauthn). |  |
| secret | mysql: VARBINARY(255) / postgres: BYTEA | YES |  | Shared secret (encrypted/encoded). | `encrypt`<br/>ctx: `db.vault.two_factor.secret`<br/>kv: `secret_key_version` |
| secret_key_version | VARCHAR(64) | YES |  | Key version for secret. | key version for: `secret` |
| recovery_codes_enc | mysql: LONGBLOB / postgres: BYTEA | YES |  | Encrypted recovery codes. | `encrypt`<br/>ctx: `db.vault.two_factor.recovery_codes_enc`<br/>kv: `recovery_codes_enc_key_version` |
| recovery_codes_enc_key_version | VARCHAR(64) | YES |  | Key version for recovery_codes_enc. | key version for: `recovery_codes_enc` |
| hotp_counter | BIGINT | YES |  | HOTP counter (if HOTP). |  |
| enabled | BOOLEAN | NO | FALSE | Whether method is enabled. |  |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| version | mysql: INT / postgres: INTEGER | NO | 0 | Optimistic locking version counter. |  |
| last_used_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Last successful use (UTC). |  |

## Engine Details

### mysql

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_two_factor_user | user_id | users(id) | ON DELETE CASCADE |

### postgres

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_two_factor_user | user_id | users(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_two_factor | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_two_factor | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
