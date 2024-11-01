select*from emp;

select *from emp
where job ='clerk'
order by hiredate asc limit 1,1;#(1 -> ignorign first , selecting only 1 row 

select*from emp 
order by comm desc 
limit 1;

select sum(sal) as total_income, avg(sal) from emp;

select count(empno) from emp;

select count(comm) from emp;
select count(*) from emp;

#find employes count having clerk and 20 deptno 
select count(empno) from emp where job='clerk' and deptno =20;

select count(*) from emp where job in('clerk','salesman');

select count(empno), job from emp group by job;

select count(empno), job from emp where job in ('clerk','salesman') group by job;

select count(distinct deptno) from emp;

select count(empno), job from emp where count(empno)>3 group by job;
select count(empno), JOB FROM EMP group by job having count(empno) >3;

/* find total income (excluding the comm) of deptid =10 and 20 but display only that deptid where the total income is 9600 
*/
select count(empno) from emp where job ='clerk' and job-'salesman';

select count(job), job from emp where job in ('clerk', 'salesman') group by job;

select sum(sal) as total_income , deptno as dept_id from emp where deptno in (10,20) group by dept_id having sum(sal)>9600;

select sum(sal) as total_income, deptno as dept_id from emp where deptno in(10,20) and sal>9600 
group by dept_id;

select length(length('Renu'));

/* Rules on data --> COnstraints 
*/
Create table departments(deptno int primary key, dname varchar(20) not null);

insert into departments values(10,'Sales');

select *from departments;
drop table employees;
create table employees1(
empid int primary key, 
name varchar(20) not null, 
salary int not null check(salary>0), 
deptid int ,foreign Key(deptid) references 
departments(deptno)
); 


