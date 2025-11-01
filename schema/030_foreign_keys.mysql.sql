-- Auto-generated from schema-map-mysql.psd1 (map@c5e4097)
-- engine: mysql
-- table:  two_factor
ALTER TABLE two_factor ADD CONSTRAINT fk_two_factor_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
