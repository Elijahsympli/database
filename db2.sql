use eldb;
create table future_emp(
emp_id int primary key,
ename varchar(20) not null,
designation varchar(20) not null,
dept varchar(10),
working_hour varchar(10),
salary double(10,2));
INSERT INTO future_emp VALUES
(1,'NILADRI','ENGINEER','EE','8','10000'),
(2,'SOUMYA','SME','BCA','6','11000'),
(3,'MISHBA','MGR','CSE','10','12000'),
(4,'SOURAV','ADMIN','MSC','12','13000'),
(5,'ABHISHEK','ENGINEER','EE','8','14000'),
(6,'NISHA','ADMIN','ME','8','15000'),
(7,'SHIFA','ENGINEER','EE','8','16000'),
(8,'AKSHAY','MGR','ME','8','17000'),
(9,'ELINA','ENGINEER','CE','8','18000'),
(10,'SUCHITRA','SME','BCA','6','19000');
#aggregate function -count
select dept ,count(dept) as 'total_emp_in_dept' from future_emp group by dept;
#sum
select dept,sum(working_hour) as 'total_hour' from future_emp group by dept;
select dept,sum(working_hour) as 'total_hour' from emp where dept='me';
select dept,sum(salary) as 'total_dept_salary' from future_emp group by dept;
select ename,dept,min(salary) from future_emp;
#subquery
select ename,dept,salary from future_emp where salary=(select max(salary) from Future_Emp);
#max
select dept,sum(salary) as 'max_dep_salary' from future_emp group by dept;
select max (salary) from future_emp where dept='ee';
select ename,dept from future_emp where salary=(select max(salary) from Future_Emp);
select max(salary) from future_emp;
#having
select dept,sum(working_hour) as 'total_hour' from future_emp group by dept having sum(working_hour)>15;






