-- FUNCTIONALITY: The user should not be able to delete or insert a tuple inside of the CurrentTime table.

DELETE 
FROM CurrentTime
WHERE Use_Current_Time = '2001-12-20 00:00:01'


INSERT INTO CurrentTime
VALUES('2001-12-21 00:00:01');