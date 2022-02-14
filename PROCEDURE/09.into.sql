CREATE PROCEDURE `acha_sabor_produto`(vProduto varchar(50))
BEGIN
    DECLARE vSabor varchar(50);
    set vSabor = 'Melancia';
    select sabor into vSabor from tabela_de_produtos where CODIGO_DO_PRODUTO = vProduto;
    select vSabor;
END
