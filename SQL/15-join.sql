-- The column data with same value wil occur once only naturally
select name, building from instructor natural join department;

-- Joins all the rows of two tables when condition is satisfied
select name, building from instructor inner join department on instructor.dept_name = department.dept_name