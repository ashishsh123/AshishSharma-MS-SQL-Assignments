-- Change the database connection
USE Intellipaat_Assignment


--1. Create Tables in SQL Server
CREATE TABLE Orders
(
	order_Id int
	, order_date date
	, amount int
	, Customer_ID int FOREIGN KEY REFERENCES Customer(customer_id)
)


--2.Insert new records into the table
INSERT INTO Orders
(
	order_Id
	,order_date
	,amount
	,Customer_ID
)
SELECT 101,GETDATE()-90,2000,1 UNION ALL
SELECT 102,GETDATE()-92,5400,2 UNION ALL
SELECT 103,GETDATE()-93,3321,3 UNION ALL
SELECT 104,GETDATE()-94,4000,4 UNION ALL
SELECT 105,GETDATE()-95,8244,5 


SELECT * FROM Orders
SELECT * FROM Customer



--3.Make an inner join on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column 

SELECT cus.customer_id,cus.first_name,cus.last_name,cus.email,cus.customer_address,cus.city,cus.customer_state,cus.zip,odr.order_Id,odr.order_date,odr.amount
FROM Customer AS cus
INNER JOIN Orders AS odr ON  odr.Customer_ID = cus.customer_id




--4.Make left and right joins on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column
SELECT * FROM Customer AS cus
LEFT JOIN Orders AS odr ON odr.Customer_ID = cus.customer_id

SELECT * FROM Customer AS cus
RIGHT JOIN Orders AS odr ON odr.Customer_ID = cus.customer_id




--5.Taking Backup of Order table before Updating
SELECT * INTO Orders_BackUp FROM Orders
select * from Orders_BackUp




--6.Update the ‘Orders’ table, set the amount to be 100 where ‘customer_id’ is 3

UPDATE Orders
SET amount = 100
SELECT *FROM Orders AS odr  
WHERE Customer_ID = 3

select * from Orders