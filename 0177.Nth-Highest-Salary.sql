
-- Create a temporary table for Employee
CREATE TABLE employee (
    id INT,
    name VARCHAR(255),
    salary DECIMAL(10, 2),
    managerId INT
);

-- Insert data into the temporary table
INSERT INTO employee (id, name, salary, managerId)
VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, NULL),
(4, 'Max', 90000, NULL);

-- Select the data to verify the insertion
SELECT * FROM employee;


-- ###############SOLVE######################


CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        select max(a.salary ) from 
(select salary , dense_rank() over (order by salary  desc) as rn
from Employee ) a
where a.rn = @N
    );
END
