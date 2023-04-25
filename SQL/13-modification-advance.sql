delete from instructor where dept_name in (select dept_name from department where building="Block B");
-- Inserts ID, name and department of instructor into student. Also, tot_credit is set to 0 
-- We utilize already existing data
insert into student select ID, name, dept_name, 0 from instructor;

