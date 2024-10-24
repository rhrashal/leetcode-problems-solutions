-- Create a temporary table for Customers
CREATE TABLE #customers (
    id INT,
    name VARCHAR(255)
);

-- Insert data into the Customers table
INSERT INTO #customers (id, name)
VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');

-- Create a temporary table for Orders
CREATE  TABLE #orders (
    id INT,
    customerId INT
);

-- Insert data into the Orders table
INSERT INTO #orders (id, customerId)
VALUES
(1, 3),
(2, 1);

-- Select the data from both tables to verify the insertion
SELECT * FROM #customers;
SELECT * FROM #orders;


--solve 1 #####################################
select c.name as Customers 
from #Customers c
left join #orders o on c.id = o.customerId
where o.Id is null

--solve 2 #####################################    
select name as Customers from #Customers where id not in (select customerId from #orders)




drop Table #customers
drop Table #orders
