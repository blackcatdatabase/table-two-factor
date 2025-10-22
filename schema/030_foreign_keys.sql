-- Auto-generated from schema-map.psd1 (map@6cefe8e)
-- table: two_factor
ALTER TABLE two_factor ADD CONSTRAINT fk_two_factor_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
