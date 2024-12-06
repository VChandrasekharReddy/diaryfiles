

use diary;


-- user table  for user

create table user(
userid varchar(100) primary key ,
name varchar(100) not null ,
mobilenumber varchar(100) unique not null,
email varchar(100) unique not null,
password varchar(100) not null,
question varchar(100) not null ,
answer varchar(225) not null,
dateofjoin timestamp default current_timestamp
);
-- user date for diary to save the data

create table data(
userid varchar(100) not null,
date timestamp default current_timestamp,
mater VARCHAR(5000),
foreign key (userid) references user(userid)
);
select * from user;
desc data;
select distinct(year(date)) from data where userid='user001';

create database sdb;
use sdb;
CREATE TABLE entries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(255) NOT NULL
);
select * from entries;