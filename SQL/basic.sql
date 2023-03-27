-- Basic SQL code for defining and modifying DB
-- Using mySQL as root
mysql -u root -p
show databases;
CREATE DATABASE csit77_giver;
show databases;
-- Set current DB
USE csit77_giver;
show databases;
-- creates table/entity with given attributes definition
CREATE TABLE department(dept_name VARCHAR(20), building VARCHAR(20), budget NUMERIC(10, 2), PRIMARY KEY(dept_name));
-- Describes TABLE definition
DESC department;
-- "ALTER" modifies TABLE definition. "ADD" means ADD stuff(new attribute, constraints)
ALTER TABLE department ADD manager VARCHAR(20);
DESC department;
-- "DROP" means remove stuff
ALTER TABLE department DROP manager;
DESC department;
CREATE TABLE student(ID NUMERIC(10, 0), name VARCHAR(20), tot_credit NUMERIC(10, 2));
DESC student;
ALTER TABLE student ADD PRIMARY KEY(ID);
ALTER TABLE student ADD dept_name VARCHAR(20);
DESC student;
-- Setting "dept_name" as FOREIGN KEY FROM "department" in "student"
ALTER TABLE student ADD FOREIGN KEY(dept_name) REFERENCES department(dept_name);
DESC student;
-- inserting multiple data according to attribute
INSERT INTO department VALUES("IT", "Block A", 300000), ("Physics", "Block B", 400000), ("Music", "Block C", 500000);
DESC student;
DESC department;
DESC department;
-- Accessing the INSERTed data. "*" means access all data
SELECT * FROM department;
SELECT dept_name FROM department;
-- "WHERE" allows us to put condition for searching in TABLE
SELECT dept_name FROM department WHERE budget > 200000;
SELECT dept_name FROM department WHERE budget > 300000;
SELECT dept_name FROM department WHERE building = "Block A";
SELECT * FROM department WHERE building = "Block A";
DESC student;
INSERT INTO student VALUES(1, "Ram", 3, "IT"), (2, "Shyam", 5, "Music"), (3, "Hari", 6, "Physics");
SELECT * FROM student;
SELECT * FROM csit77_giver.`department` WHERE dept_name = 'Music'
SELECT * FROM student;
