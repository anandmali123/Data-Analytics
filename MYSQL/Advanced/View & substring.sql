# display those employees wo has a salary value more than athe avg salary value with respect to departments

create view dept_info as select count(empno) as cnt, ifnull(sum(sal  + ifnull(comm,0)),0) as total_income, dname from emp e right outer join department d on (e.deptno = d.deptno) group by dname;

select*from dept_info;

create view anandmali as select empno, ename,sal,deptno from emp where deptno =10 with check option ;
select *from anandmali;

Alter view dept_info as select empno ,ename, sal, hiredate , deptno from emp where deptno =10;

insert into dept_info values(11,'xi',3000, '1981-10-10',20);

insert into dept_info values(12,'fu',300,'1908-3-21',40);



create table test(id int primary key auto_increment , name varchar(30) default 'N/n' , date_recorded datetime default now());

insert into test(name) values('test');

select*from test;




select upper('renu') , lower('RENU');
SELECT RIGHT ('RENU',1);

SELECT RIGHT('RENU',2);
SELECT LEFT('RENU', 1);
SELECT LEFT('RENU',2);

SELECT MID('RENU NAIR', 1,1);
SELECT MID('RENU NAIR',2,1);
SELECT MID('RENU NAIR',7,3);
SELECT MID('RENU NAIR',9,1);
SELECT MID('RENU NAIIR',-1,-1);
SELECT MID('RENU NAIR;', -1);
SELECT MID('RENU NAIR',-3,2);
SELECT CONCAT('RENU','NAIR');
SELECT CONCAT(ENAME, SAL, HIREDATE) FROM EMP;

SELECT CONCAT('RENU',NULL);

SELECT CONCAT('RENU',NULL);
