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


select *from Employees;

create table employees(id int, name varchar(40), doj date);
insert into employees value(101, 'Anand','2024-01-31');

insert into employees values(102,'Nakul','2003-02-08'),(103,'shrekant','2003-09-9');
Set sql_safe_updates = 1;
select*from employees;
set sql_safe_updates = 0;
update employees set doj='2001-05-01' where id>102;

update employees set name ='Narendra Modi' where id>100;
update employees set name ='Rajesh Tope' where doj= '2003-02-08';


/* delete command */

delete from employees where id = 101;
delete from employees where id = 102;


/* DROp VS delete 

DROP                    DELETE
We can drop table        we can delete particular rows
More powerful            here we can delte rows where condition is needed
by dropping parmentatly delete  only rows delete
both can delete          only rows delete
*/

/* TCL (commit, rollback, savepoint)*/

Select *from employees ;

set auto_commit= 0;
insert into employees values(2, 'Scott', null);
commit;

insert into emplouees values (3,'Scott',NULL);

Rollback;


/* SAVEpoint Example*/



insert into employees value(104,'Rahul','2003-01-01');
SavePoint a1;

insert into employees value(105,'Arnav','2004-03-1');

savepoint a2;

insert into employees value(106,'Prakash','2005-02-05');

savepoint a3;

insert into employees value (107,'Sudhir','2005-03-09');

savepoint a4;

select *from employees;

Rollback to savepoint a4;


Rollback to savepoint a1;

Rollback;

Select*from employees;

COMMIT;

DELETE FROM EMPLOYEES;

SELECT*FROM EMPLOYEES;
TRUNCATE TABLE EMPLOYEES;
sELECT*FROM EMPLOYEES;
/*
DELETE                       tRUNCATE
1) DML COMMAND              1) DDL COMMAND

2) DELETE PARTICULAR ROW IN WHICH CONDITION IS NEEDED OR COLOUMN NAME IS NEEDED,  2) IN DML, DELETE ALL ROWS PERMENTATLY 

*/
DROP TABLE STUDENTS;

CREATE TABLE STUDENTS(ID INT, NAME VARCHAR(40), PHNO BIGINT);

INSERT INTO STUDENTS VALUES(1,'nATHURAM',9898332145),(2,'SAIRAM',1234567890),(3,'kRUSHNA',4321876509),(5,'sHRIDHAR',6543217890),(6, 'RAGHU',5432167890);

SELECT*FROM STUDENTS;
UPDATE STUDENTS SET STUDENTS.NAME =NULL 
SELECT*FROM STUDENTS;