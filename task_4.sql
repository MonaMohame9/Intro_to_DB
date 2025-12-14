-- task_4.sql
-- Script to print the full description of the table Books
-- Database name will be passed as argument to mysql command

SELECT 
    COLUMN_NAME AS 'Column Name',
    COLUMN_TYPE AS 'Data Type',
    IS_NULLABLE AS 'Nullable',
    COLUMN_KEY AS 'Key',
    COLUMN_DEFAULT AS 'Default',
    EXTRA AS 'Extra'
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = DATABASE() -- uses the database passed as argument
    AND TABLE_NAME = 'Books'
ORDER BY 
    ORDINAL_POSITION;
