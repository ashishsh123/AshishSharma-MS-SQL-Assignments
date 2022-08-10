
-----------------------------------------------MODULE 4 ASSIGNMENT----------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------


--1. Use the inbuilt functions and find the minimum, maximum and average amount from the orders table
SELECT MIN(Amount) AS MinimumAmount FROM Orders

SELECT MAX(Amount) AS MaximumAmount FROM Orders

SELECT AVG(Amount) AS AverageAmount FROM Orders

SELECT * FROM Orders
/*------------------------------------------------------------------------------------------------------------------------------------------*/

--2.Use the inbuilt functions and find the minimum, maximum and average amount from the orders table

CREATE OR ALTER FUNCTION fn_MultiplyNumber
(
	@number int
)

RETURNS int
AS
BEGIN
	RETURN(@number * 10)
END

SELECT dbo.fn_MultiplyNumber(5)

/*-------------------------------------------------------------------------------------------------------------------------------------------*/

--3.Use the case statement to check if 100 is less than 200, greater than 200 or equal to 2oo and print the corresponding value

SELECT  
 CASE WHEN (100 < 200) THEN 'True Statement'
	  WHEN (100 > 200) THEN 'False Statement'
	  WHEN (100 = 200) THEN 'False Statement'
	  ELSE '0000' END AS CheckStatement
	  

--Done with if statement 

IF(100<200)
	SELECT 'TRUE'
ELSE IF(100>200)
	SELECT 'FALSE '
ELSE IF(100=200)
	SELECT 'FALSE'
ELSE
	SELECT 'WRONG STATEMENT'
	
/*-----------------------------------------------------------END OF ASSIGNMENT---------------------------------------------------------------*/
