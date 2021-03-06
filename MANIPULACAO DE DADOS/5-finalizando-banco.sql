USE vendas_sucos;

CREATE TABLE ITENS_NOTAS
(
NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
QUANTIDADE INT,
PRECO FLOAT,
PRIMARY KEY(NUMERO, CODIGO)
);

ALTER TABLE ITENS_NOTAS ADD CONSTRAINT FK_NOTAS
FOREIGN KEY (NUMERO)
REFERENCES NOTAS (NUMERO);

ALTER TABLE ITENS_NOTAS ADD CONSTRAINT FK_PRODUTOS
FOREIGN KEY (CODIGO)
REFERENCES PRODUTOS (CODIGO);