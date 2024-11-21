-- 1141.User-Activity-for-the-Past-30-Days-I.sql

-- Create table
CREATE TABLE #Activity (
    user_id INT,
    session_id INT,
    activity_date DATE,
    activity_type VARCHAR(50)
);

-- Insert data
INSERT INTO #Activity (user_id, session_id, activity_date, activity_type)
VALUES 
(1, 1, '2019-07-20', 'open_session'),
(1, 1, '2019-07-20', 'scroll_down'),
(1, 1, '2019-07-20', 'end_session'),
(2, 4, '2019-07-20', 'open_session'),
(2, 4, '2019-07-21', 'send_message'),
(2, 4, '2019-07-21', 'end_session'),
(3, 2, '2019-07-21', 'open_session'),
(3, 2, '2019-07-21', 'send_message'),
(3, 2, '2019-07-21', 'end_session'),
(4, 3, '2019-06-25', 'open_session'),
(4, 3, '2019-06-25', 'end_session');

-- Select data to verify
select activity_date day ,Count(distinct user_id) active_users
from #Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date

-- Drop table
DROP TABLE #Activity;








