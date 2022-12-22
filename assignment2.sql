#1. Create the following table CUSTOMER.
USE eldb;

create table customer(cust_id varchar(5) primary key not null,
fname varchar(15) not null,
lname varchar(15) not null,
area char(2),
phone bigint(10),
dob varchar(20),
payment float(6,2));
insert into customer values
('a01','ivan','ross','sa',6125467,'15-jan-86',800.50),
('a02','vandana','ray','mu',5560379,'20-dec-87',1000.75),
('a03','pramada','jauguste','da',4560389,'25-jul-67',500.00),
('a04','basu','navindi','ba',6125401,'30-feb-56',860.00),
('a05','ravi','shridhar','na',null,'15-feb-89',500.50),
('a06','rukmini','aiyer','gh',5125274,'23-jul-87',1500.50);
#2. Display the structure of the table you have created
desc customer;
#3. Display the data of the created table.
select * from customer;
#4. Insert a row which will accept system date.
insert into customer value
('a07','iseven','rosa','la',6985467,current_date(),900.50);
select now();
alter table customer ADD CurrentDate varchar(15) after payment;
UPDATE CUSTOMER SET  CurrentDate=curdate();
#5. Display the data in the table.
select * from customer;
#6. Update the phone numbers of customer A02 and A04
update customer set phone=7777777 where cust_id='a02';
update customer set phone=4444777 where cust_id='a04';
#7. Update the date of birth of customer A03 and A05.
update customer set dob='20-dec-55' where cust_id='a03';
update customer set phone='30-jan-17' where cust_id='a05';
#8. Display the updated table.
select * from customer;
#9. Delete 2 rows from the table for customers A01 and A05.
delete from customer where cust_id='a01' or cust_id='a05' ;
#10. Delete all the rows from the table.
truncate customer;
#11. Insert 5 records according to your own wish.
insert into customer values
('a01','ivan','ross','sa',6125467,'15-jan-86',800.50),
('a02','vandana','ray','mu',5560379,'20-dec-87',1000.75),
('a03','pramada','jauguste','da',4560389,'25-jul-67',500.00),
('a04','basu','navindi','ba',6125401,'30-feb-56',860.00),
('a05','ravi','shridhar','na',null,'15-feb-89',500.50);
#12. Update one record based on any criteria according to your own wish.
update customer set phone=557823 where cust_id='a05';
#13. Delete any 1 record from the table based on particular criteria.
delete from customer where cust_id='a05';
