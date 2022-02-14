CREATE DEFINER=`admin`@`localhost` PROCEDURE `data_hora_local`()
BEGIN
  declare ts datetime default localtimestamp();
  select ts;
END
