-- Does cartesian product of all data
select name, building from instructor join department

-- The column data with same value wil occur once only naturally
select name, building from instructor natural join department;

-- Joins all the rows of two tables when condition is satisfied
-- INNER Join is same as JOIN
-- In JOIN, condition is written after "ON" rather than "WHERE"
select name, building from instructor inner join department on instructor.dept_name = department.dept_name;

-- Left Outer Join
select * from instructor left outer join department on instructor.dept_name = department.dept_name;

-- Right Outer Join
select * from instructor right outer join department on instructor.dept_name = department.dept_name;

-- Full Outer Join not supported in mySQL. So, do union to simulate that
select * from instructor left outer join department on instructor.dept_name = department.dept_name
UNION
select * from instructor right outer join department on instructor.dept_name = department.dept_name;