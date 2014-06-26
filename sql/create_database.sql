create database sql_exercise;

create table address(
	ID INT(10) not null auto_increment primary key,
	CITY varchar(255) not null,
	COUNTRY varchar(255) not null,
	STREET varchar(255) not null,
	ZIPCODE varchar(255) not null
);

create table restaurant(
	ID INT(10) not null auto_increment primary key,
	NAME varchar(255) not null,
	ADDRESS_ID INT(10) not null,
	FOREIGN KEY (ADDRESS_ID) 
		references address(ID)
);

create table menu(
	ID INT(10) not null auto_increment primary key,
	Restaurant_ID INT(10) not null,
	FROMDATE DATE,
	TODATE DATE,
	FOREIGN KEY (Restaurant_ID)
		references restaurant(ID)
);

create table food(
	ID int(10) not null auto_increment primary key,
	CALORIES int(10),
	ISVEGAN bit(1) not null,
	NAME varchar(255) not null,
	PRICE int(10) not null
);

create table menu_food(
	Menu_ID int(10) not null,
	foods_ID INT(10) not null,
	primary key (Menu_ID,foods_ID),
	FOREIGN KEY (Menu_ID)
		references menu(ID),
	Foreign key (foods_ID)
		references food(ID)
);
