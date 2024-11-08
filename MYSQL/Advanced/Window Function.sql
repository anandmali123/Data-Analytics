select ename, sal, deptno, rank() over(order by sal desc) as rank_value from emp;

select ename, sal, deptno, rank() over( Partition by deptno order by sal desc) as  Rank() value from emp where Rank() over(Partition by Deptno order by sal desc) =1;
select emp.*,
 sum(sal) over(partition by deptno) as grand_total_deptno from emp;
 
 select *from ( 
 select ename, sal , deptno, max(sal) over (partition by deptno order by sal desc) as rank_value from emp) t1;
 
 select ename, sal , deptno, dense_rank() over (partition by deptno order by sal desc) as rank_value from emp; 
 
 select sum(sal) as cy, year(hiredate) as  year from emp group by year;
 
 select ename, sal , lag(sal,2,0) over() as py from emp; # lag ( column name, konta record, null value asel tar ) 
 
 select ename, sal , lead(sal) over() as next_value from emp;
 
 select year(hiredate ) as year, concat(round(((sum(sal) - lag(sum(sal) ) over())/lag(sum(sal)) over()) * 100) ,'%') as 'yoy% growtyh' from emp group by year;
 
 select *from emp;
 
 select ename, coalesce(sal+comm, sal) as actual_income from emp 
 
 