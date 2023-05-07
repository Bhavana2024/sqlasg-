
-- EXERCISE -1

-- create database doctor
create table doctor_details(
id int primary key  not null,
name varchar(30),
specialization varchar(20),
salary int);
select * from doctor_details;
insert into doctor_details values
(101,'Ravi','Cardiolagist',100000),
(102,'Suresh','ENT Specialist',80000),
(103,'Indu','Gynaecologist',70000),
(104,'chandu','Surgeon',200000),
(105,'Sunil','Neurosurgon',300000),
(106,'chandana','Cardiolagisht',250000),
(107,'Jasmine','Dentist',80000);

create table appointment_details(
app_num int primary key not null,
ap_date date ,
patient_name varchar(30),
specialization_ctg varchar(30),
dotor_name varchar(30)); 

insert into appointment_details values
(201,"7-5-23",'Peter','heartdiseases','ravi'),
(202,"8-5-23",'preeti','Eye problem','Suresh'),
(204,"9-5-23",'Ambuja','Cavities','jasmine'),
(205,"10-5-23",'Peter','teeth problem','jasmine'),
(206,"11-5-23",'Pranav','heartdiseases','chandana'),
(207,"12-5-23",'Pragna','brain dead','sunil'),
(208,"13-5-23",'hasif','Menstrual disorder','indu');


create table patient_detail(
pat_no int primary key not null,
patient_name varchar(30),
disease varchar(30),
age int,
consult_doctor varchar(30));

insert into patient_detail values
(301,'pranav','heartdisease',40,'ravi'),
(302,'hasina','menstrual disorder',23,'indu'),
(303,'ambuja','cavities','18','ravi'),
(304,'preethi','eye problem',24,'suresh'),
(305,'peter','teeth prroblem',45,'sunil');


create table reviews(
pat_no int primary key not null,
date date,
patient_name varchar(30),
patient_disease varchar(30),
review varchar(80));

insert into reviews values
(1001,'3-05-23','ambuja','cavities','friendly doctor and good treatment'),
(1002,'3-05-23','pranav','heartdisease','treatment is good but more expensive'),
(1003,'4-05-23','hasina','','doctor had a grate patience,i recommand this doctor for this type of problems'),
(1004,'5-05-23','preethi','eye problem','worst experience'),
(1005,'8-05-23','peter','teeth problem','great treatment and good srvice');

-- EXECISE -2 -----
create table contacts(
id int primary key not null,
email varchar(30),
fname varchar(30),
lname varchar(30),
company varchar(20),
Active_flag int,
opt_out int);


insert into contacts values
(123,'a@a.com','kian','seth','ABC',1,1),
(133,'b@a.com','neha','seth','ABC',1,0),
(234,'c@c.com','puru','malik','CDF',0,0),
(342,'d@d.com','Sid','maan','TEG',1,0);

select * from contacts;
select * from contacts where Active_flag = 1;  -- to delete contacts who have Active_flag is 1
delete  from contacts where opt_out = 0; -- to delete contacts who have OPT_OUT is 0
select * from contacts;
delete from contacts where company = 'ABC'; -- to delete contacts who have company name is ABC
insert into contacts values
(658,'mili@gmail.com','mili','','DGH',1,1); -- to add data in empty table

select distinct(company) from contacts; -- to update or to convert the data into new one 

update contacts set fname ='niti' where id = 658;

-- EXERCISE -3 ------

create table customer(
customer_id int primary key not null,
cust_name varchar(30),
customer_city varchar(20),
grade varchar(20),
salesman_id int);

insert into customer values
(3002,'nian','india','99',5001),
(3007,'abhi','india',100,5001),
(3005,'jai','india',98,5002),
(3008,'suresh','india',200,5002),
(3004,'ananth','india',300,5006),
(3009,'jack','india',300,5003),
(3003,'himran','india',100,5007),
(3001,'peter','paris','', 5005);

select * from customer;

create table salesman(
salesman_id int primary key not null,
name varchar(30),
salesman_city varchar(30),
commission float);

insert into salesman values
(5001,'nian','india',0.015),
(5002,'jai','india',0.013),
(5005,'peter','paris',0.011),
(5006,'ananth','india',0.014),
(5007,'himran','india',0.013),
(5003,'jack','india',0.012);
select * from salesman;
 
select customer.cust_name,customer.customer_city ,customer.grade ,salesman.salesman_id,salesman.salesman_city from customer inner join salesman on  customer.salesman_id=salesman.salesman_id where grade < 100;
