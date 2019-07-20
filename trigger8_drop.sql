-- FUNCTIONALITY: The user should not be able to delete or insert a tuple inside of the CurrentTime table.

PRAGMA foreign_keys = ON;
DROP TRIGGER IF EXISTS CurrentTime_Delete;
DROP TRIGGER IF EXISTS CurrentTime_Insert;