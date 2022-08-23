Create database assignadd;
use assignadd;

CREATE TABLE AS10(
EMPLOYEE_ID INT,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
EMAIL VARCHAR (20),
SALARY INT,
MANAGER_ID INT,
DEPARTMENT_ID INT);

INSERT INTO AS10 VALUES(100,'STEVEN','KING','SKING',24000,0,90),
(101,'NEENA','KOCHHAR','NKOCHHAR',17000,100,90),
(102,'LEX','DE HAN','LDEHAAN',17000,100,90),
(103,'ALEXANDER','HUNOLD','AHUNOLD',9000,102,60),
(104,'BRUCE','ERNST','BERNST',6000,103,60),
(105,'DAVID','AUSTIN','DAUSTIN',4800,103,60);

CREATE TABLE B(
GRADE_LEVEL CHAR(3),
LOWEST_SAL INT,
HIGHEST_SAL INT);

INSERT INTO B VALUES('A',1000,2999),
('B',3000,5999),
('C',6000,9999),
('D',10000,14999),
('E',15000,24999),
('F',25000,40000);

SELECT * FROM AS10;
SELECT * FROM B;
DROP TABLE B
Select FIRST_NAME,LAST_NAME,SALARY, 
case
when SALARY BETWEEN 1000 AND 2999 THEN 'A'
when SALARY BETWEEN 3000 AND 5999 THEN 'B'
when SALARY BETWEEN 6000 AND 9999 THEN 'C'
when SALARY BETWEEN 10000 AND 14999 THEN 'D'
when SALARY BETWEEN 15000 AND 24999 THEN 'E'
when SALARY BETWEEN 25000 AND 40000 THEN 'F' END AS JOB_GRADE
from A;

--c. Write a query to identify all managers and get all the available details for them

Select B.MANAGER_ID,A.EMPLOYEE_ID,A.FIRST_NAME,A.LAST_NAME,A.EMAIL,A.SALARY,A.DEPARTMENT_ID from
AS10 A Inner Join AS10 B ON A.EMPLOYEE_ID = B.MANAGER_ID;

--Q2. Write a query to find cumulative sum of amount for every customer (Input
--and Output are present below)Select A.Cust_ID, A.DATE, A.AMOUNT, SUM(B.AMOUNT) AS Cum_Sum From I1 A INNER JOINI1 B ON A.CUST_ID = B.CUST_ID AND A.DATE >= B.DATEGROUP BY A.Cust_ID, A.DATEORDER BY A.Cust_ID;--a) Write an SQL query that returns the employees (number and name only) who have a
--title of 'EE' or 'SA' and make more than $35,000, order the data on the basis of the last 3
--characters of the first name in ascending order.