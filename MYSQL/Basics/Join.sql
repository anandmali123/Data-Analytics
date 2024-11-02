/* Delete
Delete on Cascade - whenever parent row delete then it automatic delte from child 
on Delete set null - whenever parent value delete  then there will be set null null in child table 

update 
update on Cascade - whenever parent row update then it automatic update from child 
on update set null - whenve parent value update then there will be set null  in child table

*/
select *from departments;

desc departments;

create table employees 
( 
empid int primary key, 
name varchar(20) not null, 
salary int not null check (Salary>0),
deptid int, 
foreign key(deptid) references
departments(deptno)
);
/*
0	7	10:31:17	insert into employees values(1,'Renu',1000,10),(2,'Suraj',3000,30),(3,'Sam',1000,10)	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`codesmashers`.`employees`, CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `departments` (`deptno`))	0.015 sec
*/insert into employees values(1,'Renu',1000,10);
insert into employees values(2,'Sonu',2000,10);

select*from employees;

delete from departments where deptno =10;
update departments set deptno =44 where deptno =20;

drop table employees;
drop table departments;

create table department(deptno int primary key, dname varchar(20) not null);

create table employees
(
  empid int primary key, 
 name varchar(20) not null, 
 salary int not null check(salary>0),
 deptid int references department(depno)
 on delete set null on update cascade
 );
 
 insert into employees values(1,'Renu',1000,55),(2,'Suraj',3000,20),(3,'Sam',1000,10);
 
 /*Joins : display data from multiple tables 
 
 Types of Joins : 
 Inner jin, Outer join, Full join, left joijn , Right join , Cross join 
 */
 
 select ename, dname from emp inner join department as dept on (emp.deptno = dept.deptno);
 
 select ename, dname from emp right outer join department on (emp.deptno <>department.deptno);
 
 select ename, dname from emp  right outer join department on (emp.deptno = department.deptno) where ename is null;
 
 
 
 #that employee thatis not working in any department (left)
 select ename, dname from department d right outer join emp e on (e.deptno =d.deptno ) where dname is null;
 
 #that department where no one is working 
 select ename, dname from emp e right outer join department d on (e.deptno =d.deptno) where ename is null;
 
 create table salgrade(grade int, losal int, Hisal int);
 
 insert into salgrade values(1,700, 1200), (2,1201, 1400), ( 3, 1401, 2000),(4, 2001, 3000), (5, 3001, 9999);
 select*from salgrade;
--  1	700	1200
-- 2	1201	1400
-- 3	1401	2000
-- 4	2001	3000
-- 5	3001	9999
 select *from emp;
 insert into emp (empno, ename) values (104,'Renu');
 select ename , sal from emp e inner join salgrade s on e.sal between s.losal and s.hisal where ename in ('smith','Dwanye');
 
 select ename, ifnull(empno,10) from emp left join salgrade on sal between losal and hisal;
 