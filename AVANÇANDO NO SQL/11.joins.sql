SELECT * FROM tabela_de_vendedores;

SELECT * FROM tabela_de_clientes;

SELECT * FROM tabela_de_vendedores INNER JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT * FROM tabela_de_vendedores INNER JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.bairro,
tabela_de_vendedores.nome, tabela_de_vendedores.DE_FERIAS,
tabela_de_clientes.bairro,
tabela_de_clientes.nome FROM tabela_de_vendedores INNER JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.bairro,
tabela_de_vendedores.nome, tabela_de_vendedores.DE_FERIAS,
tabela_de_clientes.bairro,
tabela_de_clientes.nome FROM tabela_de_vendedores LEFT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.bairro,
tabela_de_vendedores.nome, tabela_de_vendedores.DE_FERIAS,
tabela_de_clientes.bairro,
tabela_de_clientes.nome FROM tabela_de_vendedores RIGHT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;