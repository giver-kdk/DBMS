-- Some aggregate functions in SSQL are: count(), avg(), sum(), min(), maax(), etc.
-- Show the average salary of instructors from IT department
SELECT avg(salary) from instructor where dept_name="IT"
-- Show maximum and minimum ID from student
SELECT max(ID), min(ID) from student
-- Show total salary of all instructors
SELECT sum(salary) from instructor
-- Show maximum salary of all intructors
SELECT max(salary) from instructor
-- Show minimum salary of all instructors
SELECT min(salary) from instructor
-- Show average salary of all intructors
SELECT avg(salary) from instructor
-- Show total number of records in department table
-- Here, "*" means an entire row/tuple
SELECT count(*) from department 
select * from department
select * from instructor
-- Show total number intructors from "Physics" department
select count(*) from instructor where dept_name="Physics"
-- Show total salary of intructors from "IT" department
select sum(salary) from instructor where dept_name="IT"


-- Finding the number of students from each department.
-- "group by" groups rows with same values
-- Here, since grouping is done by "dept_naem", so " dept_name" should be after "select" too 
select count(*), dept_name from student group by dept_name
