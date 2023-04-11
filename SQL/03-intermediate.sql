use csit77_giver;
select * from student;
-- Use "AND", "OR" and "NOT" same like "&&", "||" and "!" in programming
select * from student where dept_name="IT" and tot_credit=45;
select * from student where dept_name="IT" or ID=1234;
-- Put "NOT" before the positve affirmation
select * from student where not dept_name="IT";
select * from instructor;
CREATE TABLE instructor(ID int, name varchar(20), salary int);
INSERT INTO instructor VALUES(1234, "Karan Baral", 30000), (2345, "Ravi Shrestha", 40000), (3456, "Juvin Shrestha", 25000);
UPDATE instructor SET salary = salary + (10/100)*salary;
desc department;
select * from department;
-- "BETWEEN" is used to find values within specified range
select * from instructor where salary between 20000 and 30000;
-- "NOT BETWEEN" gives value out of the specified range. Inverse.
select * from instructor where salary not between 20000 and 30000;
select * from instructor;
-- Another use case of "AND", "OR" and "NOT"
alter table instructor add dept_name varchar(20);
alter table instructor add foreign key(dept_name) references department(dept_name);
select * from instructor;
update instructor set dept_name="IT" where ID=1234;
update instructor set dept_name="Physics" where ID=2345;
update instructor set dept_name="IT" where ID=3456;
select * from instructor;
select * from instructor where dept_name="IT" and salary<=40000;
select * from department;
select * from department where building="Block B" or not budget=40000;
select * from student;
alter table student add age numeric(10, 0);
select * from student;
update student set age=20 where ID=1234;
update student set age=35 where ID=2345;
update student set age=40 where ID=3456;
select * from student;
-- "IN" is alternative of 'age=20 or age=25 or age=21 or age=27'
select * from student where age in (20, 25, 21, 27);
-- "NOT IN" is inverse of "IN". Similar to '!(age=20 || age=25 || age=21 || age=27)'
select * from student where age not in (20, 25, 21, 27);
select * from student;
-- "LIKE" is regex of SQL. "%" mean Klean Closure(0 or more occurance of character)
-- "_" means exactly 1 occurrance of any character
-- For, name containg "ar" substring
select * from student where name like "%ar%";					
-- For, name ending with "a"
select * from student where name like "%a";
select * from student;
-- For, department name with exactly two length
select * from student where dept_name like "__";
select * from student;
select * from instructor;
-- For, name containing "v" at 3rd position 
select * from instructor where name like "__v%";
select * from instructor;