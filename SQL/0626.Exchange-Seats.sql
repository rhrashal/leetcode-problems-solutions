-- Create Seat table
CREATE TABLE #Seat (
    id INT,
    student VARCHAR(50)
);

-- Insert data into Seat table
INSERT INTO #Seat (id, student)
VALUES 
(1, 'Abbot'),
(2, 'Doris'),
(3, 'Emerson'),
(4, 'Green'),
(5, 'Jeames');

-- solve - 1
SELECT s1.id,
case 
	when (s1.id%2)=1 then isnull( s3.student, s1.student) 
	else isnull( s2.student, s1.student)
end student
FROM #Seat s1
left join #Seat s2 on s1.id = (s2.id+1)
left join #Seat s3 on s1.id = (s3.id-1)

-- solve - 2
select 
iif(
    id % 2 = 0, 
    id - 1, 
    iif(
        id+1 not in (select id from #seat), 
        id, 
        id + 1
        )
    ) as id,
student
from #Seat
order by id

-- Drop Seat table
DROP TABLE #Seat;
