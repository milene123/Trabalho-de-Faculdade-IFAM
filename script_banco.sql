
 create database framework;
 use framework;


CREATE TABLE `framework`.`contato` (
  `contato_id` INT(11) NOT NULL AUTO_INCREMENT,
  `contato_nome` VARCHAR(45) NULL,
  `contato_login` VARCHAR(45) NULL,
  `contato_senha` VARCHAR(45) NULL,  
  PRIMARY KEY (`contato_id`));
  
  select *from contato;
  UPDATE contato SET contato_nome= 'graca', contato_login= 'gsm', contato_senha = 222244 WHERE contato_id=8;
  
  select contato_id,contato_nome,contato_login,contato_senha from contato;