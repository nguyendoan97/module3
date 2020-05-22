create database bank;

create table customer(
    customer_number int(10) not null primary key,
    fullname varchar(100),
    address varchar(250),
    email varchar(100),
    phone int (11)
);

create table account(
    account_number int(20) not null primary key ,
    account_type varchar(50),
    date date,
    blance int(50),
    customer_number int,
    foreign key(customer_number) references customer(customer_number)
);

create table transactions(
    tran_nnumber int(30) not null primary key ,
    account_number int(20),
    tran_date date,
    amount int(50),
    account_number int,
    foreign key(account_number) references account(account_number)
);