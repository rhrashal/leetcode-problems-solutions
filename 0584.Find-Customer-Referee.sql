--584.Find-Customer-Referee.sql
CREATE TABLE #Customer (
    id INT,
    name NVARCHAR(50),
    referee_id INT
);

INSERT INTO #Customer (id, name, referee_id) VALUES
(1, 'Will', NULL),
(2, 'Jane', NULL),
(3, 'Alex', 2),
(4, 'Bill', NULL),
(5, 'Zack', 1),
(6, 'Mark', 2);


select name from #Customer where referee_id <>2 or referee_id is null 

DROP TABLE IF EXISTS #Customer;
