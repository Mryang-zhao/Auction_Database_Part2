-- FUNCTIONALITY: In every auction, the Number 
-- of Bids attribute corresponds to the actual number of bids for that particular item.

PRAGMA foreign_keys = ON;
DROP TRIGGER IF EXISTS Item_Price_Updated;
DROP TRIGGER IF EXISTS Item_Price_Update;