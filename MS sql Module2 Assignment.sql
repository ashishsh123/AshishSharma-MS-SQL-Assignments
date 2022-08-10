
--1. To create a database using Transact-SQL(TSQL)
CREATE DATABASE Intellipaat_Assignment


--2. Change the database connection
USE Intellipaat_Assignment


--3. Create Tables in SQL Server
CREATE TABLE Customer
(
	customer_id int PRIMARY KEY
	,first_name varchar(100)
	,last_name varchar(100)
	,email  varchar (100)
	,customer_address varchar(500)
	,city varchar(100)
	,customer_state varchar(100)
	,zip varchar (20)

)

--4. Insert 5 new records into the table

INSERT INTO Customer
(
	customer_id
	,first_name
	,last_name
	,email
	,customer_address
	,city
	,customer_state
	,zip
)
SELECT 1,'Ashish','Sharma','ashishsharma181298@gmail.com','Tugalkabad Extension','Delhi','New Delhi','110019' UNION ALL
SELECT 2,'Harsh','Verma','harsh321@gmail.com','Bahadurgarh','Rohtak','Haryana','100021' UNION ALL
SELECT 3,'Garry','Smith','garry111@gmail.com','5 Lloyd Way','San Jose','California','951110' UNION ALL
SELECT 4,'Himanshu','Guar','himanshu621@gmail.com','10 Guildwood Parkway','Toronto','Ontario','66777' UNION ALL
SELECT 5,'Amit','Kaushik','amit000@gmail.com','DDA','Banglore','Karnatka','560002'


-- Retrive the data from the table
SELECT * -- * represents all the columns
FROM Customer -- The name of the table


--5. Select firstname and lastname column from customer table

SELECT first_name,last_name FROM Customer


--6.Select those records where ‘first_name’ starts with “G” and city is ‘San Jose’

SELECT * FROM Customer AS cus WHERE first_name LIKE 'G%' AND city = 'San Jose'




