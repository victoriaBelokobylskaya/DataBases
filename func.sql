SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER //

DROP FUNCTION IF EXISTS hello //
CREATE FUNCTION hello()
RETURNS TEXT NOT DETERMINISTIC
BEGIN
	DECLARE time_now,time_06,time_11,time_12,time_17, time_18,time_23,time_00,time_05 TIME;
	DECLARE greeting TEXT;
	SET time_now = DATE_FORMAT(NOW(), '%H:%i');
	SET time_06 = (SELECT STR_TO_DATE('0600','%H%i'));
    SET time_11 = (SELECT STR_TO_DATE('1159','%H%i'));
    SET time_12 = (SELECT STR_TO_DATE('1200','%H%i'));
    SET time_17 = (SELECT STR_TO_DATE('1759','%H%i'));
    SET time_18 = (SELECT STR_TO_DATE('1800','%H%i'));
    SET time_23 = (SELECT STR_TO_DATE('2359','%H%i'));
    SET time_00 = (SELECT STR_TO_DATE('0000','%H%i'));
    SET time_05 = (SELECT STR_TO_DATE('0559','%H%i'));
   
	if  (time_now BETWEEN time_06 AND time_11) THEN 
		SET greeting = 'Доброе утро!';
	elseif (time_now BETWEEN time_12 AND time_17) THEN 
		SET greeting = 'Добрый день!';
	elseif (time_now BETWEEN time_18 AND time_23) THEN 
		SET greeting = 'Добрый вечер!';	
	elseif (time_now BETWEEN time_00 AND time_05) THEN 
		SET greeting = 'Доброй ночи!';	
	else 
		SET greeting = 'Ошибка в формате времени!';
	end if;
	RETURN greeting;	
END //


DROP FUNCTION IF EXISTS FIBONACCI //
CREATE FUNCTION FIBONACCI(num INT)
RETURNS INT NOT DETERMINISTIC
BEGIN
	DECLARE i,x,y INT DEFAULT 1;
	WHILE i < num DO
		SET y = x + y;
	   	SET	x = y - x;
		SET i = i + 1;
	END WHILE;
	RETURN x;	
END//


