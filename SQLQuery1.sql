

CREATE TABLE TB_Location
(
	location_id int PRIMARY KEY
	,city varchar(100)
)

INSERT INTO TB_Location
(
	location_id
	,city
)

SELECT 122 , 'New York' UNION ALL
SELECT 123 , 'Dallas' UNION ALL
SELECT 124 , 'Chicago' UNION ALL
SELECT 167 , 'Boston' 

select * from TB_Location
--------------------------------------------

CREATE TABLE Department
(
	department_id int PRIMARY KEY
	,department_name varchar(100)
	,location_id int FOREIGN KEY REFERENCES TB_Location(location_id) 
)


INSERT INTO Department
(
	department_id
	,department_name
	,location_id
)

SELECT 10,'Accounting',122 UNION ALL
SELECT 20,'Sales',124 UNION ALL
SELECT 30,'Research',123 UNION ALL
SELECT 40,'Operations',167 

select * from Department

-----------------------------------

CREATE TABLE Job
(
	job_id int PRIMARY KEY
	,designation varchar(100)
)
INSERT INTO Job
(
	job_id
	,designation
)
SELECT 667 , 'Clerk' UNION ALL
SELECT 668 , 'Staff' UNION ALL
SELECT 669 , 'Analyst' UNION ALL
SELECT 670 , 'Sales Person' UNION ALL
SELECT 671 , 'Manager' UNION ALL
SELECT 672 , 'President'

SELECT * from Job

--------------------------------

CREATE TABLE Employee
( 
	employee_id int 
	,last_name varchar(100)
	,first_name varchar(100)
	,middle_name varchar(100)
	,job_id int FOREIGN KEY REFERENCES Job(job_id)
	,manager_id int
	,hire_date date 
	,salary int
	,comm int 
	,department_id int FOREIGN KEY REFERENCES Department(department_id)
	
)
INSERT INTO Employee
(
	employee_id 
	,last_name 
	,first_name 
	,middle_name 
	,job_id 
	,manager_id 
	,hire_date  
	,salary 
	,comm 
	,department_id
)

SELECT 7369 , 'SMITH','JOHN','Q',667,7902,'17-Dec-84',800,NULL,20 UNION ALL
SELECT 7499 , 'ALLEN','KEVIN','J',670,7698,'20-Feb-85',1600,300,30 UNION ALL
SELECT 7505 , 'DOYLE','JEAN','K',671,7839,'04-Apr-85',2850,NULL,30 UNION ALL
SELECT 7506 , 'DENNIS','LYNN','S',671,7839,'15-May-85',2750,NULL,30 UNION ALL
SELECT 7507 , 'BAKER','LESLIE','D',671,7839,'10-Jun-85',2200,NULL,40 UNION ALL
SELECT 7521 , 'WARK','CYNTHIA','D',670,7698,'22-Feb-85',1250,500,30



------------------------------------------------------------------------------------------------------------------------------

---#. SIMPLE QUERIES

	SELECT * FROM Employee

	SELECT * FROM Department

	SELECT * FROM Job

	SELECT * FROM TB_Location

	SELECT emp.first_name , emp.last_name , emp.salary , emp.comm 
	FROM Employee AS emp

	SELECT emp.employee_id AS "ID OF THE EMPLOYEE" , emp.last_name AS  "NAME OF THE EMPLOYEE" , emp.department_id AS "DEP_ID"
	FROM Employee AS emp

	SELECT (salary*12) AS Annual_Salary , CONCAT(first_name , ' ' , middle_name , ' ' , last_name) AS "Name"
	FROM Employee
	
------------------------------------------------------------------------------------------------------------------------------------


--2.

	select * from employee

	SELECT * FROM Employee
	WHERE last_name = 'SMITH'

	SELECT emp.first_name FROM Employee AS emp 
	WHERE department_id = 20

	SELECT * FROM Employee
	WHERE salary BETWEEN 2000 AND 4500

	SELECT * FROM Employee 
	WHERE department_id = 10 OR department_id = 20

	SELECT * FROM Employee 
	WHERE department_id NOT IN (10,30)

	SELECT * FROM Employee
	WHERE last_name LIKE 'S%'
	
	SELECT * FROM Employee
	WHERE last_name LIKE 'S%' AND last_name LIKE '%H'

	SELECT * FROM Employee
	WHERE LEN(last_name)=5  AND last_name LIKE 'S%'

	SELECT first_name FROM Employee
	WHERE comm IS NULL

--------------------------------------------------------------------------------------------------------------------------------


SELECT employee_id , last_name FROM Employee
ORDER BY employee_id ASC


SELECT employee_id , last_name FROM Employee
ORDER BY salary DESC


SELECT * FROM Employee
ORDER BY last_name ASC


SELECT * FROM Employee
ORDER BY department_id DESC

------------------------------------------------------------------------------------------------------------------------------------

SELECT emp.first_name ,dept.department_name 
FROM Employee AS emp 
LEFT JOIN Department AS dept ON dept.department_id = emp.department_id

SELECT emp.first_name , jo.designation 
FROM Employee AS emp 
LEFT JOIN Job AS jo ON jo.job_id = emp.job_id 

SELECT COUNT(emp.first_name) AS NumberOfEmployee ,  dept.department_name
FROM Employee AS emp
LEFT JOIN Department AS dept ON dept.department_id = emp.department_id
GROUP BY department_name

SELECT COUNT(emp.first_name) AS NumberOfEmployee  , dept.department_name
FROM Employee AS emp
LEFT JOIN Department AS dept ON dept.department_id = emp.department_id
WHERE department_name = 'Sales'
GROUP BY department_name

SELECT  dept.department_name
FROM Employee AS emp
LEFT JOIN Department AS dept ON dept.department_id = emp.department_id
GROUP BY dept.department_name
HAVING COUNT(emp.first_name) >=4
ORDER BY department_name ASC

SELECT COUNT(emp.job_id) , jo.designation
FROM Employee AS emp
LEFT JOIN Job AS jo ON jo.job_id = emp.job_id
GROUP BY jo.designation

