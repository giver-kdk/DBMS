-- Retrieve name and salary from instructor and order it by salary
select name, salary from instructor order by salary;
-- Retrieve instructor data in descending order of name
select * from instructor order by name desc;
-- Retrieve ID and name from student whose department name is "IT" in order of name
select ID, name from student where dept_name="IT" order by name;
-- Retrieve ID and age of student in ascending order of age
select ID, age from student order by age desc;