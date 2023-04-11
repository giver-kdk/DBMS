show databases
CREATE DATABASE csit77_giver
USE csit77_giver
CREATE TABLE department(dept_name VARCHAR(20), building VARCHAR(20), budget NUMERIC(10, 2), PRIMARY KEY(dept_name))
ALTER TABLE department ADD manager VARCHAR(20)
ALTER TABLE department DROP manager
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
update instructor set dept_name="IT" where ID=1234# 1 row affected. update instructor set dept_name="Physics" where ID=2345# 1 row affected.
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
select * from student, department
select * from student, department where department.dept_name = student.dept_name
select * from student, department where student.dept_name = department.dept_name
SELECT * from student
insert into student values(4, "James", 4, "IT", 25), (5, "Prince", 3, "Music", 21);
select * from student, department where student.dept_name = department.dept_name
select * from instructor
SELECT salary*12 as annual_salary from instrucor;
SELECT salary*12 as annual_salary from instructor
SELECT salary*12 annual_salary from instructor
select distinct T.name from instructor as T, instructor as S where T.salary > S.salary and S.dept_name="IT"
select * from instructor
select distinct T.name from instructor as T, instructor as S where T.salary > S.salary and S.dept_name="IT"
select * from instructor
select distinct T.name from instructor as T, instructor as S where T.salary > S.salary and S.dept_name="IT"
select distinct T.name from instructor as T, instructor as S where T.salary > S.salary
select * from instructor
select T.name from instructor as T, instructor as S where T.salary > S.salary
select * from instructor
insert into instructor values(4567, "Raju Kumar", 50000, "Physics"), (5678, "Dipson Malla", 20000, "Music")
select * from instructor
select name, salary from instructor where salary > 30000 order by salary desc, ID asc
select name from instructor order by salary desc
select name from instructor order by name asc
select name from instructor order by name