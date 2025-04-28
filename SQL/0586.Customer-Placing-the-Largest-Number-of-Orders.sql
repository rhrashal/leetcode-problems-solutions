-- Create the Orders table
CREATE TABLE #Orders (
    order_number INT,
    customer_number INT
);

-- Insert the data into the Orders table
INSERT INTO #Orders (order_number, customer_number)
VALUES
    (3, 5),
    (5, 1),
    (6, 5),
    (7, 4),
    (8, 6),
    (9, 2),
    (10, 4),
    (11, 16),
    (12, 3),
    (13, 5),
    (14, 3),
    (15, 16);


	select  customer_number, count(1)
	from #Orders
	group by customer_number
	having count(1)>1
	order by count(1) desc

	select top 1 customer_number
	from #Orders
	group by customer_number
	having count(1)>1
	order by count(1) desc

-- Drop the Orders table
DROP TABLE #Orders;
