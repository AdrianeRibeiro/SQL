CREATE FUNCTION `f_vendedor_aleatorio` () returns VARCHAR(5)

BEGIN
	declare vRetorno VARCHAR(5);
    declare num_max_tabela INT;
    declare num_aleatorio INT;
    
    SELECT COUNT(*) INTO num_max_tabela FROM tabela_de_vendedores;
    SET num_aleatorio = f_numero_aleatorio(1, num_max_tabela);
    SET num_aleatorio = num_aleatorio -1;
    
    SELECT MATRICULA INTO vRetorno FROM tabela_de_vendedores LIMIT num_aleatorio, 1;
	RETURN vRetorno;
END
