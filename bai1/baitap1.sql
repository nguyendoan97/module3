create database baitap;
use baitap;
CREATE TABLE Persons (
                         PersonID int,
                         LastName varchar(255),
                         FirstName varchar(255),
                         Address varchar(255),
                         City varchar(255)
);
insert into Persons(PersonID, LastName, FirstName, Address, City) values ('3','Lê','Hiếu','TP Vinh','Nghệ An');

select * from Persons;

drop database baitap;
