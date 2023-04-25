-- Select with condiiton on aggragate function as well
select dept_name, avg(salary) from instructor group by dept_name having avg(salary) > 30000;