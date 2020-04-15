use projeto;

select * from cliente;

# MOSTRAR NA TABELA AS 2 COLUNAS NOME E EMAIL #
SELECT NOME, EMAIL
FROM CLIENTE;

# UTILIZAR O UPDATE SEMPRE ACOMPANHADO DA CLAUSULA WHERE #
UPDATE CLIENTE
SET EMAIL = 'JORGE@HOTMAIL.COM' 
WHERE NOME='JORGE';

UPDATE CLIENTE
SET EMAIL = 'JORGE@HOTMAIL.COM', SEXO= 'M'
WHERE NOME = 'JORGE';

CREATE DATABASE COMERCIO;

 USE COMERCIO;

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	EMAIL VARCHAR(50) UNIQUE, 
	CPF VARCHAR(15) UNIQUE,
	Sexo ENUM('M','F') NOT NULL
);

create table TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('COM','RES','CEL'),
	NUMERO VARCHAR(10),
	ID_CLIENTE INT,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_CLIENTE INT UNIQUE,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

## APAGAR TABELA TELEFONE ##
DROP TABLE TELEFONE;
ALTER TABLE TELEFONE DROP FOREIGN KEY ID_CLIENTE;
ALTER TABLE TELEFONE DROP INDEX ID_CLIENTE;

USE COMERCIO;

DESC CLIENTE;

SELECT * FROM CLIENTE;

## INSERIRNDO INFORMAÇÕES NA TABELA CLIENTE ##
INSERT INTO CLIENTE VALUES(NULL,'RAFAEL','RAFAEL.MACEDO@BLUESHIFT.COM.BR',89011867090,'M');
INSERT INTO CLIENTE VALUES(NULL,'EVELYN','EVELYN.MACEDO@GMAIL.COM.BR',79011867090,'F');
INSERT INTO CLIENTE VALUES(NULL,'ARTHUR','ARTHUR.MACEDO@GMAIL.COM.BR',69011867090,'M');
INSERT INTO CLIENTE VALUES(NULL,'LINA','LINA.MACEDO@GMAIL.COM.BR',59011867090,'F');
INSERT INTO CLIENTE VALUES(NULL,'ADEMAR','ADEMAR.MACEDO@GMAIL.COM.BR',49011867090,'M');
INSERT INTO CLIENTE VALUES(NULL,'JUNIOR','JUNIOR.MACEDO@GMAIL.COM.BR',39011867090,'M');
INSERT INTO CLIENTE VALUES(NULL,'FERNANDO','FERNANDO.MACEDO@GMAIL.COM.BR',29011867090,'M');
INSERT INTO CLIENTE VALUES(NULL,'URSULA','URSULA.MACEDO@GMAIL.COM.BR',19011867090,'F');
INSERT INTO CLIENTE VALUES(NULL,'LUIS','LUIS.MACEDO@GMAIL.COM.BR',13011867090,'M');
INSERT INTO CLIENTE VALUES(NULL,'LUCIA','LUCIA.MACEDO@GMAIL.COM.BR',14011867090,'F');
INSERT INTO CLIENTE VALUES(NULL,'FERNANDO',NULL,15011867099,'M');

USE COMERCIO;
DESC ENDERECO;

## INSERIRNDO INFORMAÇÕES NA TABELA ##
INSERT INTO ENDERECO VALUES(NULL,'RUA A','CENTRO','BELO HORIZONTE','MG',1);
INSERT INTO ENDERECO VALUES(NULL,'RUA B','CENTRO','BELO HORIZONTE','MG',2);
INSERT INTO ENDERECO VALUES(NULL,'RUA C','CENTRO','BELO HORIZONTE','MG',3);
INSERT INTO ENDERECO VALUES(NULL,'RUA D','CENTRO','BELO HORIZONTE','MG',4);
INSERT INTO ENDERECO VALUES(NULL,'RUA E','CENTRO','BELO HORIZONTE','MG',5);
INSERT INTO ENDERECO VALUES(NULL,'RUA F','CENTRO','BELO HORIZONTE','MG',6);
INSERT INTO ENDERECO VALUES(NULL,'RUA G','CENTRO','BELO HORIZONTE','MG',7);
INSERT INTO ENDERECO VALUES(NULL,'RUA H','CENTRO','BELO HORIZONTE','MG',8);
INSERT INTO ENDERECO VALUES(NULL,'RUA I','CENTRO','BELO HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA J','CENTRO','BELO HORIZONTE','MG',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA L','CENTRO','BELO HORIZONTE','MG',11);

SELECT * FROM ENDERECO;

DESC TELEFONE;

SELECT * FROM TELEFONE;
## INSERINDO INFORMAÇÕES NA TABELA TELEFONE ##
INSERT INTO TELEFONE VALUES(NULL,'CEL','968894250',4);
INSERT INTO TELEFONE VALUES(NULL,'COM','41415500',5);
INSERT INTO TELEFONE VALUES(NULL,'RES','21001010',6);
INSERT INTO TELEFONE VALUES(NULL,'CEL','968894244',7);
INSERT INTO TELEFONE VALUES(NULL,'COM','968894243',8);
INSERT INTO TELEFONE VALUES(NULL,'CEL','968894245',9);
INSERT INTO TELEFONE VALUES(NULL,'RES','32147890',10);
INSERT INTO TELEFONE VALUES(NULL,'CEL','968894246',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','968894243',4);
INSERT INTO TELEFONE VALUES(NULL,'CEL','968894247',5);
INSERT INTO TELEFONE VALUES(NULL,'RES','21134567',6);

SELECT * FROM CLIENTE;
SELECT * FROM ENDERECO;
SELECT * FROM TELEFONE;

## CONCEITO ##

## SELEÇÃO - PROJEÇÃO - JUNÇÃO ##

## PROJEÇÃO TUDO QUE QUEREMOS MOSTRAR NA TELA ##
# PROJETANDO UMA TABELA #
SELECT NOW() AS "DATA"; 

SELECT NOME, NOW() AS "DATA" / > ISSO É UMA PROJEÇÃO
FROM CLIENTE;

### SELEÇÃO TEORIA DOS CONJUNTOS ###

SELECT NOME, SEXO
FROM CLIENTE;

SELECT NOME, SEXO
FROM CLIENTE
WHERE SEXO = 'M';  /* SELECAO */

UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE = 5; /* SELECAO */

---------------------------------------

## JUNÇÃO ##



