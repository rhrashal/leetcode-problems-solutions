-- Create Activities table
CREATE TABLE #Activities (
    sell_date DATE,
    product VARCHAR(50)
);

-- Insert data into Activities table
INSERT INTO #Activities (sell_date, product)
VALUES 
('2020-05-30', 'Headphone'),
('2020-06-01', 'Pencil'),
('2020-06-02', 'Mask'),
('2020-05-30', 'Basketball'),
('2020-06-01', 'Bible'),
('2020-06-02', 'Mask'),
('2020-05-30', 'T-Shirt');


-- Select data to verify insertion
SELECT sell_date,count(1) num_sold 
,STRING_AGG(product,',') within group (order by product) as products                 
FROM  ( select distinct sell_date, product from #Activities ) a
group by sell_date
order by  sell_date 

-- Drop Activities table
DROP TABLE #Activities;
