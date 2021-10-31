USE vendas_sucos;

INSERT INTO PRODUTOS (CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES ('1040107', 'Light - 350 ml - Melância', 'Melância', '350 ml', 'Lata', 4.56);

INSERT INTO PRODUTOS (CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES ('1040108', 'Light - 350 ml - Graviola', 'Graviola', '350 ml', 'Lata', 4.00);

INSERT INTO PRODUTOS
VALUES ('1040109', 'Light - 350 ml - Jaca', 'Jaca', '350 ml', 'Lata', 6.00),
	   ('1040110', 'Light - 350 ml - Manga', 'Manga', '350 ml', 'Lata', 3.50);

SELECT * FROM PRODUTOS;