create database thaotac_ham;

use thaotac_ham;

create table quanly
(
    ID      int(10)     not null primary key,
    TEN     varchar(20) not null,
    TUOI    varchar(10) not null,
    KHOAHOC varchar(20) not null,
    SOTIEN  int(20)
);

insert into  quanly(ID, TEN, TUOI, KHOAHOC, SOTIEN) VALUES (6,'Huong','20','TCNH',250000);

SELECT * FROM quanly
WHERE TEN = 'Huong';

SELECT SUM(SOTIEN) as Tổng
FROM quanly
WHERE TEN = 'Huong';