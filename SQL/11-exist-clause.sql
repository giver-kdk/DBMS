select dept_name from instructor group by dept_name having avg(salary) >= all(select avg(salary) from instructor group by dept_name);


select name from instructor where salary > some(select salary from instructor where adrress ="Lalitpur");
Expand Edit Explain Profiling Query failed
select name from instructor where salary > some(select salary from instructor where adrress ="Lalitpur");
select name from instructor where salary > some(select salary from instructor where address ="Lalitpur");
SELECT * FROM `instructor`
alter table instructor add address varchar(20)
update instructor set address="Lalitpur" where ID=1234
update instructor set address="Thulobharyang" where ID=2345
update instructor set address="Patan" where ID=3456
SELECT * FROM `instructor`
update instructor set address="Lalitpur" where ID=4567
update instructor set address="Lalitpur" where ID=5678
SELECT * FROM `instructor`
select name from instructor where salary > some(select salary from instructor where address ="Lalitpur")
SELECT * FROM `instructor`
select name from instructor where salary > some(select salary from instructor where address ="Lalitpur")
select name from instructor where salary > some(select salary from instructor where adrress ="Patan");
select name from instructor where salary > some(select salary from instructor where address ="Patan")
SELECT * FROM `instructor`
select name from instructor where salary > some(select salary from instructor where address ="Patan")
update instructor set address="Kathmandu" where ID=5678
SELECT * FROM `instructor`
select name, salary from instructor where salary < all (select salary from instructor where address="Kathmandu");
select name, salary from instructor where in salary < (select salary from instructor where address="Kathmandu");
select salary from instructor where salary < all (select salary from instructor where address="Kathmandu");
select salary from instructor where salary < all (select salary from instructor where address="Kathmandu");
select all name, salary from instructor where salary < (select salary from instructor where address="Kathmandu")
SELECT * FROM `instructor`
select all name, salary from instructor where salary < (select salary from instructor where address="Kathmandu")
SELECT * FROM `instructor`
select name, salary from instructor where salary < (select salary from instructor where address="Kathmandu")
SELECT * FROM `instructor`
select name, salary from instructor where salary < (select salary from instructor where address="Kathmandu")
select dept_nmae from instructor group by dept_name having avg(salary) >= all(select avg(salary)) from instructor group by dept_name);
select dept_name from instructor group by dept_name having avg(salary) >= all(select avg(salary)) from instructor group by dept_name);
select dept_name from instructor group by dept_name having avg(salary) >= all(select avg(salary) from instructor group by dept_name);
SELECT * FROM `instructor`
SELECT * FROM `department`
SELECT * FROM `instructor`
select * from department where exists(select dept_name from instructor)
SELECT * FROM `department`
SELECT * FROM `department`
SELECT * FROM `instructor`
SELECT * FROM `department`
SELECT * FROM `department`
insert into department VALUES("Robotics", "Block A", 450000)
select * FROM department WHERE exists(select dept_name from instructor)
SELECT * FROM `instructor`
select * from department where exists(select dept_name from instructor where department.dept_name=instructor.dept_name)
-- Select department name which includes one or more instructor
select * from department where exists(select * from instructor where department.dept_name=instructor.dept_name)

-- Select department name which doesn't include one or more instructor
select * from department where not exists(select * from instructor where department.dept_name=instructor.dept_name)