-- Проанализировать какие запросы могут выполняться 
-- наиболее часто в процессе работы приложения и добавить необходимые индексы.

CREATE INDEX communities_name_idx ON communities(name);

CREATE INDEX media_media_type_id_filename_idx ON media (media_type_id, filename);

CREATE INDEX users_last_name_first_name_idx ON users(last_name, first_name);

-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

SELECT DISTINCT communities.name,
  (SELECT COUNT(communities_users.user_id) FROM communities_users) / (SELECT COUNT(communities.id) FROM communities) AS average,
  MIN(profiles.birthday) OVER(PARTITION BY communities_users.community_id) AS min,
  MAX(profiles.birthday) OVER(PARTITION BY communities_users.community_id)  AS max,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities_users.community_id ) AS total_users_in_community,
  COUNT(users.id) OVER() AS total,
  COUNT(users.id) OVER(PARTITION BY communities.id) / COUNT(users.id) OVER() * 100 AS "%%"
    FROM (users
      JOIN communities_users 
        ON users.id = communities_users.user_id
      JOIN communities 
      	ON communities_users.community_id = communities.id
      JOIN profiles 
     	ON users.id = profiles.user_id);
      	
      	

