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


---  sol - 2
with product_count as(
select customer_id,count(distinct product_key) as p_count from
#customer
group by customer_id)
,
intr_tbl as(
select count(product_key) as cnt from #product
)
select customer_id from product_count
where p_count=(select cnt from intr_tbl)


DROP TABLE #Customer;
DROP TABLE #Product;
