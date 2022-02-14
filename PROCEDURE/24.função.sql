CREATE PROCEDURE `p_inserir_venda`(vData DATE, max_itens INT, max_quantidade INT)
BEGIN
	declare vCliente varchar(11);
    declare vProduto varchar(10);
    declare vVendedor varchar(5);
    declare vQuantidade int;
    declare vPreco float;
    declare vItens int;
    declare vNumeroNota int;
    declare vContador int default 1;
    
    select max(numero) + 1 into vNumeroNota from notas_fiscais;
    
    SET vCliente = f_cliente_aleatorio();
    SET vVendedor = f_vendedor_aleatorio();
    
    INSERT INTO notas_fiscais (CPF, MATRICULA, DATA_VENDA, NUMERO, IMPOSTO)
    VALUES(vCliente, vVendedor, vData, vNumeroNota, 0.18);
    
    SET vItens = f_numero_aleatorio(1, max_itens);
    
    while vContador <= vItens
    do
		SET vProduto = f_produto_aleatorio();
        SET VQuantidade = f_numero_aleatorio(10, max_quantidade);
        
        SELECT PRECO_DE_LISTA INTO vPreco FROM tabela_de_produtos
        where CODIGO_DO_PRODUTO = '1000889';
        
        INSERT INTO itens_notas_fiscais(NUMERO, CODIGO_DO_PRODUTO, QUANTIDADE, PRECO)
        VALUES(vNumeroNota, vProduto, vQuantidade, vPreco);
        
        SET vContador = vContador + 1;
    end while;
END
