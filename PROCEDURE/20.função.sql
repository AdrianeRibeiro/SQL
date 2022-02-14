CREATE FUNCTION `f_numero_aleatorio` (min INT, max INT)
RETURNS INTEGER

BEGIN
	DECLARE vRetorno INT;
    SELECT FLOOR((RAND() * (max - min + 1)) + min) INTO vRetorno;
    
RETURN vRetorno;
END
