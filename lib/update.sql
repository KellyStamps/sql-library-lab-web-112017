--Update the species of the last character in the database to "Martian" by writing an update statement in update.sql.
--UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

UPDATE characters
SET species = "Martian"
ORDER BY id DESC LIMIT 1;
