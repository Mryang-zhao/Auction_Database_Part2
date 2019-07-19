-- FUNCTIONALITY: A user may not bid on an item he or she is also selling.

DROP TRIGGER IF EXISTS owner_cant_bid;

PRAGMA foreign_keys = ON;

CREATE TRIGGER owner_cant_bid
BEFORE INSERT ON BIDS
WHEN EXISTS (
  SELECT *
  FROM ITEMS
  WHERE SellerID = NEW.BidderID
  AND ItemID = NEW.ItemID
)
BEGIN
SELECT RAISE(ABORT, 'You cant bid on items that you are selling!');
END;
