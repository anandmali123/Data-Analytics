create table emp(empno int, ename varchar(40), job varchar(450), MGR int, Hiredate date, Sal int, Comm int, DeptNO int);

insert into emp values(7369,  'Smith', 'Clerk', 7902, '1980-12-9',4000, NULL, 20),(7169,  'Rock', 'Salesman', 7302, '1981-12-9',3000, NULL , 40),(7364,  'John', 'Manager', 7502, '1940-12-9',600, NULL, 42),(733,  'Dwanye', 'Manager', 7502, '1985-12-9', 500, NULL, 56),(7349,  'Sumit', 'Clerk', 7905, '1980-12-5',600, 0, 50),(7364,  'Akash', 'Developer', 7905, '1984-12-9',900, 0, 50),(7349,  'VIshal', 'Manager', 4902, '2021-09-08',600,Null, 50);

select*from emp;

select ename, job, hiredate from emp;


select ename as Name , sal*12 as Salary from emp;

select sal salary from emp; -- without use of as 

select distinct deptno from emp ;#Distinct 

select distinct sal from emp;

select distinct deptno ,job from emp;

select *from emp where job = 'clerk'; 

select *from emp where sal>1200;

Select *from emp where job!='manager';

select*from emp where job <> 'manager';

#display all the details of Smit, Rock

select *from emp where ename in('Smit', 'Sumit');

select*from emp where sal between 1200 and 3000;

select *from emp where ename like '%s';


select*from emp where ename  like '%s%';

select*from emp where ename like '%a%a%';

select *from emp;

select ename, sal, comm, sal+comm from emp;


/* ifnull function ifnull(arg1,arg2)*/

select comm, ifnull(comm, 0) from emp;


/* isnull(arg1) function */

select comm, isnull(comm) from emp;


/* nullif(arg1, arg2)
*/

select nullif('Sumit', "Sumit");

select nullif('Sumit','Smit');

select *from emp;

select ename, (sal - 200)*12 from emp;

select *from emp where comm = null;

select *from emp where isnull(comm) =1;

update emp set  comm =0;


/* Homework*/

select *from emp where month(hiredate) =12;

select*from emp where ename like 'j%n';

select *from emp where year(hiredate)= 1980;



/* 

select

ifnull(arg1,arg2) ==> arg1 = null  , print(arg1)

isnull(arg1) ==> if arg1=null print(1), id not then print(0)

