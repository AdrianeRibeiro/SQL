CREATE PROCEDURE `acha_tipo_sabor` (vProduto varchar(50))
BEGIN
	declare vSabor varchar(50);
    
    select sabor into vSabor
    from tabela_de_produtos 
    where CODIGO_DO_PRODUTO = vProduto;
	
    case vSabor
    when 'Lima/Limão' then select 'Cítrico';
    when 'Laranja' then select 'Cítrico';
    when 'Morango/Limão' then select 'Cítrico';
    when 'Uva' then select 'Neutros';
    else select 'Ácidos';
    end case;
END
