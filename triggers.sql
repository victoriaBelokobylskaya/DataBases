DELIMITER //
DROP TRIGGER IF EXISTS check_name_decsription_insert//
CREATE TRIGGER check_name_decsription_insert BEFORE INSERT ON products
FOR EACH ROW 
BEGIN 
	IF (NEW.name IS NULL AND NEW.description IS NULL) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT canceled';
	ELSE
		SET NEW.name = COALESCE(NEW.name, NEW.description);
		SET NEW.description = COALESCE(NEW.description, NEW.name); 
	END IF;
END //

DROP TRIGGER IF EXISTS check_name_decsription_update//
CREATE TRIGGER check_name_decsription_update BEFORE UPDATE ON products
FOR EACH ROW 
BEGIN 
	IF (NEW.name IS NULL AND NEW.description IS NULL AND OLD.name IS NULL AND OLD.description IS NULL) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE canceled';
	ELSE
		SET NEW.name = COALESCE(NEW.name, NEW.description, OLD.name);
		SET NEW.description = COALESCE(NEW.description, NEW.name, OLD.description); 
	END IF;
END //