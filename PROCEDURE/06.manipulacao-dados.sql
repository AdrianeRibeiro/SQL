BEGIN

  declare vCodigo varchar(50) default '3000001';
  declare vNome varchar(50) default 'Sabor do mar 700 ml - Manga';
  declare vSabor varchar(50) default 'Manga';
  declare vTamanho varchar(50) default '700 ml';
  declare vEmbalagem varchar(50) default 'Garrafa';
  declare vPreço decimal(10, 2) default 9.25;

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
