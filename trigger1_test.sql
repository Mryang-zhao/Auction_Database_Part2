-- Inserts a row into the bids table and this should cause the trigger to
-- execute and update the items table for the item with this ID.

INSERT INTO BIDS(ItemID, BidderID, Amount, Time)
VALUES(1043402767,  'goldcoastvideo',  5.1, '2019-12-06 06:44:55');

-- This is to verify that the Items table actually was updated by the trigger
SELECT *
FROM ITEMS
WHERE ItemID = 1043402767;