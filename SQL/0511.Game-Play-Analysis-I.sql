-- 0511.Game-Play-Analysis-I.sql

CREATE TABLE #Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT
);



INSERT INTO #Activity (player_id, device_id, event_date, games_played)
VALUES
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-05-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);


	WITH RankedActivity AS (
		SELECT  *,  ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date ) AS rn
		FROM   #Activity
	)
	SELECT  player_id,   event_date as first_login  FROM  RankedActivity WHERE   rn = 1;

DROP TABLE #Activity;
