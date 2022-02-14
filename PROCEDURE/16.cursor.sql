CREATE PROCEDURE `cursor_primeiro_contato`()
BEGIN
	declare vNome varchar(50);
    declare c cursor for select nome from tabela_de_clientes limit 4;

    open c;
    
    fetch c into vNome;
    select vNome;
    
    fetch c into vNome;
    select vNome;
    
    fetch c into vNome;
    select vNome;
    
    fetch c into vNome;
    select vNome;
    
    close c;
END
