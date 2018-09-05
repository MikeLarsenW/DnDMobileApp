/***************************/
/* Name:  		   */
/* Class: CS 3410 	   */
/* Term: Fall 2017  	   */
/* Lab #: 3part2 	   */
/***************************/

/*List the name of all products for which an order was placed. (Interactive SQL-->Queries-Advanced-->Join)*/
SELECT pname 
FROM products, orders
WHERE products.Pid = orders.Pid

/*List the name of customersthat ordered product ‘p07’ (Interactive SQL -> Queries-Advanced-->Join and
Queries-Basic -> Restriction)*/
SELECT Cname
FROM customers, orders
WHERE orders.Pid = 'p07';

/*List name of agents that placed an order for customer c003 or customer c006*/
SELECT Aname
FROM agents, orders
WHERE orders.Cid = 'c003';
SELECT Aname
FROM agents, orders
WHERE orders.Cid = 'c006';

/*List name of customers that ordered product ‘p01’ through agent 'a01' */
SELECT Cname
FROM customers, orders
WHERE (customers.Cid = orders.Cid) AND (orders.Pid = 'p01') AND (orders.Aid = 'a01');

/*List the name of each customer that placed an order, the pid of what they ordered. */
SELECT Cname, Pid
FROM customers, orders
WHERE customers.Cid = orders.Cid;

/*List the name of each customer that placed an order and the product name for each product they
ordered.*/
SELECT Cname, Cname 
FROM customers , orders, products 
WHERE (customers.Cid = orders.Cid) AND (orders.Pid=orders.Pid);

/*List the name of each customer and the total amount ordered by the customers and also list the
customers that did not place an order.*/
SELECT Cname, sum(dolars) 
FROM customers 
JOIN orders 
ON customers.Cid = orders.Cid
SELECT Cname 
FROM customers 
JOIN orders 
ON customers.Cid= orders.Cid
WHERE ordno= null;

/*List the name and the sum of dollars for each customer that ordered more than $1,000*/
SELECT Cname, sum(dollars) AS sumOfDollars 
FROM customers 
JOIN orders 
ON customers.Cid= orders.Cid 
WHERE sum(dollars) > 1000;

/*List the agent name, product name and customer name for each product ordered.*/
SELECT Aname, Aname, Cname sum(dollars) as sumOfDollars 
FROM customers 
INNER JOIN orders 
ON customers.Cid= orders.Cid 
INNER JOIN product 
ON products.Pid = orders.Pid;

/*What would be the result of the following SQL Statement:
SELECT * from CUSTOMERS, PRODUCTS*/
It is a cross join so the result would be the rows of both tables