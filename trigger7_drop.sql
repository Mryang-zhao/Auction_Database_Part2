-- FUNCTIONALITY: The current time of your AuctionBase system can only advance 
-- forward in time, not backward in time.

PRAGMA foreign_keys = ON;
DROP TRIGGER IF EXISTS Time_Forward;
