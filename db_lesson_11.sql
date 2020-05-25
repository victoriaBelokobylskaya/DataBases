-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products 
-- в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и 
-- содержимое поля name.
DROP TABLE IF EXISTS logs;

CREATE TABLE logs (
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME DEFAULT NOW(),
	table_name CHAR (100),
	id_key INT  UNSIGNED,
	name CHAR(200)) ENGINE = ARCHIVE;

DELIMITER //
DROP TRIGGER IF EXISTS create_logs_user_insert//
CREATE TRIGGER create_logs_user_insert AFTER INSERT ON users
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (created_at,table_name, id_key, name) VALUES (NOW(), 'users', NEW.id, NEW.name);
END //

DELIMITER //
DROP TRIGGER IF EXISTS create_logs_products_insert//
CREATE TRIGGER create_logs_products_insert AFTER INSERT ON products
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (created_at,table_name, id_key, name) VALUES (NOW(), 'products', NEW.id, NEW.name);
END //



DELIMITER //
DROP TRIGGER IF EXISTS create_logs_catalogs_insert//
CREATE TRIGGER create_logs_catalogs_insert AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (created_at,table_name, id_key, name) VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END //

DELIMITER ;

INSERT INTO users (id,name,birthday,created_at, updated_at,month) VALUES 
('1','Геннадий','1989-08-17', NOW(),NOW(),'August');

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 6000.00, 1);

INSERT INTO catalogs (name) VALUES ('Комплектующие');
 
SELECT * FROM logs;


-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
DELIMITER //
CREATE PROCEDURE insert_users (IN value INT)  
BEGIN
DECLARE counter INT DEFAULT 0;
DECLARE num INT;
DECLARE random_name CHAR(4);
SET num = value;
    WHILE (counter < num) DO
        SET counter = counter + 1;
       	SET random_name =  (select concat(
			char(round(rand()*25)+65),
			char(round(rand()*25)+97),
			char(round(rand()*25)+97),
			char(round(rand()*25)+97)
			));
		INSERT INTO users (name) VALUES (random_name);	 
    END WHILE;
END//

CALL insert_users(1000000);  
