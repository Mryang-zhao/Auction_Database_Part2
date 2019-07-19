-- FUNCTIONALITY: All new bids must be placed at the time which matches the current time of your AuctionBase system.

DROP TRIGGER IF EXISTS current_time_bids;

PRAGMA foreign_keys = ON;

CREATE TRIGGER current_time_bids
BEFORE INSERT ON BIDS
WHEN EXISTS (
  SELECT Use_Current_Time
  FROM CurrentTime
  WHERE Use_Current_Time <> NEW.Time
)
BEGIN

  INSERT INTO BIDS(ItemID, BidderID, Amount, Time)
  VALUES(NEW.ItemID, NEW.BidderID, NEW.Amount, (SELECT Use_Current_Time
    FROM CurrentTime));
END;

-- QUESTION FOR PROFESSOR:
-- What Happens when the current time in the system is not within the 
-- start and end time of the auction? It seems like this trigger overrides
-- the other trigger that I have set up which only allows bids that 
-- that have a time stamp withing the range of the auction. What do I do? 