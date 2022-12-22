USE eldb;
create table employee(id int primary key ,
ename varchar(20) not null,
ephone bigint(11) not null unique,

eadd varchar(50),
edept varchar(10) not null,
esalary double);
insert into employee values
(1,'RANOJOY',868778685,'chennai','it',100000.45),
(2,'DEBKANTA',822778685,'kokata','a/c',150000.45),
(3,'ATIF',811778685,'chennai','mgr',500000.45),
(4,'PESO',844778685,'pune','a/c',400000.45),
(5,'ELSY',879448685,'chennai','it',200000.45);
#select
select * from employee where edept='it';
#and(both the condition should true)
select * from employee where eadd='chennai' and esalary='200000.45';

#or(one  condition should true)
select * from employee where eadd='pune' or esalary='200000.45';
#not
select * from employee  where edept!='it'; 
#in 
select * from employee where eadd in('pune','chennai');
#start with
select * from employee where ename like 'P%';

#ends with
select * from employee where ename like '%f';
#in between
select * from employee where ename like '%s%';
# start and ends with
select * from employee where ename like 'a%f';
#missiing letter
select * from employee where eadd like 'pu_e';
select * from employee where eadd like 'che___i';
#Distinct (separate)
select distinct id from Employee;
alter table employee add comm_pact int after esalary;
update employee set comm_pct=15 where id=1;

update employee set comm_pct=10 where id=2;
update employee set comm_pct=15 where id=3;

update employee set comm_pct=25 where id=4;

update employee set comm_pct=35 where id=5;

#as
select ename,esalary,esalary + 300 as 'increased_salary' from employee;
select ename,esalary,esalary + comm_pct +100 as 'annual_compensation' from employee;
select comm_pct from employee;
#greater than
select id,esalary from employee where esalary >15000;
#between
select ename,esalary from employee where esalary between 20000 and 30000;
select * from employee where id=1 or id=5 or id=3;
#not equal
select * from employee where esalary !=15000.8;
select * from employee where ename ='shifa';
update employee set id=9 where esalary<15000;
select ename,id from employee where esalary>15000 and eadd='kolkata';














