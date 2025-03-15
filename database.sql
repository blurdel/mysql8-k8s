-- create table and data
drop database if exists SPRING;
create database if not exists SPRING;
use SPRING;

CREATE TABLE Person (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

insert into Person (name, age) values ('Zoey!', 15), ('Tana', 11);

select * from Person;
