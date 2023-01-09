drop database if exists kauppademo;
create database kauppademo;
use kauppademo;
create table category (
id int primary key AUTO_INCREMENT,
name VARCHAR(255) not NULL UNIQUE
);

create table product (
id int primary key AUTO_INCREMENT,
name VARCHAR(255) not NULL,
price double (10,2) not null,
category_id int not null,
index category_id(category_id),
foreign key(category_id) references category(id)
on delete restrict
);

insert into category (id,name) values 
(1, 'Pakohuoneet'),
(2, 'Maatilaelämykset'),
(3, 'Liikunta'),
(4, 'Hurjat'),
(5, 'Muu');


insert into product (name, price, category_id) values ('Pakohuone 1', 10, 1);
insert into product (name, price, category_id) values ('Pakohuone 2', 20, 1);

insert into product (name, price, category_id) values ('Heinänteko', 35, 2);
insert into product (name, price, category_id) values ('Kissanhoito', 40, 2);

insert into product (name, price, category_id) values ('Juoksutreeni', 30, 3);
insert into product (name, price, category_id) values ('Vaellus', 15, 3);

insert into product (name, price, category_id) values ('Benjihyppy', 50, 4);
insert into product (name, price, category_id) values ('Ralliauto', 45, 4);