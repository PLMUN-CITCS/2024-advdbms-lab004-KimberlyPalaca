USE UniversityDB;

-- Add the Email column only if it doesn't exist
ALTER TABLE Students ADD COLUMN Email VARCHAR(100);


DESCRIBE Students;
