CREATE PROCEDURE `inclui_novo_produto_parametro` (
  vCodigo varchar(50),
  vNome varchar(50),
  vSabor varchar(50),
  vTamanho varchar(50),
  vEmbalagem varchar(50),
  vPreço decimal(10, 2),
)

BEGIN
	INSERT INTO tabela_de_produtos (
	CODIGO_DO_PRODUTO,NOME_DO_PRODUTO,SABOR,TAMANHO,EMBALAGEM,PRECO_DE_LISTA)
    VALUES (
      vCodigo,
      vNome,
      vSabor,
      vTamanho,
      vEmbalagem,
      vPreço
	 );
END
