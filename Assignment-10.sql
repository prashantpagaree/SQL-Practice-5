--create database
Create database assign10;
use assig10;

--2a. Write a SQL query to find all the orders issued by the salesman 'Paul Adam'. Return ord_no, purch_amt, ord_date, customer_id and salesman_id. 

select * from orders where salesman_id = 
(select salesman_id from salesman where name = 'Paul Adam');

--2b. Write a SQL query to find the order values greater than the average order value of 10th October 2012. Return ord_no, purch_amt, ord_date, customer_id, salesman_id. 

select * from orders where purch_amt > (select avg(purch_amt) from orders where ord_date = '2012-10-10');

--2c. Write a SQL query to find those salespeople who earned the maximum commission. Return ord_no, purch_amt, ord_date, and salesman_id. 

select ord_no,purch_amt,ord_date,salesman_id from orders where 
salesman_id = (select top 1 salesman_id from salesman order by commission desc);

--2d. Write a SQL query to find those orders, which are higher than the average amount of the orders. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

select * from orders where purch_amt > (select avg(purch_amt) from orders);

