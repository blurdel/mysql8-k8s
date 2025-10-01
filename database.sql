-- user/database setup
create user if not exists 'tmuser'@'%' identified by 'tmuser';
grant select, insert, update, delete, show view on `SPRING`.* to 'tmuser'@'%';
-- grant all on *.* to 'tmuser'@'%';
flush privileges;

-- can verify privileges
use mysql;
select Host,User,Select_priv,Insert_priv,Update_priv,Delete_priv,Create_priv,Drop_priv,File_priv,Grant_priv from user;
select user,host,plugin from mysql.user;

-- create table and data
drop database if exists SPRING;
create database if not exists SPRING;
use SPRING;

CREATE TABLE Person (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

insert into Person (name, age) values ('Zoey!', 15), ('Tana', 11);

select * from Person;
