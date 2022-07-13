drop database if exists bai_tap; 
create database bai_tap;
use bai_tap;

create table class(
	id_class int primary key,
	`name_class` varchar(50)
);

create table teacher(
	id_teacher int,
	`name_teacher` varchar(50),
	age_teacher int,
	country_teacher varchar(30)
);

insert into class
 values(1,"Hải"),(2,"Tuấn");

insert into teacher 
values(1,"Tuấn",24,"Đà nẵng"),(2,"Hải",22,"Đà nẵng");

select * 
from class.name;