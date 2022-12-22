USE eldb;
#1. Create a table EMP1 with following structure.
create table emp1(id int(2) primary key not null, name varchar(10)not null,
basic float(6,2),
designation varchar(10),
age int);
#2.Change the data type of the field Basic from float to integer with required size of the 
#EMP1 table.
alter table emp1 modify basic int ;
#3. Change the field size of Name column of the EMP1 table from 10 to 15. 
alter table emp1 modify name varchar(15) not null;
USE eldb;
#4. Create another table EMP_trainee with the same (changed) structure. The column ID to 
#be renamed as Emp_id in the EMP_trainee table
create table emp_trainee(emp_id int(2) primary key not null, name varchar(10) not null,
basic float(6,2),
designation varchar(10),
age int);
#5.Insert following data in EMP1 table: -
insert into emp1 values 
(1,'rohit',6700,'manager',24),
(2,'sunil',6200,'engineer',27),
(3,'payal',6300,'engineer',25),
(4,'kunal',6700,'trainee',28),
(6,'bimal',7000,'trainee',25);
#6. Insert all rows with the designation ‘trainee’ from the EMP1 table to EMP_trainee table
insert into emp_trainee select * from emp1 where designation='trainee ';
#7. Display the structure of both the tables.
select * from emp1,emp_trainee;
#8.Add columns Skills (data type-varchar2 and size-10) and DOJ (data type-date) to the 
#EMP1 table and add data for the Skills and DOJ columns according to your own wish. 
alter table emp1 add skills varchar(10)  after name;
alter table emp1 add  doj date after name;
update emp1 set skills ='teamwork' where id=1;
update emp1 set doj ='20-12-2022' where id=1;
#9. Change the designation of all trainees in EMP_trainee table to ‘Programmer _Trainee’.
update emp_trainee set designation='programmer_trainee';
#10. Update more than one row in one query in EMP1 table.
update emp1 set name ='ronny'  where id=1 or id=2;
update emp1 set name ='sunny' where id=2;
#11.Change the data type of ID in EMP1 table to varchar2 and increase the data size to 5.
alter table emp1 modify id varchar(5) ;
#12.Display both the tables EMP1 and EMP_trainee.
select * from emp1, emp_trainee;
#13.Rename the column Age of EMP1 table to Age_in_Years.
alter table emp1 change column age age_in_year int;
#14.Delete the details of all the trainees from the EMP1 table.
delete  from emp1 where designation='trainee'and id=4 or id=6;
#15.Drop the Age column from the EMP_trainee table.
alter table emp_trainee drop column age;
#16.Drop two columns in one query from EMP_trainee table.
alter table emp_trainee drop column basic , drop column designation;
#17.Rename the table EMP to EMP_Mgr_Engr.
alter table emp1 rename to emp_mgr_engr;
#18.Drop the table EMP_Trainee.
drop table emp_trainee;
#19.Truncate EMP_Mgr_Engr table
truncate emp_mgr_engr;
#20.Recover the data of EMP_Mgr_Engr.
insert into emp_trainee select * from emp1;



