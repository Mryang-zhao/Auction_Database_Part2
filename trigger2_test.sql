-- FUNCTIONALITY: Any new bid for a particular item must have a higher 
-- amount than any of the previous bids for that particular item.


INSERT INTO BIDS(ItemID, BidderID, Amount, Time)
VALUES(1043402767,  'goldcoastvideo',  4.1, '2019-12-06 06:44:55');

SELECT *
FROM ITEMS
WHERE ItemID = 1043402767;