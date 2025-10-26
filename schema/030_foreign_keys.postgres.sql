-- Auto-generated from schema-map-postgres.psd1 (map@38d5403)
-- engine: postgres
-- table:  two_factor
ALTER TABLE two_factor ADD CONSTRAINT fk_two_factor_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
