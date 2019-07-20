-- FUNCTIONALITY: The Current Price of an item must always match the Amount 
-- of the most recent bid for that item.

PRAGMA foreign_keys = ON;
DROP TRIGGER IF EXISTS Item_Price_Insert;
DROP TRIGGER IF EXISTS Item_Price_Update;
