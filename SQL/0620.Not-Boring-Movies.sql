CREATE TABLE #Cinema (
    id INT PRIMARY KEY,
    movie VARCHAR(50),
    description VARCHAR(50),
    rating DECIMAL(3, 1)
);

INSERT INTO #Cinema (id, movie, description, rating) VALUES
(1, 'War', 'great 3D', 8.9),
(2, 'Science', 'fiction', 8.5),
(3, 'irish', 'boring', 6.2),
(4, 'Ice song', 'Fantacy', 8.6),
(5, 'House card', 'Interesting', 9.1);

/* Write your T-SQL query statement below */
SELECT * FROM #Cinema WHERE ID % 2 = 1 AND DESCRIPTION != 'BORING' ORDER BY RATING DESC;

drop table #Cinema
