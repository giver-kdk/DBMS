-- DEFAULT is used to set default value of a column in a table

-- Setting default value while creating table
CREATE TABLE Persons (ID int NOT NULL,Name varchar(255) ,Age int,City varchar(255) DEFAULT 'Kathmandu');

-- Changing the previously set default value
-- Here, "alter table persons" means we want to edit "Persons" table
-- Then, "alter city" means we want to edit "city" column of "Persons" table
ALTER TABLE Persons ALTER City SET DEFAULT 'Baglung';