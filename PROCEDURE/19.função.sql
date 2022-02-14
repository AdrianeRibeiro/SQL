CREATE FUNCTION `f_acha_tipo_sabor`(vSabor VARCHAR(50)) RETURNS varchar(20) CHARSET utf8mb4
BEGIN
	DECLARE vRetorno varchar(20) default '';
    
    case vSabor
    when 'Lima/Limão' then set vRetorno = 'Cítrico';
    when 'Laranja' then set vRetorno = 'Cítrico';
    when 'Morango/Limão' then set vRetorno = 'Cítrico';
    when 'Uva' then set vRetorno =  'Neutros';
    else set vRetorno = 'Ácidos';
    end case;
    
    return vRetorno;
END



select NOME_DO_PRODUTO, SABOR, f_acha_tipo_sabor(sabor) as tipo 
from tabela_de_produtos;

select NOME_DO_PRODUTO, SABOR, f_acha_tipo_sabor(sabor) as tipo 
from tabela_de_produtos
where f_acha_tipo_sabor(sabor) = 'Neutros';

