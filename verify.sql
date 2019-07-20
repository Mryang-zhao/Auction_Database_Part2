-- This file verifies that the foreign key constraints from the create.sql file are actually
-- being respected. We have to do this because in order to  make the bulk loading process
-- fairly quickly we should not make the system enforce the foreign key constraints. Instead
-- we will test for consitency/foreign keys in our data by running some queries. If a query
-- returns null/empty then that means that the foreign key constraint is actually  getting respected

-- This query tests the following foreign key constraint: 
-- All sellers must already exist as users.
SELECT U.UserID
FROM USERS U
WHERE NOT EXISTS (
  SELECT I.SellerID
  FROM ITEMS I
);



-- This query tests the following foreign key constraint: 
-- All bidders must already exist as users.
SELECT U.UserID
FROM USERS U
WHERE NOT EXISTS (
  SELECT B.BidderID
  FROM BIDS B
);



-- This query tests the following foreign key constraint: 
-- Every bid must correspond to an actual item. 
SELECT I.ItemID
FROM ITEMS I
WHERE NOT EXISTS (
  SELECT B.ItemID
  FROM BIDS B
);



-- This query tests the following foreign key constraint: 
-- The items for a given category must all exist.
SELECT I.ItemID
FROM ITEMS I
WHERE NOT EXISTS (
  SELECT C.ItemID
  FROM Categories C
);