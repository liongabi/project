CREATE SCHEMA `credit` ;

CREATE TABLE `credit`.`credit` (
  `ID` INT NOT NULL,
  `DATE CREDIT REQUEST` DATE NULL,
  `VALUE` INT NULL,
  `STATUS` VARCHAR(50) NULL,
  PRIMARY KEY (`ID`));
  
  CREATE TABLE `credit`.`users` (
  `ID` INT NOT NULL,
  `NAME` VARCHAR(100) NULL,
  `SEX` VARCHAR(2) NULL,
  `BIRTH DATE` DATE NULL,
  PRIMARY KEY (`ID`));
  
/*Here, I've imported the CSVs generated before, each one for the respective table, using this tutorial: https://www.mysqltutorial.org/import-csv-file-mysql-table/#:~:text=Importing%20CSV%20file%20using%20MySQL%20Workbench&text=Open%20table%20to%20which%20the%20data%20is%20loaded.&text=Review%20the%20data%2C%20click%20Apply,insert%20data%20into%20the%20table.
*/

SELECT * FROM USERS;
SELECT * FROM credit;

/*Maiores dívidas paga e não paga:*/

SELECT * FROM CREDIT ORDER BY VALUE DESC;   
 /*
 PAGA:     ID = 308512
 NÃO PAGA: ID = 577153
 */
 
 SELECT * FROM USERS WHERE ID = 577153 OR ID = 308512;

/* CRIANDO UMA CLASSIFICAÇÃO DE FAIXA ETÁRIA PARA OS CLIENTES: DATA ATUAL MENOS A DATA DE NASCIMENTO;
JOVENS < 25
 25 >= ADULTOS > 60
 60 >= IDOSOS
*/

 SELECT *,
 CASE
 WHEN ((DATEDIFF(CURRENT_DATE, `BIRTH DATE`)/365) < 25) THEN 'JOVEM'
 WHEN ((DATEDIFF(CURRENT_DATE, `BIRTH DATE`)/365) >= 25) AND ((DATEDIFF(CURRENT_DATE, `BIRTH DATE`)/365) < 60) THEN 'ADULTO'
 WHEN ((DATEDIFF(CURRENT_DATE, `BIRTH DATE`)/365) >= 60) THEN 'IDOSO'
 END AS 'FAIXA ETÁRIA' FROM USERS;
  
SELECT *,
 CASE 
 WHEN STATUS = "['PAYED']" THEN 1
 WHEN STATUS = "['NOT PAYED']" THEN 0
 END AS 'STATUS' FROM CREDIT;

SELECT * FROM tbanalisedados;

/* ANÁLISE FINAL:
ID
FAIXA ETÁRIA
VALOR DO EMPRÉSTIMO
SEXO 
STATUS DA DÍVIDA: 1=PAGO, 0=NÃO PAGO
*/

CREATE TABLE `credit`.`tbanalisedados` (
  `ID` INT NOT NULL,
  `FAIXA ETARIA` VARCHAR(50) NULL,
  `VALOR` INT NULL,
  `STATUS` INT NULL,
  `SEXO` VARCHAR(2) NULL,
  `NOME` VARCHAR(200) NULL,
  PRIMARY KEY (`ID`));
  
INSERT INTO TBANALISEDADOS 

SELECT ID 
FROM CREDIT;


CREATE TABLE `credit`.`tbanalisedados2` (`ID` INT NOT NULL, `FAIXA ETARIA` VARCHAR(50) NULL, `VALOR` INT NULL,`STATUS` INT NULL,`SEXO` VARCHAR(2) NULL, `NOME` VARCHAR(200) NULL, PRIMARY KEY (`ID`))
SELECT ID, ;
