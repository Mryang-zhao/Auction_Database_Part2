-- FUNCTIONALITY: In every auction, the Number of 
-- Bids attribute corresponds to the actual number of bids for that particular item.

DROP TRIGGER IF EXISTS Item_Price_Updated;

PRAGMA foreign_keys = ON;

CREATE TRIGGER Item_Price_Updated 
AFTER INSERT ON BIDS
BEGIN
  UPDATE ITEMS
  SET Number_of_bids = Number_of_bids + 1
  WHERE ItemID = NEW.ItemID;
END;
