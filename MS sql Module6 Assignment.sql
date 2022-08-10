
/*--------------------------------------------MODULE 6 ASSIGNMENT---------------------------------------------------------------------*/


--1.Create a view named ‘customer_san_jose’ which comprises of only those customers who are from san jose

CREATE OR ALTER VIEW customer_san_jose
AS
	SELECT * FROM Customer
	WHERE city = 'San Jose'

SELECT * FROM customer_san_jose

/*-------------------------------------------------------------------------------------------------------------------------------------------*/

--2.Inside a transaction, update the first name of the customer to Francis, where the last name is Jordan
      
BEGIN TRANSACTION

UPDATE cus
SET cus.first_name  = 'Francis',
    cus.last_name = 'Jordan'
FROM Customer AS cus
WHERE customer_id = 1

--2.1.Rollback the transaction
ROLLBACK TRANSACTION

--2.2.Set the first name of customer to Alex, where the last name is Jordan

BEGIN TRANSACTION

UPDATE cus
SET cus.first_name  = 'Alex',
    cus.last_name = 'Jordan'
FROM Customer AS cus
WHERE customer_id = 1


/*-------------------------------------------------------------------------------------------------------------------------------------------*/

--3.Inside a try catch block, divide 100 with 0, print the default error message
BEGIN TRY
-- All your SQL operations go here
	SELECT 100/0
END TRY

BEGIN CATCH
    SELECT 'Catch block is hit'

	DECLARE @ErrorMessage  Varchar(100)
	SET @ErrorMessage  = ERROR_MESSAGE()

	SELECT @ErrorMessage --INSERT INTO ErrorLog(ErrorMessage)
END CATCH


/*-----------------------------------------------------END OF ASSIGNMENT--------------------------------------------------------------------*/
