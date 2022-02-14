CREATE PROCEDURE `lidando_com_erros`(
	vCodigo varchar(50),
	vNome varchar(50),
	vSabor varchar(50),
	vTamanho varchar(50),
	vEmbalagem varchar(50),
	vPreço decimal(10, 2)
)
BEGIN
	declare mensagem varchar(40);
	declare exit handler for 1062
	begin
	SET mensagem = 'Problema de chave primária!!!';
	SELECT mensagem;
	end;
		
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
	SET mensagem = 'Produto incluido com sucesso!!!';
	SELECT mensagem;
END
