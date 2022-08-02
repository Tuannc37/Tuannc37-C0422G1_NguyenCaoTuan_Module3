drop database if exists demo;
create database demo;
use demo;

create table users (
 id  int(3) not null auto_increment,
 name varchar(120) not null,
 email varchar(220) not null,
 country varchar(120),
 primary key (id)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
insert into users(name, email, country) values('Tuấn','dsds@codegym.vn','Viet Nam');
insert into users(name, email, country) values('An','rettre@che.uk','Lào');
insert into users(name, email, country) values('Ronando','bvbfdfd@codegym.vn','Campuchia');
insert into users(name, email, country) values('Thức','rtrtdf@che.uk','Kenia');
insert into users(name, email, country) values('Trung','mjhgh@codegym.vn','Pháp');
insert into users(name, email, country) values('Messi','ưewds@che.uk','Pháp');