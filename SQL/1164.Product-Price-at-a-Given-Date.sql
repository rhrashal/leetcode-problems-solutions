

-- Create Products table
CREATE TABLE #Products (
    product_id INT,
    new_price DECIMAL(10, 2),
    change_date DATE
);

-- Insert data into Products table
INSERT INTO #Products (product_id, new_price, change_date)
VALUES 
(1, 20, '2019-08-14'),
(2, 50, '2019-08-14'),
(1, 30, '2019-08-15'),
(1, 35, '2019-08-16'),
(2, 65, '2019-08-17'),
(3, 20, '2019-08-18');

-- Select data to verify insertion
SELECT * FROM #Products;






with rk as
(
select distinct product_id, new_price as price, rank() over (partition by product_id order by change_date desc) as rk
from #Products p
where change_date <= '2019-08-16'
)

select product_id, price from rk
where rk =1

union

select distinct product_id, 10 as price
from #Products
where product_id not in
(select product_id
from #products
where change_date <= '2019-08-16'
)






-- Drop Products table
DROP TABLE #Products;



