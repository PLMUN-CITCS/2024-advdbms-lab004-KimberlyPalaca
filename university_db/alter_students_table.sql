USE UniversityDB;

SET @col_exists = (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS
                   WHERE TABLE_NAME = 'Students' AND COLUMN_NAME = 'Email');

SET @sql = IF(@col_exists = 0, 'ALTER TABLE Students ADD COLUMN Email VARCHAR(100);', 'SELECT "Column already exists";');
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

