-- FUNCTIONALITY: A user may not bid on an item he or she is also selling.

INSERT INTO BIDS(ItemID, BidderID, Amount, Time)
VALUES(1043402767,  'fallsantiques',  4.8, '2001-12-03 18:44:55');

SELECT *
FROM ITEMS
WHERE ItemID = 1043402767;