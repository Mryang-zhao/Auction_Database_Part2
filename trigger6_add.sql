-- FUNCTIONALITY: All new bids must be placed at the time which matches the current time of your AuctionBase system.

DROP TRIGGER IF EXISTS current_time_bids;

PRAGMA foreign_keys = ON;

CREATE TRIGGER current_time_bids
AFTER INSERT ON BIDS
WHEN EXISTS (
  SELECT Use_Current_Time
  FROM CurrentTime
  WHERE Use_Current_Time <> NEW.Time
)
BEGIN
  UPDATE BIDS
  SET Time = ( SELECT Use_Current_Time
                FROM CurrentTime )
  WHERE itemID = NEW.ItemID 
    AND BidderID = NEW.BidderID
    AND Amount = NEW.Amount;
END;
