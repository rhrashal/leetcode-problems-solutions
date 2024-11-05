-- Create temporary table for Sales
CREATE TABLE #sales (
    sale_id INT,
    product_id INT,
    year INT,
    quantity INT,
    price DECIMAL(10, 2)
);

-- Insert data into the Sales table
INSERT INTO #sales (sale_id, product_id, year, quantity, price)
VALUES
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 5000),
(7, 200, 2011, 15, 9000);

-- Create temporary table for Product
CREATE TABLE #product (
    product_id INT,
    product_name VARCHAR(50)
);

-- Insert data into the Product table
INSERT INTO #product (product_id, product_name)
VALUES
(100, 'Nokia'),
(200, 'Apple'),
(300, 'Samsung');

-- Select data to verify the insertion
SELECT p.product_name,s.year,s.price FROM #sales s
inner join #product p on s.product_id = p.product_id



drop table #sales
drop table #product
