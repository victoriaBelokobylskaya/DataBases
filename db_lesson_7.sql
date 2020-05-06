-- дз к 7 уроку

-- Задание 1  
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

DESC catalogs;
SELECT * FROM users;
SELECT * FROM orders;

INSERT INTO orders (user_id) VALUES ('8'), ('6'), ('8'), ('1'), ('5');

SELECT DISTINCT user_id 
FROM users 
INNER JOIN orders 
WHERE users.id = orders.user_id;

-- Задание 2

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  description TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);
 
 SELECT p.name, 
 		p.catalog_id, 
 		c.id, 
 		c.name f
 FROM products AS p 
 JOIN catalogs as c ON p.catalog_id = c.id;

-- Задание 3

CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
	fl_from VARCHAR(255),
	fl_to VARCHAR(255)
);

INSERT INTO flights (fl_from, fl_to) VALUES 
	('moscow','omsk'),
	('novgorod','kazan'),
	('irkutsk','moscow'),
	('omsk','irkutsk'),
	('moscow','kazan');

SELECT * FROM cities;

CREATE TABLE cities (
	lable VARCHAR(255),
	name VARCHAR(255)
);


INSERT INTO cities (lable, name) VALUES 
	('moscow','москва'),
	('novgorod','новгород'),
	('irkutsk','иркутск'),
	('omsk','омск'),
	('kazan','казань');


SELECT 
	c.name as flight_from,
  	ct.name as flight_to
FROM flights as f
LEFT JOIN cities as c on c.lable = f.fl_from
LEFT JOIN cities as ct on ct.lable = f.fl_to;
