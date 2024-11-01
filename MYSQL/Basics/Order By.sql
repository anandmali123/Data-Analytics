/* Homework Yesterday                           */
#1) Display Employess who hired in month of may
select *from emp where hiredate like '%-05-%';

#2) Display employees whose name start with j and end with s 
select *from emp where ename like 'j%s';

#3) Display those who hired in year 1980 
select*from emp where hiredate between '1980-01-01' and '1980-12-31';

#Select data job = clerk and deptno =20
select job, deptno from emp where job = 'clerk' and deptno =20;

select *from emp where job = 'clerk' or job='salesman';
select*from emp where job in('clerk','salesman');

#salary >1000 and job in ('Clerk','salesman')
select *from emp where job in ('clerk','salesman') and sal>1000;
select*from emp where job ='clerk' and sal>1000 or job='salesman' and sal>1000;
select*from emp where (job ='clerk' or job='salesman') and sal>1000;

# Order by clause
select ename, sal from emp order by sal asc;

select ename ,sal from emp order by  sal desc;

#do not start with s 
select *from emp where ename not like 's%';

select *from emp where sal is not null;

select *from emp where sal not between 1250 and 3000;

select ename, sal from emp order by sal; #default asc

select ename as name, sal as salary from emp order by salary ;

select ename as name , sal as salary from emp order by ename;

select ename , sal , hiredate from emp order by 1;

select deptno, sal from emp order by deptno asc, sal desc;

#top n 
select * from emp order by sal desc limit 1;

select *from emp order by sal desc limit 3;

#from the first hired date
select *from emp where job = 'clerk' order by hiredate asc;

#find 2nd hired clerk

select *from emp where job ='Clerk' 
ORDER BY hiredate asc 
limit 1,1;


#find second and third hired clerk 
select *from emp where job ='clerk'
order by hiredate asc
limit 1,2;

#highest 2nd paid emp

select *from emp   order by sal desc limit 2,1;



#homework 
#employee doesnt get commision 
select *from emp where comm =null or comm = 0;

#2) dispaly 2nd hired salesman 
select *from emp where job = 'manager' order by hiredate asc limit 2,1;

#3 M highestc commition employee
select *from emp order by comm desc limit 1;
select*from emp;

select min(ename), min(hiredate) from emp;
select max(ename),min(hiredate) from emp;