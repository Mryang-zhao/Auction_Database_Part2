-- FUNCTIONALITY: No auction may have a bid before its start 
-- time or after its end time.

DROP TRIGGER IF EXISTS bid_on_time;

PRAGMA foreign_keys = ON;

CREATE TRIGGER bid_on_time 
BEFORE INSERT ON BIDS
WHEN NOT EXISTS (
  SELECT *
  FROM ITEMS 
  WHERE ItemID = NEW.ItemID
    AND NEW.Time >= Started AND NEW.Time <= Ends
)
BEGIN
  SELECT RAISE(ABORT, 'The Auction is not taking bids at this time!');
END;
