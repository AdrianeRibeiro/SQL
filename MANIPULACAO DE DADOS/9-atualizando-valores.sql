USE vendas_sucos;

SELECT * FROM PRODUTOS;

UPDATE PRODUTOS SET PRECO_LISTA = 5 WHERE CODIGO = '1000889';

UPDATE PRODUTOS SET 
EMBALAGEM = 'PET', 
TAMANHO = '1 Litro', 
DESCRITOR = 'Sabor da Montanha - 1 Litro - Uva'
where CODIGO = '1000889';

SELECT * FROM PRODUTOS WHERE SABOR = 'Maracujá';

UPDATE PRODUTOS SET PRECO_LISTA = PRECO_LISTA * 1.10 WHERE SABOR = 'Maracujá';