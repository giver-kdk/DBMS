show databases
CREATE DATABASE csit77_giver
USE csit77_giver
CREATE TABLE department(dept_name VARCHAR(20), building VARCHAR(20), budget NUMERIC(10, 2), PRIMARY KEY(dept_name))
CREATE TABLE student(ID NUMERIC(10, 0), name VARCHAR(20), tot_credit NUMERIC(10, 2))
ALTER TABLE student ADD PRIMARY KEY(ID)
ALTER TABLE student ADD dept_name VARCHAR(20)
ALTER TABLE student ADD FOREIGN KEY(dept_name) REFERENCES department(dept_name)
INSERT INTO department VALUES("IT", "Block A", 300000), ("Physics", "Block B", 400000), ("Music", "Block C", 500000)
INSERT INTO student VALUES(1, "Ram", 3, "IT"), (2, "Shyam", 5, "Music"), (3, "Hari", 6, "Physics")
UPDATE student SET name="Alex" WHERE id=1
CREATE TABLE instructor(ID int, name varchar(20), salary int)
INSERT INTO instructor VALUES(1234, "Karan Baral", 30000), (2345, "Ravi Shrestha", 40000), (3456, "Juvin Shrestha", 25000)
UPDATE instructor SET salary = salary + (10/100)*salary
alter table instructor add dept_name varchar(20)
alter table instructor add foreign key(dept_name) references department(dept_name)
update instructor set dept_name="IT" where ID=1234
update instructor set dept_name="Physics" where ID=2345
update instructor set dept_name="IT" where ID=3456
alter table student add age numeric(10, 0)
update student set age=20 where ID=1234
update student set age=35 where ID=2345
update student set age=40 where ID=3456
select * from studnet;
select * from student
update student set age=20 where ID=1
update student set age=35 where ID=2
update student set age=40 where ID=3
select * from student
-- "FROM" can be used with multiple tables. It gives catisian product(Set of all possible combo)
insert into student values(4, "James", 4, "IT", 25), (5, "Prince", 3, "Music", 21);
select * from student, department
-- Putting a contion using "WHERE" filters only paira having actual relation
-- Here, "department.dept_name" is primary key and "student.dept_name" is foreign key
select * from student, department where department.dept_name = student.dept_name
select * from student, department where student.dept_name = department.dept_name
SELECT * from student
select * from instructor
-- "AS" is used to alias variable name
SELECT salary*12 as annual_salary from instrucor;
-- "AS" is optional. So, not writing "AS" works same as writing it.
SELECT salary*12 annual_salary from instructor
-- Here, We select the name of instructor with highest salary among the group working in "IT" department
-- 1st, "instructor as T" and "instructor as S" is processed
-- Then, dinstinct "T.name" is collected and filtered according to the condition after "WHERE"
select distinct T.name from instructor as T, instructor as S where T.salary > S.salary and S.dept_name="IT"
select * from instructor
-- Here, We select the name of instructor with highest salary among the group each department
select distinct T.name from instructor as T, instructor as S where T.salary > S.salary
select * from instructor
insert into instructor values(4567, "Raju Kumar", 50000, "Physics"), (5678, "Dipson Malla", 20000, "Music")
select * from instructor\
-- Retrieve data in order using "ORDER BY". 
-- Here, during ordering by "salary", if equal salary encountered then only those equal data is ordered using "ID"
-- "desc" means descending and "asc" means ascending. 
select name, salary from instructor where salary > 30000 order by salary desc, ID asc
-- Here, during ordering by "salary", if equal salary encountered then those equal data is ordered in default order
select name from instructor order by salary desc
select name from instructor order by name asc
-- If nothing written after "name", then default ordering is "asc"
select name from instructor order by name