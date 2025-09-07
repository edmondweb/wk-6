-- Active: 1753875628157@@127.0.0.1@3306@salesdb

USE salesdb;

-- Question 1

SELECT e.firstName, e.lastName, e.email, o.officeCode
FROM employees AS e INNER JOIN offices AS o ON e.officeCode = o.officeCode;

-- Question 2
SELECT e.productName, e.productVendor, o.productLine
FROM products AS e LEFT JOIN productlines AS o ON e.productLine = o.productLine;

-- Question 3
SELECT e.orderDate, e.shippedDate, e.status, e.customerNumber
FROM orders AS e RIGHT JOIN customers AS o ON e.customerNumber = o.customerNumber
LIMIT 10;
