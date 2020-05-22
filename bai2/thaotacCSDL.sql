create database baituchanh2;
use baituchanh2;

create table contacts(
    contact_id int(11) not null auto_increment,
    last_name varchar(30) not null ,
    first_name varchar(25),
    birthday date,
    constraint contact_pk primary key (contact_id)
);
alter table contacts
modify first_name varchar(30) default 'ABC';

alter table contacts
drop column birthday;

alter table contacts
change column contact_id ID
varchar(5) not null ;

alter table contacts
rename to people;