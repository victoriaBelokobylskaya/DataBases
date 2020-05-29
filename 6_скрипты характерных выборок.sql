-- по какому уроку и из какой категории задано больше всего вопросов
SELECT user_questions.lesson_id,
	   lessons.name as lesson_name,
	   categories.name as category_name,
       COUNT(user_questions.lesson_id) as question_count
FROM user_questions
	JOIN lessons 
	ON (lessons.id = user_questions.lesson_id)
	JOIN categories 
	ON (categories.id = lessons.category_id)
GROUP BY lesson_id
ORDER BY question_count DESC LIMIT 1;

-- вывести инфо о пользователе с самым высоким рейтингом
SELECT CONCAT(users.last_name,' ', users.first_name) as full_name,
	   users.email,
	   profiles.birthday,
	   profiles.city,
	   ratings.points 
FROM users
	JOIN profiles 
		ON (users.id = profiles.user_id)
	JOIN ratings 
		ON (users.id = ratings.user_id)
ORDER BY ratings.points DESC LIMIT 1;


-- анализ ответов на тест по категориям/вопросам
SELECT DISTINCT categories.name as caterory_name,
  user_test_answers.test_question_id as question_id,
  SUM(points) OVER category AS sum_by_category, 						   # сумма баллов по категории
  AVG(points) OVER category AS avg_by_category, 						   # средний баллов в категории
  SUM(points) OVER(PARTITION BY user_test_answers.test_question_id) AS sum_by_question     # сумма баллов в разрезе вопросов
FROM user_test_answers
	JOIN test_questions 
	  ON user_test_answers.test_question_id = test_questions.id
	JOIN categories 
	  ON categories.id = test_questions.category_id
WINDOW category AS (PARTITION BY categories.id)
ORDER BY sum_by_category, sum_by_question;
