-- ДЗ 8 

-- 1. Подсчитать общее количество лайков десяти самых молодых пользователей.
SELECT COUNT(*) 
	FROM likes 
		WHERE (target_type_id = 2 AND target_id IN 
			(SELECT * FROM 
				( SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS tmp ));

			
-- вариант c join		
	SELECT likes.target_id
		FROM profiles 
			LEFT JOIN likes ON (profiles.user_id = likes.target_id AND likes.target_type_id = 2)
		ORDER BY profiles.birthday DESC LIMIT 10;
		
	
	
		
-- пытаюсь подсчитать значения, которые не null, но на условие where, group by или having выдает ошибку 		
	SELECT COUNT(*)
		FROM 
		(SELECT likes.target_id
		FROM profiles 
			LEFT JOIN likes ON (profiles.user_id = likes.target_id AND likes.target_type_id = 2) 
		ORDER BY profiles.birthday DESC LIMIT 10) as total;
	
	
	
-- 2. Определить кто больше поставил лайков (всего) - мужчины или женщины?
				
SELECT COUNT(DISTINCT user_id) as total, if (gender = 'f','Women', 'Men') as user_gender
	FROM profiles 
		WHERE (user_id IN 
			(SELECT * FROM 
				( SELECT user_id FROM likes) AS lk ))
	GROUP BY gender ORDER BY total DESC LIMIT 1;

-- вариант с join
SELECT COUNT(DISTINCT profiles.user_id) as total, if (profiles.gender = 'f','Women', 'Men') as user_gender
	FROM profiles 
		JOIN likes ON (profiles.user_id = likes.user_id )
	GROUP BY gender ORDER BY total DESC LIMIT 1;
	

--  3. пользователи без постов, которые не ставят лайки и с одним сообщением
SELECT id as user, 
(SELECT CONCAT(last_name, ' ', first_name) FROM profiles WHERE user_id = id) as fullname
FROM users WHERE id NOT IN (SELECT user_id FROM posts) AND
						   id NOT IN (SELECT user_id FROM likes) AND
						   id IN (SELECT from_user_id FROM messages GROUP BY from_user_id HAVING count(from_user_id)=1 ) 
					 ORDER BY id LIMIT 10;

-- вариант с join					
SELECT users.id, CONCAT(users.last_name, ' ', users.first_name) as fullname
	FROM users 
		LEFT OUTER JOIN posts 
			ON users.id = posts.user_id 	
		LEFT OUTER JOIN likes 		
			ON users.id = likes.user_id
		LEFT JOIN messages 
			ON users.id = messages.from_user_id
		WHERE likes.user_id IS NULL AND posts.user_id IS NULL
			ORDER BY users.id LIMIT 10;
