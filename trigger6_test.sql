-- FUNCTIONALITY: All new bids must be placed at the time which matches the current time of your AuctionBase system.

INSERT INTO BIDS(ItemID, BidderID, Amount, Time)
VALUES(1043402767,  'fallsantiques',  6 , '2001-12-01 19:49:58');

SELECT *
FROM BIDS
WHERE ItemID = 1043402767;