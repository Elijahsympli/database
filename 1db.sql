USE eldb;
create table student_details(id int primary key ,
sname varchar(20) not null,
sphone bigint(11) not null unique,
semail varchar(50),
sadd varchar(50),
sfees double,
sdept varchar(10) not null);
insert into student values
(1,'RANOJOY',868778685,'ra@gmail.com','chennai',100000.45,'it'),
(2,'DEBKANTA',822778685,'deb@gmail.com','kokata',150000.45,'a/c'),
(3,'ATIF',811778685,'at@gmail.com','chennai',500000.45,'mca'),
(4,'PESO',844778685,'pe@gmail.com','chennai',400000.45,'it'),
(5,'ELSY',879448685,'el@gmail.com','chennai',200000.45,'it');
drop table student;
#add new column 
alter table student add age int after sname;
#modify datatype size
alter table student modify squalification varchar(20) not null;
#modify constraint
alter table student modify sphone int not null;
#drop column;
alter table student drop column sdept;
#change column name
alter table student change column age sage int;
#rename table name
alter table student rename to Student_details;
#insert single row
insert into student_details values
(6,'pil',24,635676735,'pil@gmail.com','kolkata','msc');
truncate student_details;#delete rows
drop table student_details;#delete whole table
#DML---Insert,update delete
update student_details set sage =20 where id=1;
update student_details set sage =20 where id=2;
update student_details set sage =20 where id=3;
update student_details set sage =20 where id=4;
update student_details set sage =20 where id=5;
alter table student_details add fees double after squalification;
update student_details set fees=1000.50 where id=1;
update student_details set fees=1000.50 where id=2;
update student_details set fees=1000.50 where id=3;
update student_details set fees=1000.50 where id=4;
update student_details set fees=1000.50 where id=5;
update student_details set fees=1000.50 ;
#delete any specific row
delete from student_details where id=4;
#delete any specific column
alter table student_details drop column fees;










