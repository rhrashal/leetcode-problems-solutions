

-- Create temporary table for Employees
CREATE TABLE #employees (
    id INT,
    name VARCHAR(50)
);

-- Insert data into the Employees table
INSERT INTO #employees (id, name)
VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

-- Create temporary table for EmployeeUNI
CREATE TABLE #employeeuni (
    id INT,
    unique_id INT
);

-- Insert data into the EmployeeUNI table
INSERT INTO #employeeuni (id, unique_id)
VALUES
(3, 1),
(11, 2),
(90, 3);

-- Select data to verify the insertion

SELECT u.unique_id,e.name FROM #employees e
left join  #employeeuni u on e.id = u.id




DROP TABE #employees;
DROP TABE #employeeuni;
