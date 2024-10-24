-- Create a temporary table for Employee in SQL Server
CREATE TABLE employee (
    id INT,
    salary DECIMAL(10, 2)
);

-- Insert data into the temporary Employee table
INSERT INTO employee (id, salary)
VALUES
(1, 100),
(2, 200),
(3, 300);

-- Select the data to verify the insertion
SELECT * FROM employee;


go

CREATE FUNCTION getNthHighestSalary(@N INT) 
RETURNS INT AS
BEGIN
    RETURN (
        select max(a.salary ) from 
		(select salary , dense_rank() over (order by salary  desc) as rn
		from employee ) a
		where a.rn = @N
    );

END

go
-- Call the function and get the Nth highest salary
SELECT dbo.getNthHighestSalary(1) AS SecondHighestSalary;



go
drop function getNthHighestSalary
go
drop table employee
