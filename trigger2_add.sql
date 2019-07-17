DROP TRIGGER IF EXISTS bid_higher;

PRAGMA foreign_keys = ON;

CREATE TRIGGER bid_higher
BEFORE INSERT ON BIDS
WHEN EXISTS (
  SELECT * 
  FROM ITEMS
  WHERE Currently >= NEW.Amount AND ItemID = NEW.ItemID
)
BEGIN
  SELECT RAISE(rollback, 'You must bid higher than the current highest bid!');
END;