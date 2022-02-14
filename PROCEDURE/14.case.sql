CREATE PROCEDURE `acha_status_preco_case`(vProduto varchar(50))
BEGIN
	
    declare vPreco float;
    declare vMensagem varchar(30);

    SELECT PRECO_DE_LISTA into vPreco
    FROM tabela_de_produtos 
    WHERE CODIGO_DO_PRODUTO = vProduto;
    
    case 
    when vPreco >= 12 then 
		set vMensagem = 'Produto caro';
    when vPreco >= 7 and vPreco < 12 then 
		set vMensagem = 'Produto em conta';
	  when vPreco < 7 then
		set vMensagem = 'Produto barato';
    end case;
    
    select vMensagem;
END
