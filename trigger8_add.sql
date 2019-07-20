-- FUNCTIONALITY: The user should not be able to delete or insert a tuple inside of the CurrentTime table.

DROP TRIGGER IF EXISTS CurrentTime_Delete;

PRAGMA foreign_keys = ON;

CREATE TRIGGER CurrentTime_Delete
BEFORE DELETE ON CurrentTime
BEGIN
 SELECT RAISE(ABORT, 'You are not allowed to DELETE in this table!');
END;

DROP TRIGGER IF EXISTS CurrentTime_Insert;

CREATE TRIGGER CurrentTime_Insert
BEFORE INSERT ON CurrentTime
BEGIN
 SELECT RAISE(ABORT, 'You are not allowed to INSERT in this table!');
END;