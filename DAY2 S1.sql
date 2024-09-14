show databases;
create database company;
use company;
create table employees
( 
e_id int primary key,
e_name varchar(20),
e_sal int
);
show tables;
select * from employees;
insert into employees values 
(4, "Zen",37000),(5,"Arun",37000),(6,"Max",32500);
select * from employees;
-- wild card
select e_name,e_sal from employees where e_name like '%oya';
-- aggregate 
select count(*) from employees;
select max(e_sal) as highest from employees;
select min(e_sal) from employees;
select sum(e_sal) from employees;
select round(avg(e_sal),2) from employees; 
select * from employees;
select e_name,e_sal from employees;
-- logical operations
select * from employees where e_sal < 34000 or e_name = 'max';
-- sort and limit 
select * from employees;
update employees set e_sal = 36500 where e_id =4;
select * from employees order by e_sal asc;
select * from employees order by e_sal desc;
select * from employees order by e_sal desc limit 2,1;

desc employees;

create table department 
(d_id int primary key auto_increment,
d_name varchar(20)
);

show tables;
select * from department;

