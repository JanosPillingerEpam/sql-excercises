use sql_exercise;

delete from menu_food where Menu_ID=2;
delete from menu where ID=2;

delete from menu_food;
delete from food;
delete from menu;
delete from restaurant;
delete from address;


drop table menu_food;
drop table food;
drop table menu;
drop table restaurant;
drop table address;

drop database sql_execise;
