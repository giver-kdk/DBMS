select name from instructor where salary = some(select salary from instructor where address="Lalitpur");

-- Gives all names and salary from instructor whose salary is less than all instructors from Kathmandu
select name, salary from instructor where salary < all(select salary from instructor where address="Kathmandu");

-- Gives department name with higest average salry
select dept_name from instructor group by dept_name having avg(salary) >= all(select avg(salary) from instructor group by dept_name);