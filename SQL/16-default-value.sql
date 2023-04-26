-- DEFAULT is used to set default value of a column in a table

-- Setting default value while creating table
CREATE TABLE Persons (ID int NOT NULL,Name varchar(255) ,Age int,City varchar(255) DEFAULT 'Kathmandu');

-- Changing the previously set default value
-- Here, "alter table persons" means we want to edit "Persons" table
-- Then, "alter city" means we want to edit "city" column of "Persons" table
ALTER TABLE Persons ALTER City SET DEFAULT 'Baglung';

-- To remove "DEFAULT" value of particular column of particular table, use "DROP"
ALTER TABLE Persons ALTER City DROP DEFAULT;

-- Insert only data on only limited attributes of "Persons" table to see effect of "DEFAULT" value
insert into Persons(ID, Name, Age) values(3, "Hari", 20), (4, "Sita", 25), (5, "Gita", 35);
