Jamison McGinley Lab-6
Justin Adkins
15- serial makes ints that auto-increment

1. SELECT * FROM store ORDER BY sname; 

2. SELECT * FROM store ORDER BY sname LIMIT 3;

3. select * from store order by sname asc limit 3 offset 2;
 
4. SELECT * FROM store WHERE price > 1;

5. SELECT sname,qty*price as extended_price FROM store;

6. SELECT sum(qty*price)  FROM store;

7. select course.cname from course join department on course.department_id = department.id where department_id=1;

8. select sum(count) from enrollment;

9. select count(distinct id) from department;

10. update course set department_id='3' where cname='112';

11. a. alter table enrollment add drop_count text;
	b. alter table enrollment alter COLUMN drop_count type varchar;
	c. alter table enrollment alter COLUMN drop_count type integer using drop_count::integer;

12. update enrollment set drop_count=count*.2; select drop_count from enrollment;
UPDATE 7
 drop_count 
------------
          8
          3
          2
          2
         12
          3
         40
(7 rows)

13. select concat(department.name, course.cname) from department join course on department.id=course.department_id;

14. select course.cname, department.name, enrollment.count from course join department on course.department_id=department.id join enrollment on course.id=enrollment.id order by department.name;
 cname | name | count 
-------+------+-------
 111   | CHM  |   200
 250   | CSC  |    10
 231   | CSC  |    12
 111   | CSC  |    40
 112   | EGR  |    15
 250   | EGR  |    14
 111   | MTH  |    60
(7 rows)

15. a. alter table enrollment drop drop_count;
	b. delete from enrollment;
	c. drop table enrollment;
	d. create table new_enrollment (id serial primary key, department_name varchar not null, count int not null, drop_count int);
	e. insert into new_enrollment(department_name,count,drop_count)values('CSC',100,20),('CHM', 120, 5), ('MTH', 90, 3), ('EGR', 122, 12), ('MTH', 68, 6), ('CSC', 100, 3), ('CHM', 30 ,1);select department_name, sum(count) from new_enrollment group by department_name order by sum desc limit 1;




