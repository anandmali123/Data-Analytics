select locate('r','renu');

select locate ('r','renu',2);

select locate('a','ankita');

select locate('a','Anand Mali',2);

select locate('a','Anand Mali',1)+1;

select locate('a','Anand Mali',locate('a','Anand Mali',1)+1);

select ename from emp where locate('a',ename)>0;

select ename from emp where locate('a',ename , locate('a',ename)+1)>0;

select trim('   aannadm  ');
select ltrim('   anand');
select rtrim('  an  ');

select reverse('anad');
select replace('Anand Mali','A','z');
select lpad('renu',10,'*');

select rpad('renu',10,'*');

select concat('XXXX-XXXX-',MID('1234-5678-8888',-4));


# Date function 

select now();
select year(now());
select month(now());
select monthname(now());
select day(now());
select dayname(now());

select 	quarter(now());
select weekofyear(now());

select dayofweek(now());
select date_add(now(),interval '1' year);

select date_add(now(),interval '10' day);

select date_add(now(), interval '7' hour);

select  hiredate-interval '1' day, hiredate from emp;


select date_format(now(),'%m');
select date_format(now(),'%W');
select date_format(now(),'%Y');
select date_format(now(),'%y');
select date_format(now(),'%d');
select date_format(now(),'%D');
select date_format(now(),'%w');
select date_format(now(),'%b');
select date_format(now(),'%a');

select str_to_date('22-aug-2024','%d-%b-%Y');

select round(1234.32,-1);
select truncate(323,-3);
select ceil(-12.4);

select floor(-11.9);


