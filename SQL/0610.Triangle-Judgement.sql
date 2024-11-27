-- Create Triangle table
CREATE TABLE Triangle (
    x INT,
    y INT,
    z INT
);

-- Insert data into Triangle table
INSERT INTO Triangle (x, y, z)
VALUES 
(13, 15, 30),
(10, 20, 15);

-- Select data to verify insertion
select x,y,z, case when x+y > z and x+z > y and y+z > x then 'Yes' else 'No' end as triangle from triangle

-- Drop Triangle table
DROP TABLE Triangle;
