--1789.Primary-Department-for-Each-Employee.sql
----1789.Primary-Department-for-Each-Employee.sql

-- Create Employee table
CREATE TABLE Employee (
    employee_id INT,
    department_id INT,
    primary_flag CHAR(1)
);

-- Insert data into Employee table
INSERT INTO Employee (employee_id, department_id, primary_flag)
VALUES 
(1, 1, 'N'),
(2, 1, 'Y'),
(2, 2, 'N'),
(3, 3, 'N'),
(4, 2, 'N'),
(4, 3, 'Y'),
(4, 4, 'N');

SELECT * FROM Employee
-- SOL - 1
SELECT employee_id, department_id FROM Employee where primary_flag  = 'Y' 
union all
SELECT employee_id, department_id FROM Employee where primary_flag  = 'N' AND employee_id not in (SELECT employee_id FROM Employee where primary_flag  = 'Y')



-- SOL - 2
SELECT employee_id, department_id FROM Employee where primary_flag  = 'Y' OR (primary_flag  = 'N' AND employee_id not in (SELECT employee_id FROM Employee where primary_flag  = 'Y'))

-- Drop Employee table
DROP TABLE Employee;

