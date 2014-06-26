use sql_exercise;

INSERT INTO address VALUES (Null,'Budapest','Hungary','Alsó valami','1070');

INSERT INTO restaurant VALUES(NULL, 'All You can Eat', 1);

INSERT INTO menu VALUES(null, 1, curdate(), curdate()+ interval 1 month - interval 1 day);

insert INTO food VALUES(null, 10, 0, 'husi', 1000);
insert INTO food VALUES(null, 20, 1, 'krumpli', 200);
insert INTO food VALUES(null, 0, 1, 'salata', 300);
insert INTO food VALUES(null, 30, 1, 'bounty', 100);
insert INTO food VALUES(null, 40, 0, 'diszno', 2000);

insert INTO menu_food VALUES(1,1);
insert INTO menu_food VALUES(1,2);
insert INTO menu_food VALUES(1,3);
insert INTO menu_food VALUES(1,4);
insert INTO menu_food VALUES(1,5);

INSERT INTO menu VALUES(null, 1, curdate()+interval 1 month, curdate()+ interval 2 month - interval 1 day);

insert INTO food VALUES(null, 70, 1, 'draga bounty', 1100);
insert INTO food VALUES(null, 80, 0, 'draga diszno', 20000);

insert INTO menu_food VALUES(2,1);
insert INTO menu_food VALUES(2,2);
insert INTO menu_food VALUES(2,3);
insert INTO menu_food VALUES(2,4);
insert INTO menu_food VALUES(2,5);
insert INTO menu_food VALUES(2,6);
insert INTO menu_food VALUES(2,7);
