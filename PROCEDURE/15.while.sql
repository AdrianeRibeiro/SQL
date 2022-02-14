CREATE DEFINER=`admin`@`localhost` PROCEDURE `looping_while`(vNumInicial Int, vNumFinal int)
BEGIN
	declare vContador int;
    delete from tab_looping;
    
    set vContador = vNumInicial;
    
    while vContador <= vNumFinal
	do
		insert into tab_looping (id) values (vContador);
        set vContador = vContador + 1;

    end while;
    select * from tab_looping;
END
