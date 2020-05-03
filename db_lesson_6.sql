-- дз к 6 уроку----------------------------------------------------------


-- Создадим таблицу постов
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

select * FROM posts LIMIT 20;

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Проверим
SELECT * FROM likes LIMIT 10;

-- внешние ключи
ALTER TABLE profiles 
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT profiles_photo_id_fk
		FOREIGN KEY (photo_id) REFERENCES media(id);
	
DESC messages;
ALTER TABLE messages 
	ADD CONSTRAINT messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id),
	ADD CONSTRAINT messages_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id),
	ADD CONSTRAINT messages_community_id_fk
 		FOREIGN KEY (community_id) REFERENCES communities(id);

DESC media; 
ALTER TABLE media 
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT media_media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id);


DESC friendship; 
ALTER TABLE friendship 
	ADD CONSTRAINT friendship_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT friendship_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id),
	ADD CONSTRAINT friendship_status_id_fk
		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);

DESC communities_users;
ALTER TABLE communities_users 
	ADD CONSTRAINT communities_users_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id),
	ADD CONSTRAINT communities_users_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id);
	
DESC posts;
ALTER TABLE posts 
	ADD CONSTRAINT posts_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id),
	ADD CONSTRAINT posts_users_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id);
	
	
DESC likes; 
ALTER TABLE likes 
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT likes_target_type_id_fk
		FOREIGN KEY (target_type_id) REFERENCES target_types(id);
-- ADD CONSTRAINT likes_target_id_fk
-- 		FOREIGN KEY (target_id) REFERENCES ????(id);	

-- 3.  Подсчитать общее количество лайков десяти самых молодых пользователей.	
-- заменила года рождения больше 2005
-- UPDATE profiles SET birthday = CONCAT('2000','-', SUBSTRING(birthday,6,5)) WHERE SUBSTRING(birthday,1,4) > 2005;
-- SELECT SUBSTRING(birthday,1,4) FROM profiles;

-- вывод 10 пользователей с ФИ и датой
SELECT users.id, users.last_name, users.first_name, profiles.birthday FROM users
INNER JOIN profiles ON (profiles.user_id = users.id )
ORDER BY profiles.birthday DESC LIMIT 10;


SELECT COUNT(*) 
	FROM likes 
		WHERE (target_type_id = 2 AND target_id IN 
			(SELECT * FROM 
				( SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS tmp ));

	
-- 4. Определить кто больше поставил лайков (всего) - мужчины или женщины?
				
SELECT COUNT(DISTINCT user_id) as total, if (gender = 'f','Women', 'Men') as user_gender
	FROM profiles 
		WHERE (user_id IN 
			(SELECT * FROM 
				( SELECT user_id FROM likes) AS lk ))
	GROUP BY gender ORDER BY total DESC;
-- расскажите, пожалуйста как можно оставить только одно значение из выборки, например 39 Женщины, без строки с мужчинами

-- 5.5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).			

-- критерии: 1) пользователи 2) посты 3) друзья 4) лайки 5) сообщения			

-- Вариант 1: пользователи с одним постом, одним другом и одним сообщением
SELECT user_id 
	FROM posts  
	WHERE user_id NOT IN
		(SELECT from_user_id 
			FROM messages  
			WHERE from_user_id IN 
				(SELECT user_id
					FROM  friendship
					GROUP BY user_id 
					HAVING count(user_id)=1
					ORDER BY user_id)
			GROUP BY from_user_id 
			HAVING count(from_user_id)=1
			ORDER BY from_user_id)
	GROUP BY user_id 
	HAVING count(user_id)=1
	ORDER BY user_id LIMIT 10; 


--  Вариант 2: пользователи без постов с одним другом и одним сообщением
SELECT from_user_id 
	FROM messages
	WHERE from_user_id IN (
			SELECT user_id 
				FROM likes  
				WHERE user_id IN (
						SELECT id 
							FROM users  
							WHERE id NOT IN (SELECT user_id FROM posts)
							ORDER BY id)
				GROUP BY user_id 
				HAVING count(user_id)=1
				ORDER BY user_id)
	GROUP BY from_user_id 
	HAVING count(from_user_id)=1
	ORDER BY from_user_id LIMIT 10;		
	
		

--  Вариант 3: пользователи без постов, которые не ставят лайки и с одним сообщением
SELECT id as user, 
(SELECT CONCAT(last_name, ' ', first_name) FROM profiles WHERE user_id = id) as fullname
FROM users WHERE id NOT IN (SELECT user_id FROM posts) AND
						   id NOT IN (SELECT user_id FROM likes) AND
						   id IN (SELECT from_user_id FROM messages GROUP BY from_user_id HAVING count(from_user_id)=1 ) 
					 ORDER BY id LIMIT 10;

