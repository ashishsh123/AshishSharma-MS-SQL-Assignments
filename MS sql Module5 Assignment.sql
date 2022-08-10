
/*-----------------------------------------------MODULE 5 ASSIGNMENT----------------------------------------------------------------------------*/


--1.Arrange the ‘Orders’ dataset in decreasing order of amount

SELECT * FROM Orders ORDER BY Amount DESC

/*------------------------------------------------------------------------------------------------------------------------------------------*/


/*2.Create a table with name ‘Employee_details1’ and comprising of these columns – ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. 
Create another table with name ‘Employee_details2’, which comprises of same columns as first table.*/


--A.

CREATE TABLE Employee_details1
(
	EM_ID INT
	,Emp_name VARCHAR(100)
	,Emp_salary INT
)

INSERT INTO Employee_details1
(
	EM_ID
	,Emp_name
	,Emp_salary
)

SELECT 1,'Ashish',40000 UNION ALL
SELECT 2,'Harsh',30000 UNION ALL
SELECT 3,'Harish',27300 UNION ALL
SELECT 4,'Amit',44300 UNION ALL
SELECT 5,'Suraj',33020

select * from Employee_details1


--B.

CREATE TABLE Employee_details2
(
	EM_ID INT
	,Emp_name VARCHAR(100)
	,Emp_salary INT
)



INSERT INTO Employee_details2
(
	EM_ID
	,Emp_name
	,Emp_salary
)

SELECT 1,'Ashish',40000 UNION ALL
SELECT 2,'Harsh',30000 UNION ALL
SELECT 7,'Ajay',54000 UNION ALL
SELECT 8,'Kailash',10000 UNION ALL
SELECT 9,'Suraj',33020

/*------------------------------------------------------------------------------------------------------------------------------------------*/


--3.Apply the union operator on these two tables

SELECT * FROM Employee_details1
UNION
SELECT * FROM Employee_details2



/*------------------------------------------------------------------------------------------------------------------------------------------*/


--4.Apply the intersect operator on these two tables

SELECT * FROM Employee_details1
INTERSECT
SELECT * FROM Employee_details2


/*------------------------------------------------------------------------------------------------------------------------------------------*/

--5.Apply the except operator on these two tables

SELECT * FROM Employee_details1
EXCEPT
SELECT * FROM Employee_details2


/*-------------------------------------------------------END OF ASSIGNMENT-------------------------------------------------------------------*/