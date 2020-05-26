create database demo;
use demo;
create table Product(
    ID int(15)not null primary key,
	productCode varchar(20)not null,
	productName varchar(50) not null,
    productAmount varchar(15)not null,
    productDescription varchar(20)not null,
    productStatus varchar(50)not null);

insert into Product(ID,productCode,productName,productAmount,productDescription,productStatus) values 
    (1,'PO112','Nokia 1208',400000,'free ship','selling'),
    (2,'PO113','Nokia Lumia 523',800000,'free ship','stop selling'),
    (3,'PO200','SamSung Galaxy Trend',1400000,'Hot','selling'),
    (4,'PO301','OPPO F9',5900000,'flash sell 39%','selling');    

create unique index idx_productCode
on Product(productCode);

create index idx_Composite
on Product(productName,productAmount);

create view viewProduct as
select productCode,productName,productAmount
from Product;
delimiter /
create procedure addProduct(code varchar(20),
name varchar(50),
amount varchar(15),
description varchar(20),
status varchar(50))
begin
insert into Product(productCode,productName,productAmount,productDescription,productStatus) values(code1,name1,amount,description1,status1);
end /
