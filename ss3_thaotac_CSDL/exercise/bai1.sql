drop database if exists QuanLySinhVien;
create database QuanLySinhVien;
use QuanLySinhVien;

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

insert into Class
	values (1, 'A1', '2008-12-20', 1);
insert into Class
	values (2, 'A2', '2008-12-22', 1);
insert into Class
	values (3, 'B3', current_date, 0);

insert into Student (StudentName, Address, Phone, Status, ClassId)
	values ('Hung', 'Ha Noi', '0912113113', 1, 1);
insert into Student (StudentName, Address, Status, ClassId)
	values ('Hoa', 'Hai phong', 1, 1);
insert into Student (StudentName, Address, Phone, Status, ClassId)
	values ('Manh', 'HCM', '0123123123', 0, 2);

insert into Subject
	values  (1, 'CF', 5, 1),
			(2, 'C', 6, 1),
			(3, 'HDJ', 5, 1),
			(4, 'RDBMS', 10, 1);
       
insert into Mark (SubId, StudentId, Mark, ExamTimes)
	values  (1, 1, 8, 1),
			(1, 2, 10, 2),
			(2, 1, 12, 1);
            
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’ 
select *
from Student
where StudentName like "h%";

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12. 
select *
from Class
where month(StartDate) = "12";

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select *
from `Subject` s
where s.Credit between 3 and 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
update Student s 
set 
    s.ClassID = '2'
where
    s.StudentName = 'Hung';

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select StudentName, SubName, Mark
from
    Student s
        join
    Mark m on s.StudentID = m.StudentID
        join
    `subject` sub on m.SubID = sub.SubID
order by m.Mark desc , StudentName;