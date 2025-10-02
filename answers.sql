-- Q1
-- employees with their office codes
SELECT e.firstName, 
       e.lastName, 
       e.email, 
       o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;
-- Q2
-- products with product line info
SELECT p.productName, 
       p.productVendor, 
       pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

-- Q3
-- first 10 orders with customer link
SELECT o.orderDate, 
       o.shippedDate, 
       o.status, 
       o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
