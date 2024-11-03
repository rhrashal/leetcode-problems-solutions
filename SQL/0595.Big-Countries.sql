--595. Big Countries

CREATE TABLE #TempWorld (
    name NVARCHAR(50),
    continent NVARCHAR(50),
    area INT,
    population BIGINT,
    gdp BIGINT
);

INSERT INTO #TempWorld (name, continent, area, population, gdp) VALUES
('Afghanistan', 'Asia', 652230, 25000000, 20343000000),
('Albania', 'Europe', 28748, 2831741, 12960000000),
('Algeria', 'Africa', 2381741, 37100000, 188681000000),
('Andorra', 'Europe', 468, 78115, 3712000000),
('Angola', 'Africa', 1246700, 20609294, 100990000000);

select * from #TempWorld
where area>=3000000  or population >= 25000000

DROP TABLE IF EXISTS #TempWorld;
