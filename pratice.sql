show databases;
create database practice;
show databases;
use practice;
-- ctrl + enter = fire query
create table trial
( t_id int,
t_name varchar(20)
);
show tables;
select * from trial;
insert into trial values (1, "python");
select * from trial;
insert into trial values (1,"Java");
select * from trial;
insert into trial values (1,"Js");
select * from trial;

create table food_items
( food_id int primary key,
food_name varchar(20)
);
show tables;
select * from food_items;
insert into food_items values (1,"Sandwich")
select * from food_items;
insert into food_items values (2,"coke")
select * from food_items;
-- update 
update food_items set food_name ='pepsi' where food_id =2;
select * from food_items;
-- delete
delete from food_items where food_id = 1;
select * from food_items;

insert into food_items values (3,"Samosa"),(4,"Ice-cream");
alter table food_items add food_price int;
select * from food_items;
-- samosa 20 icecream 30 
update food_items set food_price = 20 where food_id = 3;
select * from food_items;
update food_items set food_price = 30 where food_id = 4;
select * from food_items;
alter table food_items drop food_name;
select * from food_items;
-- delete is used to delete one row
delete from food_items where food_id = 4;
select * from food_items;
-- truncate is used to delete everything expect handling
truncate table food_items;
select * from food_items; 
-- drop deletes everything ( drops table)
drop table food_items;
select * from food_items;


