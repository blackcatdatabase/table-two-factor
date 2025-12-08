# two_factor

Second factor configuration per user/method.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| enabled | BOOLEAN | NO | FALSE | Whether method is enabled. |
| hotp_counter | BIGINT | YES |  | HOTP counter (if HOTP). |
| last_used_at | TIMESTAMPTZ(6) | YES |  | Last successful use (UTC). |
| method | VARCHAR(50) | NO |  | 2FA method key (e.g., totp, hotp, webauthn). |
| recovery_codes_enc | BYTEA | YES |  | Encrypted recovery codes. |
| secret | BYTEA | YES |  | Shared secret (encrypted/encoded). |
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
| vw_two_factor | mysql | algorithm=MERGE, security=INVOKER | [packages\two-factor\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/two-factor/schema/040_views.mysql.sql) |
| vw_two_factor | postgres |  | [packages\two-factor\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/two-factor/schema/040_views.postgres.sql) |
