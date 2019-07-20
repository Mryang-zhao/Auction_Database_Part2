-- FUNCTIONALITY: The current time of your AuctionBase system can only advance 
-- forward in time, not backward in time.

UPDATE CurrentTime
SET Use_Current_Time = '2001-12-21 00:00:01';

SELECT *
FROM CurrentTime;