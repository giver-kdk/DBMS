-- Select all common and non-common data from student and instructor
-- Here, ID and name should have same position in code with same data type
select ID, name from student union select ID, name from instructor;
-- Only select common data from student and instructor
select ID, name from student intersect select ID, name from instructor;
-- Only select non-common data from student and instructor
select ID, name from student except select ID, name from instructor;