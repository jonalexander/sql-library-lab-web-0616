-- updates the species of the last character in the characters table to "Martian" (FAILED - 1)
-- UPDATE [table name] SET [column name] = [new value] WHERE [column name] = [value];
-- sqlite> UPDATE cats SET name = "Hana" WHERE name = "Hannah";

UPDATE characters SET species = "Martian" WHERE id = (select MAX(id) FROM characters);
-- change species for last character
-- find last character by selecting the MAX id number from characters