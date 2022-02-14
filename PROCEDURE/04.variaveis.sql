CREATE PROCEDURE `atribui_valor` ()
BEGIN
  declare texto varchar(30) default 'Texto inicial';
  select texto;
  set texto = 'texto modificado';
  select texto;
END
