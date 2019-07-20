-- FUNCTIONALITY: The current time of your AuctionBase system can only advance 
-- forward in time, not backward in time.

DROP TRIGGER IF EXISTS Time_Forward;

PRAGMA foreign_keys = ON;

CREATE TRIGGER Time_Forward
BEFORE UPDATE ON CurrentTime
WHEN EXISTS (
  SELECT *
  FROM CurrentTime
  WHERE NEW.Use_Current_Time < Use_Current_Time
)
BEGIN
  SELECT RAISE(ABORT, 'The system time can only move forward in time!');
END;