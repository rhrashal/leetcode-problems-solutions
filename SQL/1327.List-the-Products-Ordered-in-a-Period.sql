-- Create Products table
CREATE TABLE #Products (
    product_id INT,
    product_name VARCHAR(50),
    product_category VARCHAR(50)
);

-- Insert data into Products table
INSERT INTO #Products (product_id, product_name, product_category)
VALUES 
(1, 'Leetcode Solutions', 'Book'),
(2, 'Jewels of Stringology', 'Book'),
(3, 'HP', 'Laptop'),
(4, 'Lenovo', 'Laptop'),
(5, 'Leetcode Kit', 'T-shirt');

-- Create Orders table
CREATE TABLE #Orders (
    product_id INT,
    order_date DATE,
    unit INT
);

-- Insert data into Orders table
INSERT INTO #Orders (product_id, order_date, unit)
VALUES 
(1, '2020-02-05', 60),
(1, '2020-02-10', 70),
(2, '2020-01-18', 30),
(2, '2020-02-11', 80),
(3, '2020-02-17', 2),
(3, '2020-02-24', 3),
(4, '2020-03-01', 20),
(4, '2020-03-04', 30),
(4, '2020-03-04', 60),
(5, '2020-02-25', 50),
(5, '2020-02-27', 50),
(5, '2020-03-01', 50);

-- Select data to verify insertion


SELECT p.product_name,sum(o.unit) unit
FROM #Orders o
inner join #Products p on o.product_id = p.product_id
where YEAR(o.order_date) = '2020' AND MONTH(o.order_date)='2' 
group by p.product_name
having sum(o.unit)>=100






-- Drop Orders table
DROP TABLE #Orders;

-- Drop Products table
DROP TABLE #Products;

