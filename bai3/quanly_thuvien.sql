create database library;
use library;
create table students(
    student_number varchar(15) not null primary key ,
    student_name varchar(50) not null ,
    address varchar(100) not null ,
    email varchar(50) not null ,
    image varchar(100),
    book_ID varchar(15)

);
alter table students
add foreign key (book_ID) references book(book_ID);

create table book(
    book_ID varchar(15) not null primary key ,
    book_name varchar(50)not null ,
    book_author varchar(50),
    category_ID varchar(15)
);
alter table book
add foreign key (category_ID) references category(ID);

create table category(
    ID varchar(15) not null primary key ,
    name varchar(50) not null
);

create table borroworder(
    order_ID varchar(15) not null primary key ,
    amount varchar(20) not null ,
    student_number varchar(15)
);

alter table borroworder
add foreign key (student_number) references students(student_number);

select * from students;

insert into students(student_number, student_name, address, email, image) values ('3','Đông','Nam Định','xuandong@gmail.com',null);

insert into category(ID, name) VALUES ('1','funny');

insert into book(book_ID, book_name, book_author, category_ID) VALUES ('1','Nhân Tài Đất Việt','Không Rõ','1');

update students SET book_ID = '1' where student_number = '1';

insert into borroworder (order_ID,amount,student_number,borrowDate,returnDate,book_ID) VALUES ('1','3','1','25/05/2020','30/05/2020','1');

alter table borroworder
add borrowDate varchar(20)not null ;

alter table borroworder
add returnDate varchar(20)not null ;

alter table borroworder
    add book_ID varchar(15)not null ;

alter table borroworder
ADD foreign key (book_ID) references students(book_ID);


