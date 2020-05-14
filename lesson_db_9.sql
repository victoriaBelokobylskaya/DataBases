-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

SET AUTOCOMMIT=0;
START TRANSACTION;

SELECT @name_tmp := (SELECT name FROM shop.users WHERE id = 1);
INSERT INTO sample.users (name) VALUES (@name_tmp);	
DELETE FROM shop.users WHERE id = 1; 
COMMIT;
SET AUTOCOMMIT=1;

SELECT * FROM sample.users;
TRUNCATE TABLE sample.users;
SELECT * FROM shop.users;

INSERT INTO shop.users (id,name,birthday,created_at, updated_at,month) VALUES ('1','Геннадий','1989-08-17','2020-05-01 01:51:43',
																				'2020-05-01 01:51:43','August');


-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products и 
-- соответствующее название каталога name из таблицы catalogs.

CREATE OR REPLACE VIEW prod_cat AS SELECT products.name prod_name, 
										   catalogs.name cat_name 
								FROM products, catalogs
								WHERE products.catalog_id = catalogs.id;
								
SELECT * FROM prod_cat;								


-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу 
-- "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER //

DROP FUNCTION IF EXISTS hello //
CREATE FUNCTION hello()
RETURNS TEXT NOT DETERMINISTIC
BEGIN
	DECLARE time_now,time_06,time_11,time_12,time_17, time_18,time_23,time_00,time_05 TIME;
	DECLARE greeting TEXT;
	SET time_now = DATE_FORMAT(NOW(), '%H:%i');
	SET time_06 = (SELECT STR_TO_DATE('0600','%H%i'));
    SET time_11 = (SELECT STR_TO_DATE('1159','%H%i'));
    SET time_12 = (SELECT STR_TO_DATE('1200','%H%i'));
    SET time_17 = (SELECT STR_TO_DATE('1759','%H%i'));
    SET time_18 = (SELECT STR_TO_DATE('1800','%H%i'));
    SET time_23 = (SELECT STR_TO_DATE('2359','%H%i'));
    SET time_00 = (SELECT STR_TO_DATE('0000','%H%i'));
    SET time_05 = (SELECT STR_TO_DATE('0559','%H%i'));
   
	if  (time_now BETWEEN time_06 AND time_11) THEN 
		SET greeting = 'Доброе утро!';
	elseif (time_now BETWEEN time_12 AND time_17) THEN 
		SET greeting = 'Добрый день!';
	elseif (time_now BETWEEN time_18 AND time_23) THEN 
		SET greeting = 'Добрый вечер!';	
	elseif (time_now BETWEEN time_00 AND time_05) THEN 
		SET greeting = 'Доброй ночи!';	
	else 
		SET greeting = 'Ошибка в формате времени!';
	end if;
	RETURN greeting;	
END //

DELIMITER ;
SELECT hello();

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное 
-- значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //
DROP TRIGGER IF EXISTS check_name_decsription_insert//
CREATE TRIGGER check_name_decsription_insert BEFORE INSERT ON products
FOR EACH ROW 
BEGIN 
	IF (NEW.name IS NULL AND NEW.description IS NULL) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT canceled';
	ELSE
		SET NEW.name = COALESCE(NEW.name, NEW.description);
		SET NEW.description = COALESCE(NEW.description, NEW.name); 
	END IF;
END //

DROP TRIGGER IF EXISTS check_name_decsription_update//
CREATE TRIGGER check_name_decsription_update BEFORE UPDATE ON products
FOR EACH ROW 
BEGIN 
	IF (NEW.name IS NULL AND NEW.description IS NULL AND OLD.name IS NULL AND OLD.description IS NULL) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE canceled';
	ELSE
		SET NEW.name = COALESCE(NEW.name, NEW.description, OLD.name);
		SET NEW.description = COALESCE(NEW.description, NEW.name, OLD.description); 
	END IF;
END //


SELECT * FROM products;
DELIMITER ;

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  (Intel Core i7, NULL, 6000.00, 1);

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  (NULL, 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 6000.00, 1);

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  (NULL, NULL, 1500.00, 1);

 UPDATE products SET description = 'Процессор для настольных персональных компьютеров' WHERE id = 10;



-- 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.
DELIMITER //

DROP FUNCTION IF EXISTS FIBONACCI //
CREATE FUNCTION FIBONACCI(num INT)
RETURNS INT NOT DETERMINISTIC
BEGIN
	DECLARE i,x,y INT DEFAULT 1;
	WHILE i < num DO
		SET y = x + y;
	   	SET	x = y - x;
		SET i = i + 1;
	END WHILE;
	RETURN x;	
END//
DELIMITER ;

SELECT FIBONACCI(10); 


