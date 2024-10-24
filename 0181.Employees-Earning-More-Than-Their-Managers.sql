SELECT e.name  Employee
FROM employee e
left join employee m on e.managerId = m.id
where e.salary > m.salary
