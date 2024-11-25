-- 1045.Customers-Who-Bought-All-Products.sql

-- Create Customer table
CREATE TABLE #Customer (
    customer_id INT,
    product_key INT
);

-- Insert data into Customer table
INSERT INTO #Customer (customer_id, product_key)
VALUES 
(1, 5),
(2, 6),
(3, 5),
(3, 6),
(1, 6);

-- Create Product table
CREATE TABLE #Product (
    product_key INT
);

-- Insert data into Product table
INSERT INTO #Product (product_key)
VALUES 
(5),
(6);

 
-- sol - 1
SELECT customer_id--,count(distinct product_key) 
FROM #Customer 
group by customer_id 
having count(distinct product_key) = (select count(product_key) from #Product);





DROP TABLE #Customer;
DROP TABLE #Product;
