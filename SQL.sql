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



