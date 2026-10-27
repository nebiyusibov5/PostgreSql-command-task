create table customers(
    id serial primary key,
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    email varchar(100) unique,
    totalspend decimal(10,2) check(totalspend>0),
    status varchar(20) default 'active',
    registration_date timestamp default current_timestamp
);

drop table customers

insert into customers (firstname, lastname, email, totalspend, status) values 
('Anar', 'Məmmədov', 'anar.m@gmail.com', 450.50, 'active'),
('Leyla', 'Əliyeva', 'leyla.a@yahoo.com', 1250.00, 'active'),
('Elçin', 'Qasımov', 'elcin.q@mail.ru', 50.20, 'inactive'),
('Nigar', 'Həsənova', 'nigar.h@gmail.com', 3200.75, 'active'),
('Rauf', 'Kərimov', 'rauf.k@hotmail.com', 0.01, 'pending');

select * from customers

select firstname, lastname, totalspend,
    ROUND(totalspend) as normal_round,
    ceil(totalspend) as ceil_round,
    floor(totalspend) as floor_round 
	from customers ---1

select firstname, lastname, totalspend,
    ROUND(totalspend * 0.02, 2) as cashback
from customers; ---2

select firstname,lastname,totalspend,
	totalspend % 100 as remainder
from customers ----3

select 
    firstname, 
    lastname, 
    totalspend,
    abs(totalspend - 1000) as loyalty_limit
from customers; ---4

select 
    firstname, 
    lastname, 
    totalspend,
    power(totalspend, 2) as spendsquare,
    sqrt(totalspend) as spendsqrt
from customers; ---5

select 
    firstname,
    upper(firstname) as uppercase_name,
    lower(firstname) as lowercase_name
from customers;---6

select 
    firstname,
    length(firstname) as name_length
from customers;---7




