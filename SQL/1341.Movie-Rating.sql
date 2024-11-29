-- Create Movies table
CREATE TABLE #Movies (
    movie_id INT,
    title VARCHAR(50)
);

-- Create Users table
CREATE TABLE #Users (
    user_id INT,
    name VARCHAR(50)
);

-- Create MovieRating table
CREATE TABLE #MovieRating (
    movie_id INT,
    user_id INT,
    rating INT,
    created_at DATE
);

-- Insert data into Movies table
INSERT INTO #Movies (movie_id, title)
VALUES 
(1, 'Avengers'),
(2, 'Frozen 2'),
(3, 'Joker');

-- Insert data into Users table
INSERT INTO #Users (user_id, name)
VALUES 
(1, 'Daniel'),
(2, 'Monica'),
(3, 'Maria'),
(4, 'James');

-- Insert data into MovieRating table
INSERT INTO #MovieRating (movie_id, user_id, rating, created_at)
VALUES 
(1, 1, 3, '2020-01-12'),
(1, 2, 4, '2020-02-11'),
(1, 3, 2, '2020-02-12'),
(1, 4, 1, '2020-01-01'),
(2, 1, 5, '2020-02-17'),
(2, 2, 2, '2020-02-01'),
(2, 3, 2, '2020-03-01'),
(3, 1, 3, '2020-02-22'),
(3, 2, 4, '2020-02-25');

-- Select data to verify insertion
--SELECT * FROM #Movies;
--SELECT * FROM #Users;
--SELECT * FROM #MovieRating;



select results FROM (
SELECT TOP 1 u.name AS results      
FROM #MovieRating mr
INNER JOIN #Users u ON u.user_id = mr.user_id
GROUP BY u.name
ORDER BY COUNT(1) DESC, u.name ASC
) a

UNION ALL

select results FROM (
SELECT TOP 1 m.title AS results
FROM #MovieRating mr
INNER JOIN #Movies m ON m.movie_id = mr.movie_id
WHERE MONTH(created_at) = 2 AND YEAR(created_at) = 2020
GROUP BY m.title
ORDER BY AVG(CAST(rating AS FLOAT)) DESC, m.title ASC

) b



-- Drop MovieRating table
DROP TABLE #MovieRating;

-- Drop Users table
DROP TABLE #Users;

-- Drop Movies table
DROP TABLE #Movies;
