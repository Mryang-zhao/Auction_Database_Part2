-- FUNCTIONALITY: The Current Price of an item must always match the Amount 
-- of the most recent bid for that item.

DROP TRIGGER IF EXISTS Item_Price_Insert;

PRAGMA foreign_keys = ON;

CREATE TRIGGER Item_Price_Insert 
AFTER INSERT ON BIDS
BEGIN
  UPDATE ITEMS
  SET  Currently = NEW.Amount
  WHERE ItemID = NEW.ItemID;
END;


DROP TRIGGER IF EXISTS Item_Price_Update;

CREATE TRIGGER Item_Price_Update 
AFTER UPDATE ON BIDS
BEGIN
  UPDATE ITEMS
  SET  Currently = NEW.Amount
  WHERE ItemID = NEW.ItemID;
END;