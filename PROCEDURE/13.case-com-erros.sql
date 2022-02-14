CREATE DEFINER=`admin`@`localhost` PROCEDURE `acha_tipo_sabor_erro`(vProduto varchar(50))
BEGIN
	declare vSabor varchar(50);
    declare msgErro varchar(30);
    declare CONTINUE HANDLER FOR 1339 SET msgErro = 'o CASE NÃO ESTÁ COMPLETO';
    
    select sabor into vSabor
    from tabela_de_produtos 
    where CODIGO_DO_PRODUTO = vProduto;
	
    case vSabor
    when 'Lima/Limão' then select 'Cítrico';
    when 'Laranja' then select 'Cítrico';
    when 'Morango/Limão' then select 'Cítrico';
    when 'Uva' then select 'Neutros';
    end case;
    
    SELECT msgErro;
END
