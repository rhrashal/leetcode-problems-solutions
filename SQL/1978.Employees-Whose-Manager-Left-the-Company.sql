-- Create Employees table   
CREATE TABLE #Employees (
    employee_id INT,
    name VARCHAR(50),
    manager_id INT,
    salary INT
);

-- Insert data into Employees table
INSERT INTO #Employees (employee_id, name, manager_id, salary)
VALUES 
(3, 'Mila', 9, 60301),
(12, 'Antonella', NULL, 31000),
(13, 'Emery', NULL, 67084),
(1, 'Kalel', 11, 21241),
(9, 'Mikaela', NULL, 50937),
(11, 'Joziah', 6, 28485);

-- Select data to verify insertion
SELECT * FROM #Employees 
where  salary < 30000
AND  manager_id not  in (select distinct employee_id from #Employees)


-- Drop Employees table
DROP TABLE #Employees;
