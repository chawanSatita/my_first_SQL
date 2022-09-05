-- create table Menu

drop table if exists Soup;

create table Soup (
    soupid int,
    name text,
    price int,
    meat text,
    type text,
    primary key (soupid)
);

-- insert data
    
insert into Soup values
(1,'Mashroom soup', 150, 'bacon','European'),
(2,'Prawn bisque', 200, 'Prawn','European'),
(3,'Corn soup', 100, null,'European'),
(4,'Spinach soup', 150, 'bacon','European'),
(5,'Tomato soup', 120, 'chicken','European'),
(6,'Pumkiin soup', 100, null, 'European'),
(7,'Tom Yum Krung', 200, 'Prawn','Thai'),
(8,'Tom Kha Kai', 150, 'chicken', 'Thai'),
(9,'Sour Spicy soup', 120, 'Tofu','Chinese'),
(10,'Tomato egg drop soup', 120,'egg','Chinese'),
(11,'Clean Tofu soup',100,'tofu','Thai');



drop table if exists Main_dish;

--create table Main_dish

create table Main_dish(
    dishid int,
    name text,
    price int,
    meat text,
    type text,
    primary key (dishid)
);

insert into Main_dish values
(1, 'Bacon pizza', 350, 'bacon', 'European'),
(2,'Spicy bacon spaghetti',250, 'bacon','European' ),
(3,'Spicy prawn spaghetti',300, 'prawn','European'),
(4,'Tofu pizza', 300, 'tofu','European'),
(5,'Seafood pizza', 450, 'seafood','European' ),
(6,'Shrimp Cocktail Pizza',450, 'prawn','European'),
(7,'Pad Thai Krung', 300, 'prawn','Thai'),
(8,'Pad Thai Kai',250, 'chicken','Thai'),
(9,'Pad Thai', 200, 'tofu', 'Thai'),
(10,'Mapo Tofu With Rice', 300, 'tofu','Chinese')
;


drop table if exists Combo;

-- crate data combo

create table Combo (
    comboid int,
    soupid int,
    dishid int,
    name text,
    price int,
    primary key (comboid),
    foreign key (soupid) references Soup(soupid),
    foreign key (dishid) references Main_dish(dishid)
);
