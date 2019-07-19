-- FUNCTIONALITY: The Current Price of an item must always match the Amount 
-- of the most recent bid for that item.

DROP TRIGGER IF EXISTS Item_Price_Updated;

PRAGMA foreign_keys = ON;

CREATE TRIGGER Item_Price_Updated 
AFTER INSERT ON BIDS
BEGIN
  UPDATE ITEMS
  SET  Currently = NEW.Amount
  WHERE ItemID = NEW.ItemID;
END;