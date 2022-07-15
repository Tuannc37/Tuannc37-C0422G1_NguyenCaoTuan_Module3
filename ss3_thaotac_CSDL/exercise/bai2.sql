drop database if exists quan_ly_ban_hang_ss3;
create database quan_ly_ban_hang_ss3;
use quan_ly_ban_hang_ss3;

create table customer (
    cID int primary key,
    cName varchar(55) not null,
    cAge tinyint
);

insert into customer(cID,cName,cAge)
values	("1","Minh Quan","10"),
		("2","Ngoc Oanh","20"),
		("3","Hong Ha","50");

create table `order` (
    oID int primary key,
    cID int not null,
    oDate date not null,
    oTotalPrice int,
    foreign key (cID)
        references customer (cID)
);

insert into `order` (oID, cID, oDate) 
values 	('1', '1', '2006/03/21'),
		('2', '2', '2006/03/23'),
		('3', '1', '2006/03/13');

create table product (
    pID int primary key,
    pName varchar(30) not null,
    pPrice int not null
);

insert into product (pID, pName, pPrice)
values ('1', 'May Giat', '3'),
	('2', 'Tu Lanh', '5'),
	('3', 'Dieu Hoa', '7'),
	('4', 'Quat', '1'),
	('5', 'Bep Dien', '2');
	

create table orderdetail (
    oID int not null,
    pID int not null,
    odQTY int not null,
    primary key (oID , pID),
    foreign key (oID)
        references `order`(oID),
    foreign key (pID)
        references product (pID)
);

insert into orderdetail (oID, pID, odQTY) 
values 	('1', '1', '3'),
	('1', '3', '7'),
	('1', '4', '2'),
	('2', '1', '1'),
	('3', '1', '8'),
	('2', '5', '4'),
	('2', '3', '3');

-- Hiển thị các thông tin  gồm oID, oDate, oTotalPrice của tất cả các hóa đơn trong bảng Order
select o.oID,o.oDate,o.oTotalPrice as `order`
from `order` o;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select  c.cID, cName, pName
from customer c
join `order` o on c.cID = o.oID
join orderdetail od on o.oID = od.oID
join product p on od.pID = p.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select c.cID, c.cName, o.oDate
from customer c
left join `order` o on c.cID = o.cID
where o.oID is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select o.oID, oDate,  sum(odQTY*pPrice) as total
from `order` o
join orderdetail od on o.oID=od.oID
join product p on od.pID = p.pID
group by oID;
