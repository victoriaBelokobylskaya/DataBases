 CREATE DATABASE psy_health;
 USE psy_health;

-- 1. Таблица пользователей
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	last_name VARCHAR(255) NOT NULL,						# фамилия
	first_name VARCHAR(255) NOT NULL,						# имя
	email VARCHAR(100) NOT NULL UNIQUE,						# эл.почта
	passwd VARCHAR(100) NOT NULL UNIQUE,					# пароль
	created_at DATETIME DEFAULT NOW(),						# дата создани
	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()		# дата изменения
);

-- 2. Таблица профилей
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
	user_id INT UNSIGNED NOT NULL PRIMARY KEY,				# ИД пользователя
	gender CHAR(1) NOT NULL,								# пол
	birthday DATE,											# дата рождения
	city VARCHAR(100),										# город
	country VARCHAR(100),									# страна
	photo_id INT UNSIGNED,									# фото
	social_media VARCHAR (255), 							# ссылка на соц. сеть
	phone VARCHAR(100),										# телефон
	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()		# дата обновления
);

DESC profiles;
ALTER TABLE profiles 
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT profiles_photo_id_fk
		FOREIGN KEY (photo_id) REFERENCES contents(id);

-- 3. Таблица контента
DROP TABLE IF EXISTS contents;
CREATE TABLE contents (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	content_type_id INT UNSIGNED NOT NULL,					# тип контента
	user_id INT UNSIGNED,									# ИД пользователя
	filename VARCHAR(255) NOT NULL,							# ссылка на файл
	size INT NOT NULL,										# размер файла
	metadata JSON,											# метадата
	lesson_id INT UNSIGNED,              					# признак, что контент относится у уроку
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,			# дата создания
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP 			# дата изменения
						ON UPDATE CURRENT_TIMESTAMP
);

DESC contents;
ALTER TABLE contents 
	ADD CONSTRAINT contents_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT contents_content_type_id_fk
		FOREIGN KEY (content_type_id) REFERENCES content_types(id),
	ADD CONSTRAINT contents_lesson_id_fk
		FOREIGN KEY (lesson_id) REFERENCES lessons(id);	

-- 4. Таблица типов контента
DROP TABLE IF EXISTS content_types;							
CREATE TABLE content_types (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,	
	name VARCHAR(255) NOT NULL UNIQUE						# название типа контента
);


-- 5. Таблица уроков
DROP TABLE IF EXISTS lessons;
CREATE TABLE lessons (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE,						# название урока
	description VARCHAR(1000),								# описание урока
	category_id INT UNSIGNED NOT NULL 						# категория урока
);

ALTER TABLE lessons 
	ADD CONSTRAINT lessons_category_id_fk
		FOREIGN KEY (category_id) REFERENCES categories(id);	

-- 6. Таблица вопросов пользователей к урокам
DROP TABLE IF EXISTS user_questions;
CREATE TABLE user_questions (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT UNSIGNED NOT NULL, 							# пользователь, который задал вопрос
	question_txt VARCHAR(1000) NOT NULL, 					# текст вопроса
	lesson_id INT UNSIGNED NOT NULL, 						# в рамках какого урока был задан вопрос
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP			# дата создания
);

DESC user_questions;
ALTER TABLE user_questions 
	ADD CONSTRAINT user_questions_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT user_questions_lesson_id_fk
		FOREIGN KEY (lesson_id) REFERENCES lessons(id);		

-- 7. Таблица прохождения пользователем уроков, сохраняются записи пройденных уроков
DROP TABLE IF EXISTS user_lessons;
CREATE TABLE user_lessons (
	lesson_id INT UNSIGNED NOT NULL, 						# ИД пройденного урока
	user_id INT UNSIGNED NOT NULL,							# ИД пользователя
	PRIMARY KEY (lesson_id, user_id),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,			# дата создания записи
	finished_at DATETIME 									# дата завершения прохождения урока
);

DESC user_lessons;
ALTER TABLE user_lessons 
	ADD CONSTRAINT user_lessons_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT user_lessons_lesson_id_fk
		FOREIGN KEY (lesson_id) REFERENCES lessons(id);
	
-- 8. Таблица категорий вопросов в тесте и уроках
DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,	
	name VARCHAR(255) NOT NULL UNIQUE						# название категории урока/вопроса
);


-- 9. Таблица вопросов в тесте
DROP TABLE IF EXISTS test_questions;
CREATE TABLE test_questions (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	test_txt VARCHAR(255) NOT NULL, 						# текст вопроса
	category_id INT UNSIGNED NOT NULL 						# категория вопроса
);

DESC test_questions;
ALTER TABLE test_questions 
	ADD CONSTRAINT test_questions_category_id_fk
		FOREIGN KEY (category_id) REFERENCES categories(id);

-- 10. Таблица результатов теста пользователя
DROP TABLE IF EXISTS user_test_answers;
CREATE TABLE user_test_answers (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT UNSIGNED NOT NULL,							# ИД пользователя
	test_question_id INT UNSIGNED NOT NULL, 				# идентификатор вопроса
	points INT NOT NULL, 									# балл за вопрос
	is_first INT UNSIGNED NOT NULL,  						# признак прохождения опроса в начале курса
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP			# дата создания
);


DESC user_test_answers;
ALTER TABLE user_test_answers 
	ADD CONSTRAINT user_test_answers_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT user_test_answers_test_question_id_fk
		FOREIGN KEY (test_question_id) REFERENCES test_questions(id);
	
	
-- 11. Таблица рейтинга пользователей
DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings (
	user_id INT UNSIGNED NOT NULL UNIQUE,						# ИД пользователя
	points INT NOT NULL, 										# общий балл пользователя
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,				# дата создания
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP 				# дата обновления
						ON UPDATE CURRENT_TIMESTAMP
);


DESC ratings;
ALTER TABLE ratings 
	ADD CONSTRAINT ratings_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id);

-- 12. Таблица заданий к урокам
DROP TABLE IF EXISTS lesson_tasks;
CREATE TABLE lesson_tasks (
	id INT UNSIGNED NOT NULL UNIQUE,							# ИД задания
	lesson_id INT UNSIGNED NOT NULL,							# ИД урока к которому относится задание
	description VARCHAR(1000) NOT NULL							# текст задания
);

ALTER TABLE lesson_tasks
	ADD CONSTRAINT lesson_tasks_lesson_id_fk 
		FOREIGN KEY (lesson_id) REFERENCES lessons(id);
	
-- Индексы
	
CREATE INDEX users_last_name_first_name_idx ON users(last_name, first_name);

CREATE INDEX users_email_idx ON users(email);

CREATE INDEX lessons_name_idx ON lessons(name);

CREATE INDEX ratings_points_idx ON ratings(points);	
	

	