-- 0619.Biggest-Single-Number.sql

-- Create MyNumbers table
CREATE TABLE #MyNumbers (
    num INT
);

-- Insert data into MyNumbers table
INSERT INTO #MyNumbers (num)
VALUES 
(8),
(8),
(3),
(3),
(1),
(4),
(5),
(6);


-- Select data to verify insertion
if exists(SELECT top 1 1  FROM #MyNumbers group by num having count(num)=1)
begin
	SELECT top 1 num   FROM #MyNumbers group by num having count(num)=1 order by num desc;
end
else 
begin
	select null as num
end


-- Drop MyNumbers table
DROP TABLE #MyNumbers;
