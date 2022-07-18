drop database if exists QuanLySinhVien_ss4;
create database QuanLySinhVien_ss4;
use QuanLySinhVien_ss4;

create table Class(
	ClassID int not null primary key auto_increment,
    ClassName varchar(60) not null,
    StartDate datetime not null,
    Status bit
);

create table Student(
	StudentID int not null primary key auto_increment,
    StudentName varchar(30) not null,
    Address varchar(50),
    Phone varchar(20),
    `Status` bit,
    ClassID int not null
);

create table `Subject`(
	SubID int not null primary key auto_increment,
    SubName varchar(30) not null,
    Credit tinyint not null default(1),
    `Status` bit default(1)
);

create table Mark(
	MarkID int not null primary key auto_increment,
    SubID int not null,
    StudentID int not null,
    Mark float default(0),
    
    ExamTimes tinyint default(1)
);


 
