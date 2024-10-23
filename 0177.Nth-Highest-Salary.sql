
CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        select max(a.salary ) from 
(select salary , dense_rank() over (order by salary  desc) as rn
from Employee ) a
where a.rn = @N
    );
END
