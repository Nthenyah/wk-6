-- Assignment: Joins and Relationships
-- Student Name: GLORIA N BAKER
-- Database: salesDB

-- Question 1
-- Retrieve first name, last name, email, and office code of all employees
SELECT 
    e.full_name AS firstName,
    SUBSTRING_INDEX(e.full_name, ' ', -1) AS lastName,
    e.email,
    e.officeCode
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;

-- Question 2
-- Retrieve product name, product vendor, and product line
SELECT 
    p.name AS productName,
    p.productVendor,
    p.productLine
FROM products p
LEFT JOIN productlines pl 
    ON p.productLine = pl.productLine;

-- Question 3
-- Retrieve order date, shipped date, status, and customer number for the first 10 orders
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customer_id AS customerNumber
FROM customers c
RIGHT JOIN orders o 
    ON c.customer_id = o.customer_id
LIMIT 10;
