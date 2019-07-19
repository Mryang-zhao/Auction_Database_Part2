-- FUNCTIONALITY: Any new bid for a particular item must have a higher 
-- amount than any of the previous bids for that particular item.

DROP TRIGGER IF EXISTS bid_higher;

PRAGMA foreign_keys = ON;

CREATE TRIGGER bid_higher
AFTER INSERT ON BIDS
WHEN EXISTS (
  SELECT * 
  FROM ITEMS
  WHERE Currently >= NEW.Amount AND ItemID = NEW.ItemID
)
BEGIN
  SELECT RAISE(ROLLBACK, 'You must bid higher than the current highest bid!');
END;