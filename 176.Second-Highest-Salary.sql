/* Write your T-SQL query statement below */
Select MAX(salary) AS "SecondHighestSalary"
From Employee
WHERE salary <(SELECT MAX(salary) From Employee)
