select * from student;
-- "UPDATE" modifies current data. Here, "SET" overrides data in "name" with condition
UPDATE student SET name="Alex" WHERE id=1;
select * from student;
CREATE TABLE instructor(ID int, name varchar(20), salary int);
INSERT INTO instructor VALUES(1234, "Karan Baral", 30000), (2345, "Ravi Shrestha", 40000), (3456, "Juvin Shrestha", 25000);
SELECT * FROM instructor;
-- Here, all the "salary" data is added with 10% bonus
UPDATE instructor SET salary = salary + (10/100)*salary;
SELECT * FROM instructor;
SELECT * FROM student;
-- Data row of id = 2 is deleted from "student"
DELETE FROM student WHERE id = 2;
SELECT * FROM student;
-- All data of "student" is deleted
DELETE FROM student;
SELECT * FROM student;
SELECT * FROM department;
DESC department;
INSERT INTO department VALUES("Chemistry", "Block C", 450000), ("Biology", "Block A", 20000);
-- Retrives all the data from "department"
SELECT * FROM department;
-- Retrives all first "building" data from "department" which are different from each other. No repeatation.
SELECT DISTINCT building FROM department;
-- Retrives multiple attribute from "instructor"
SELECT ID, name, salary FROM instructor;
-- Retrives "salary", calculates salary*2, then shows it as "yearly_salary"
SELECT salary*12 AS yearly_salary FROM instructor;