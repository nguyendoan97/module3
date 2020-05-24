create database baitap_car;

create table customer(
    customer_number int not null auto_increment primary key ,
    customer_name varchar(50)not null ,
    contact_lastname varchar(50) not null ,
    contact_firstname varchar(50) not null ,
    phone varchar(50) not null ,
    address1 varchar(50) not null ,
    address2 varchar(50),
    city varchar(50) not null ,
    state varchar(50) not null ,
    postalCode varchar(50)not null ,
    country varchar(50) not null ,
    creditLimit double not null,
    officeCode varchar(50),
    foreign key (officeCode) references offices(officeCode)
);

create table order(
    order_number int(20) not null primary key ,
    order_date date not null ,
    requiredDate date not null ,
    shipedDate date not null ,
    status varchar(15) not null ,
    comments text,
    quantityOdered int not null ,
    priceEach double not null,
    customerNumber int,
    foreign key (customerNumber) references customer(customer_number)
);

create table payments(
    customerNumber int not null primary key ,
    checkNumber varchar(50) not null ,
    paymentDate date not null ,
    amount double not null,
    customerNumber int,
    foreign key (customerNumber) references customer(customer_number),
    salesRepEmployeeNumber varchar(50),
    foreign key (salesRepEmployeeNumber) references employees(employeesNumber)
);

create table products(
    productCode varchar(15) not null primary key ,
    productName varchar(70) not null ,
    productScale varchar(10) not null ,
    productVendo varchar(50) not null ,
    productDescription text not null ,
    quantityStock int not null ,
    buyPrice double not null ,
    MSRP double not null,
    productLine varchar(50),
    foreign key(productLine) references productlines(productLine)
);

create table productlines(
    productLine varchar(50) not null primary key ,
    textDescription longtext ,
    image varchar(50) not null
);

create table employees (
    employeesNumber int not null primary key ,
    lastName varchar(50) not null ,
    firstName varchar(50)not null ,
    email varchar(100) not null ,
    jobTitle varchar(50)not null

);

create table offices(
    officeCode varchar(10) not null primary key ,
    city varchar(50) not null ,
    phone varchar(50)not null ,
    addressLine1 varchar(50) not null ,
    addressLine2 varchar(50),
    state varchar(50),
    country varchar(50)not null ,
    postalCode varchar(15) not null
);

create table OrderDetails(
    productCode varchar(15),
    foreign key (productCode) references products(productCode),
    orderNumber int(20),
    foreign key (orderNumber) references order(order_number)
);