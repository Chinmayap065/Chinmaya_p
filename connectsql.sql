create database learning;
use learning;
show tables;
create table student
(s_id int primary key,
s_name varchar(20));
select * from student;
insert into student values (2,"Ajay"),(3,"Rekha"),(4,"Zafar");
select * from student;