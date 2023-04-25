select salary from instructor where salary < all(select salary from instructor where address="Kathmandu");

-- Gives department name with higest average salry
select dept_nmae from instructor group by dept_name having avg(salary) >= all(select avg(salary)) from instructor group by dept_name);