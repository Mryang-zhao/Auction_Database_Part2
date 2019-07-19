-- FUNCTIONALITY: No auction may have a bid before its start 
-- time or after its end time.

INSERT INTO BIDS(ItemID, BidderID, Amount, Time)
VALUES(1043402767,  'goldcoastvideo',  4.9, '2001-12-13 18:44:53');

SELECT *
FROM ITEMS
WHERE ItemID = 1043402767;