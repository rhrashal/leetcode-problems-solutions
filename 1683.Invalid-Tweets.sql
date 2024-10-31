--1683. Invalid Tweets

CREATE TABLE #Tweets (
    tweet_id INT,
    content NVARCHAR(280)
);

INSERT INTO #Tweets (tweet_id, content) VALUES
(1, 'Let us Code'),
(2, 'More than fifteen chars are here!');


SELECT tweet_id FROM #Tweets where  LEN(content)>15

DROP TABLE IF EXISTS #Tweets;
