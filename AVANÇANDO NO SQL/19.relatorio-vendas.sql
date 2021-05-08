SELECT * FROM itens_notas_fiscais;

SELECT * FROM notas_fiscais;

SELECT * FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO;

SELECT NF.CPF, NF.DATA_VENDA, INF.QUANTIDADE FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO;

SELECT NF.CPF, 
date_format(NF.DATA_VENDA, '%Y-%m') AS MES_ANO, 
INF.QUANTIDADE 
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO;

/* consulta com vensas de clientes por mês */
SELECT NF.CPF, 
date_format(NF.DATA_VENDA, '%Y-%m') AS MES_ANO, 
sum(INF.QUANTIDADE) as QUANTIDADE_VENDAS
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
GROUP BY NF.CPF, date_format(NF.DATA_VENDA, '%Y-%m');

/* limite de compra por cliente */
SELECT * FROM tabela_de_clientes TC;

SELECT TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE
FROM tabela_de_clientes TC;

SELECT NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y-%m') AS MES_ANO, 
sum(INF.QUANTIDADE) as QUANTIDADE_VENDAS,
max(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE 
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y-%m');

SELECT X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_LIMITE,
/*X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS AS DIFERENCA,*/
CASE WHEN(X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS) < 0 THEN 'INVÁLIDO'
ELSE 'VÁLIDA' END AS STATUS_VENDA
FROM(
SELECT NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y-%m') AS MES_ANO, 
sum(INF.QUANTIDADE) as QUANTIDADE_VENDAS,
max(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE 
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y-%m')) X;
