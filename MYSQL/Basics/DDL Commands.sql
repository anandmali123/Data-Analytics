Create database lastday;
use lastday;
create schema lastday1;
create table employees(empid int, name varchar(20), doj date);

describe employees;

Alter table employees add salary int;

Alter table employees add mobile_no int, add mail_d varchar(30);

Alter table employees add (location varchar(40), Age int);
Alter table employees modify location float;
Alter table Employees modify empid varchar(5);
Alter table employees drop column mail_d;
Rename table employees to emp_new;


drop table emp_new;


describe emp_new;

create table employees(emp_id int, name varchar(40), doj date);

insert into employees values(1, 'Sarala','2021-3-09');


select *from Employees;

insert into employees values(3,'Sam',NuLL);
insert into employees values(5,'Ramu');
insert into employees(emp_id, name) values(6,'Trea');
insert into employees values(7,'Priya',current_date());

update employees set name = 'Nair' where emp_id = 3;


/* Homework */ 


Create table student(id int, name varchar(50), age int);
describe student;
Alter table student drop age;
Alter table student drop id;
alter table student drop name;
drop table student;