use sql_exercise;

select * from food;
Select * from food where ISVEGAN=1;
Select * from food ORDER BY PRICE;
Select * from food where PRICE = (select max(PRICE) from food);
Select count(1),Menu_ID from menu_food group by Menu_ID;

select * from restaurant join address;
select * from food join menu_food on food.ID = foods_ID join menu on Menu_ID=menu.ID where curdate() between FROMDATE and TODATE;

update restaurant set ADDRESS_ID=2 where ADDRESS_ID=1;
update food set PRICE=1222 where ID=3;

CREATE INDEX food_index on food(NAME);


CREATE OR REPLACE VIEW food_restaurant AS
	select food.NAME, restaurant.NAME as name2, address.CITY, address.STREET from food join menu_food on food.ID = foods_ID join menu on Menu_ID=menu.ID 
	join restaurant on Restaurant_ID=restaurant.ID join address on ADDRESS_ID=address.ID
	where curdate() between FROMDATE and TODATE;
