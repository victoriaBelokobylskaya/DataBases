-- таблица пользователей
CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	birthday VARCHAR(255),
	created_at VARCHAR(255),
	updated_at VARCHAR(255)
);
ALTER TABLE users MODIFY birthday VARCHAR(255);
DESC users;

INSERT INTO users (name, birthday) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
	
		
	
SELECT * FROM users;


-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем 
UPDATE users SET created_at = NOW(), updated_at = NOW();

-- 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR 
-- и в них долгое время помещались значения в формате "20.10.2017 8:10". 
-- Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.

ALTER TABLE users MODIFY created_at DATETIME;
ALTER TABLE users MODIFY updated_at DATETIME;

-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
-- если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
-- чтобы они выводились в порядке увеличения значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.

CREATE TABLE storehouses_products (
		id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
		value INT);
	
INSERT INTO storehouses_products (value) VALUES ('1'), ('30'), ('500'), ('0'), ('2500'), ('0');

SELECT id, value FROM storehouses_products ORDER BY value DESC, id;


-- 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
-- Месяцы заданы в виде списка английских названий ('may', 'august')

ALTER TABLE users ADD month VARCHAR(50);

UPDATE users SET month = MONTHNAME(birthday);
SELECT * FROM users;
SELECT name,birthday,month FROM users WHERE month RLIKE 'May|August';


-- 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
-- Отсортируйте записи в порядке, заданном в списке IN.


CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
 
 
 SELECT * FROM catalogs WHERE id IN (5, 1, 2);  
-- не придумала как это сделать


-- 1. Подсчитайте средний возраст пользователей в таблице users
SELECT FLOOR(AVG(TIMESTAMPDIFF(YEAR,birthday, NOW()))) as avg_age FROM users;  


-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.

SELECT * FROM users;

SELECT COUNT(*), DAYNAME(CONCAT(YEAR(NOW()),'-', SUBSTRING(birthday,6,5))) AS week_day FROM users GROUP BY week_day;

-- 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы
TRUNCATE storehouses_products;
SELECT * FROM storehouses_products;
INSERT INTO storehouses_products (value) VALUES ('1'), ('2'), ('3'), ('4'), ('5');

SELECT EXP(SUM(LOG(value))) FROM storehouses_products;
