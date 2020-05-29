-- триггер для обновления рейтинга после обновления даты finished_at в таблице user_lessons. 
-- Рейтинг добавляется после завершения урока, если урок был выполнен за 1 сутки, то прибавляется 50 баллов,
-- если позже, то 10 баллов
DELIMITER //
DROP TRIGGER IF EXISTS ratings_update//
CREATE TRIGGER ratings_update AFTER UPDATE ON user_lessons
FOR EACH ROW 
BEGIN 
	IF (SELECT DATEDIFF(NEW.finished_at, OLD.created_at)) > 1 THEN
		UPDATE ratings SET points = points + 10 WHERE user_id = NEW.user_id;
	ELSE
		UPDATE ratings SET points = points + 50 WHERE user_id = NEW.user_id;
	END IF;
END //


-- Создание триггера для обработки поля is_first таблицы user_test_answers
-- Перед вставкой записи нужно проверить это тест при старте курса или после окончания. 
-- Если запись для такого пользователя уже в таблице есть, то новая строка создается с признаком is_first = 0

-- Функция для проверки существования строки в таблице user_test_answers 
 
DROP FUNCTION IF EXISTS is_row_exists;
DELIMITER //

CREATE FUNCTION is_row_exists (id INT, question_id INT)
RETURNS BOOLEAN READS SQL DATA NOT DETERMINISTIC

BEGIN
 
RETURN EXISTS(SELECT 1 FROM user_test_answers WHERE user_id = id AND test_question_id = question_id);
  
END//

DELIMITER ;

-- триггер для вставки корректного признака is_first
DROP TRIGGER IF EXISTS is_first_test;
DELIMITER //

CREATE TRIGGER is_first_test BEFORE INSERT ON user_test_answers

FOR EACH ROW BEGIN
  IF is_row_exists(NEW.user_id, NEW.test_question_id) THEN
    SET NEW.is_first = 0;
  ELSE 
    SET NEW.is_first = 1;
  END IF;
END//


-- функция для подсчета разницы в баллах между начальным и финальным тестом
DROP FUNCTION IF EXISTS test_diff;
DELIMITER //

CREATE FUNCTION test_diff (id INT)
RETURNS BOOLEAN READS SQL DATA NOT DETERMINISTIC

BEGIN
DECLARE total INT; 
	SET total = (SELECT SUM(points) FROM user_test_answers WHERE user_id = id and is_first = 1) - (SELECT SUM(points) FROM user_test_answers WHERE user_id = id and is_first = 0);
RETURN total;
  
END//

DELIMITER ;

-- триггер для проверки существования пользователя
DELIMITER //
DROP TRIGGER IF EXISTS user_insert//
CREATE TRIGGER user_insert BEFORE INSERT ON users
FOR EACH ROW 
BEGIN 
	IF (EXISTS(SELECT 1 FROM users WHERE email = NEW.email)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'This email already exists';
	END IF;
END //

DELIMITER ;





