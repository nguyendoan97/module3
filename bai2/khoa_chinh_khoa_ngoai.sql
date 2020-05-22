create database baithuchanh3;

create table customer(
    id int auto_increment primary key,
    name varchar(30) not null ,
    address varchar(100),
    email varchar(100)
);

create table order(
    id int auto_increment,
    staff varchar(50),
    primary key(id),
    customer_id int,
    foreign key(customer_id) references customer(id)
);