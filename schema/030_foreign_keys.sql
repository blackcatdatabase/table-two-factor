-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: two_factor
ALTER TABLE two_factor ADD CONSTRAINT fk_two_factor_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
