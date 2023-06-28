-- Creation Data Base
CREATE DATABASE EntiteCommercial;

-- Creation  customers Table
USE EntiteCommercial;

CREATE TABLE customers   (

    id INT PRIMARY KEY IDENTITY(1,1),

    name VARCHAR(50) NOT NULL,

    age int NOT NULL

);

--------------------------------------------------
INSERT INTO customers ([name],age) VALUES('ArthurZ', 40);
INSERT INTO customers ([name],age) VALUES('PercevalZ', 35);
INSERT INTO customers ([name],age) VALUES('LancelotZ', 38);
INSERT INTO customers ([name],age) VALUES('MohamedZ', 45);

-------------------------------------------------------

SELECT SUBSTRING ( [name] , 0, LEN([name]) )  as Nom
		
FROM customers

---------------------------------------------------------
BEGIN TRAN Transaction1; 
	UPDATE customers  
	SET [name] = SUBSTRING ( [name] , 0, LEN([name]) ) 
COMMIT TRAN Transaction1;

----------------------------------------


SELECT [name] as Nom,
		Age
FROM customers 

