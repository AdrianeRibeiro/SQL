CREATE TABLE TAB_IDENTITY (ID INT AUTO_INCREMENT, DESCRITOR VARCHAR(20), PRIMARY KEY(ID));

INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE1');
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE2');

DELETE FROM TAB_IDENTITY WHERE ID = 5;

INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES (100, 'CLIENTE100');