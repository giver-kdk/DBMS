-- Creates a faculty view with data ID, name and dept_name
create view faculty as select ID, name, dept_name from instructor;
-- Actually retrieve the viewable data
select * from faculty;
-- Create view with custom calculated attribute from already existing attribute
create view dept_total_salary(dept_name, total_salary) as select dept_name, sum(salary) from instructor group by dept_name; 

select * from dept_total_salary;

