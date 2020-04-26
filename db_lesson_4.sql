SELECT * FROM users LIMIT 10;

-- корректировка поля updated_at
UPDATE users SET updated_at = CURRENT_TIMESTAMP() WHERE created_at > updated_at;

-- корректировка поля телефон
UPDATE users SET phone = CONCAT('+7',
	'(',
	FLOOR(800 + RAND() * 100),
	')',
	FLOOR(100 + RAND() * 100),
	'-',
	FLOOR(10 + RAND() * 99),
	'-',
	FLOOR(10 + RAND() * 80));  

SELECT * FROM media_types;

SELECT * FROM media;

-- редактируем ссылку на фото
UPDATE media SET filename = CONCAT('https://dropbox/vk/photo/',
		FLOOR(10000 + RAND() * 20000),
		'.jpeg') WHERE media_type_id = 2;
	
-- редактируем ссылку на видео
UPDATE media SET filename = CONCAT('https://dropbox/vk/video/',
		FLOOR(30000 + RAND() * 40000),
		'.avi') WHERE media_type_id = 1;
	
-- редактируем ссылку на аудио
UPDATE media SET filename = CONCAT('https://dropbox/vk/audio/',
		FLOOR(50000 + RAND() * 60000),
		'.mp3') WHERE media_type_id = 3;	

	
-- редактируем metadata
UPDATE media SET metadata = CONCAT('{"owner": ',
	(SELECT CONCAT (first_name,' ',last_name) FROM users WHERE id = user_id),
	', ',
	'"date": ',
	(SELECT created_at FROM users WHERE id = user_id),
	', ',
	'"size": ',
	size,
	'}');

-- редактируем размер в зависимости от типа медиа
UPDATE media SET size = FLOOR(10 + RAND() * 50) WHERE media_type_id = 2;
UPDATE media SET size = FLOOR(200 + RAND() * 500) WHERE media_type_id = 3;
UPDATE media SET size = FLOOR(10000 + RAND() * 90000) WHERE media_type_id = 1;

			

SELECT * FROM profiles;
 
-- редактируем поле photo_id в таблице profiles,заполним поле только для тех пользователей, 
-- у которых в таблице media есть ссылка на фото.

-- выбираем id для которых тип медиа = фото и совпадают user_id
SELECT id FROM media 
INNER JOIN profiles ON (media.user_id = profiles.user_id ) 
WHERE media.media_type_id = 2;

-- обновляем таблицу профилей (не получилось сделать без JOIN)
UPDATE profiles as T1
INNER JOIN media as T2 ON (T2.user_id = T1.user_id )
SET T1.photo_id = T2.id
WHERE T2.media_type_id = 2;

-- выбираем только те профили, у которых есть фото
SELECT * FROM profiles WHERE photo_id IS NOT NULL;

SELECT * FROM friendship; 

-- корректировка поля confirmed_at
UPDATE friendship SET confirmed_at = CURRENT_TIMESTAMP() WHERE requested_at > confirmed_at;

SELECT * FROM friendship_statuses;

-- Удаляем данные
TRUNCATE friendship_statuses;

-- вставляем новые названия статусов
INSERT INTO friendship_statuses (name) VALUES 
  ('Requested'),
  ('Confirmed'),
  ('BlackList'),
  ('Rejected');
 
 
SELECT * FROM messages;

ALTER TABLE messages MODIFY COLUMN community_id INT UNSIGNED;

-- Обнулим некоторые значения community_id
UPDATE messages SET community_id = NULL WHERE id = FLOOR(1 + RAND() * 80);
 
 
SELECT * FROM communities;

-- оставим только 20 групп
DELETE FROM communities WHERE id > 20;
 

SELECT * FROM communities_users;

-- оставляем ссылки только на 20 групп
UPDATE communities_users SET community_id = FLOOR(1 + RAND() * 20); 

SHOW TABLES;

