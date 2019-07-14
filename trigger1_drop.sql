-- description: <constraint_description>
PRAGMA foreign_keys = ON;
drop trigger if exists <trigger_name>;
create trigger <trigger_name>
{before|after} {insert|update|delete} ON <table_name>
for each row
when <expression>
begin
...
end;
... /* add more triggers as needed */
And your triggerN drop.sql files should have the following format:
PRAGMA foreign_keys = ON;
drop trigger <trigger_name>;
... /* drop additional triggers */