-- FUNCTIONALITY: A user may not bid on an item he or she is also selling.

PRAGMA foreign_keys = ON;
DROP TRIGGER IF EXISTS owner_cant_bid;
