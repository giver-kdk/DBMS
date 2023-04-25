-- Selects data from instructor whose salary value is null
select * from instructor where salary IS NULL:
select * from instructor where address IS NOT NULL:

--  Gives average salary of instructors by ignoring NULL salary values
select avr(salary) from instructor;
-- Counts all number of salaries even though they have NULL values
select count(salary) from instructor;