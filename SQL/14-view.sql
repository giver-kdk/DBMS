-- Creates a faculty view with data ID, name and dept_name
-- Here, salary of instructor is hidden(not shown)
create view faculty as select ID, name, dept_name from instructor;
-- Actually retrieve the viewable data
select * from faculty;
-- Create view with custom calculated attribute from already existing attribute
create view dept_total_salary(dept_name, total_salary) as select dept_name, sum(salary) from instructor group by dept_name; 

select * from dept_total_salary;

-- Shows all the created views in the database
SHOW FULL TABLES IN csit77_giver WHERE TABLE_TYPE LIKE 'VIEW'

-- NOTE: VIEW can also be modified like insertion, update, deletion, set operation, etc.
-- But, we prefer to modify the original table instead of VIEW