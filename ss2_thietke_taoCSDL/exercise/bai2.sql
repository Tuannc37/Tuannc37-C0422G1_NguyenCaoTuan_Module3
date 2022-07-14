drop database if exists quan_ly_ban_hang;
create database quan_ly_ban_hang;
use quan_ly_ban_hang;

create table customer (
    cID int primary key,
    cName varchar(55) not null,
    cAge date
);

create table order_ (
    oID int primary key,
    cID int not null,
    oDate date not null,
    oTotalPrice int not null,
    foreign key (cID)
        references customer (cID)
);

create table product (
    pID int primary key,
    pName varchar(30) not null,
    pPrice int not null
);

create table orderdetail (
    oID int not null,
    pID int not null,
    odQTY int not null,
    primary key (oID , pID),
    foreign key (oID)
        references order_ (oID),
    foreign key (pID)
        references product (pID)
);