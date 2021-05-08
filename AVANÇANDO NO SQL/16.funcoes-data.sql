SELECT CURDATE();

SELECT CURRENT_TIME();

SELECT current_timestamp();

SELECT YEAR(current_timestamp());

SELECT MONTH(current_timestamp());

SELECT DAY(current_timestamp());

SELECT monthname(current_timestamp());

SELECT DATE_SUB(current_timestamp(), INTERVAL 5 DAY) AS RESULTADO;

SELECT current_timestamp() AS DIA_HOJE, DATE_SUB(current_timestamp(), INTERVAL 5 DAY) AS RESULTADO;

SELECT DISTINCT DATA_VENDA, 
DAYNAME(DATA_VENDA) AS DIA,
monthname(DATA_VENDA) AS MES,
YEAR(DATA_VENDA) AS ANO
FROM notas_fiscais;
