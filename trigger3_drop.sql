-- FUNCTIONALITY: No auction may have a bid before its start 
-- time or after its end time.

PRAGMA foreign_keys = ON;
DROP TRIGGER IF EXISTS bid_on_time;
