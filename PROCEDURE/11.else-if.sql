CREATE PROCEDURE `acha_status_preco` (vProduto varchar(50))
BEGIN
	
  declare vPreco float;
  declare vMensagem varchar(30);

  SELECT PRECO_DE_LISTA into vPreco
  FROM tabela_de_produtos 
  WHERE CODIGO_DO_PRODUTO = vProduto;
  
  if vPreco >= 12 then
    set vMensagem = 'Produto caro';
  elseif vPreco >= 7 and vPreco < 12 then
    set vMensagem = 'Produto em conta';
  else
    set vMensagem = 'Produto barato';
  end if;
  
  select vMensagem;
END
