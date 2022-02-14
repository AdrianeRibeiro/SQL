CREATE PROCEDURE `cursor_looping`()
BEGIN
	declare fim_do_cursor int default 0;
	declare vNome varchar(50);
	declare c cursor for select nome from tabela_de_clientes limit 4;
    
  declare continue handler for NOT FOUND SET fim_do_cursor = 1;
  
  OPEN C;
  
  WHILE fim_do_cursor = 0
  DO
  fetch c into vNome;
      if fim_do_cursor = 0 then
    select vNome;
  end if;
  END WHILE;
  
  CLOSE C;
END
