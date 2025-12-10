# two_factor

Second factor configuration per user/method.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| last_used_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Last successful use (UTC). |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| hotp_counter | BIGINT | YES |  | HOTP counter (if HOTP). |
| method | VARCHAR(50) | NO |  | 2FA method key (e.g., totp, hotp, webauthn). |
| enabled | BOOLEAN | NO | FALSE | Whether method is enabled. |
| recovery_codes_enc | mysql: LONGBLOB / postgres: BYTEA | YES |  | Encrypted recovery codes. |
| secret | mysql: VARBINARY(255) / postgres: BYTEA | YES |  | Shared secret (encrypted/encoded). |
| user_id | BIGINT | NO |  | User (FK users.id). |

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
