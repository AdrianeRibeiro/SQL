SELECT * FROM tabela_de_vendedores;
SELECT * FROM notas_fiscais;

SELECT * FROM tabela_de_vendedores as A
INNER JOIN notas_fiscais as B
ON A.matricula = B.matricula;

SELECT A.MATRICULA, A.NOME, COUNT(*) FROM
tabela_de_vendedores as A
INNER JOIN notas_fiscais as B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;
