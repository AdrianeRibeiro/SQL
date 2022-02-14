CREATE PROCEDURE `cliente_novo_velho`(vCPF varchar(20))
BEGIN
	declare vResultado varchar(20);
  declare vDataNascimento date;

  select DATA_DE_NASCIMENTO 
  into vDataNascimento 
  from tabela_de_clientes
	where cpf = vCPF;
    
  if vDataNascimento < '2000-01-01' then
  set vResultado = 'Cliente velho';
  else
  set vResultado = 'Cliente novo';
  end if;
  
  select vResultado;
END
