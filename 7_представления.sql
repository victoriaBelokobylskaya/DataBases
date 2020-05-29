-- представление для просмотра какие уроки прошел пользователь с отображением категории и названия урока
CREATE OR REPLACE VIEW user_lessons_view AS SELECT 
					lessons.name lesson_name, 
					categories.name category_name,
					user_lessons.user_id user_id, 
					CONCAT(users.last_name, ' ', users.first_name) user_name,
					user_lessons.created_at lesson_start, 
					user_lessons.finished_at lesson_finish
				FROM user_lessons, lessons, categories, users
				WHERE user_lessons.lesson_id = lessons.id AND lessons.category_id = categories.id 
														  AND users.id = user_lessons.user_id ;
								
SELECT * FROM user_lessons_view order by user_id, category_name;	

-- представление для просмотра заданий к урокам
CREATE OR REPLACE VIEW lesson_tasks_view AS SELECT 
					lessons.name lesson_name, 
					categories.name category_name,
					lesson_tasks.description task 
				FROM lessons, lesson_tasks, categories 
				WHERE lessons.id = lesson_tasks.lesson_id AND lessons.category_id = categories.id ;

													 
SELECT * FROM lesson_tasks_view ORDER BY category_name, lesson_name;  																						 


-- представление для просмотра рейтинга пользователей
CREATE OR REPLACE VIEW user_rating_view AS SELECT 
					ratings.points points, 
					CONCAT(users.last_name, ' ', users.first_name) user_name,
					profiles.city city,
					profiles.social_media 
				FROM users, ratings, profiles
				WHERE users.id = ratings.user_id AND users.id = profiles.user_id ;
			
SELECT * FROM user_rating_view ORDER BY points DESC LIMIT 10;

			
