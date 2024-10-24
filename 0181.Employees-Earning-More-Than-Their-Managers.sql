-- Create a temporary table
CREATE TABLE #Employee (
    id INT,
    name VARCHAR(50),
    salary INT,
    managerId INT
);

-- Insert data into the temporary table
INSERT INTO #Employee (id, name, salary, managerId) VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, NULL),
(4, 'Max', 90000, NULL);

-- Select data from the temporary table
SELECT * FROM #Employee;


SELECT e.name  Employee
FROM #Employee e
left join #Employee m on e.managerId = m.id
where e.salary > m.salary



-- Optionally, drop the temporary table when done
 DROP TABLE #Employee;
