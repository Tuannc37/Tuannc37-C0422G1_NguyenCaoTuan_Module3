drop database if exists Products ;
create database Products;

use Products;
create table products(
	Id int primary key,
	productCode int,
	productName varchar(40),
	productPrice int,
	productAmount int,
	productDescription varchar(50),
	productStatus varchar(40)
);

insert into products(Id,productCode,productName,productPrice,productAmount,productDescription,productStatus)
	values(1,2,"Sách",20000,2000,"Sách giáo khoa lớp 5","Cũ"),
	(2,3,"Vở",5000,10000,"Vở ô ly","mới"),
	(3,6,"Bút",2000,15000,"Bút bi","mới"),
	(4,4,"Quần áo",80000,500,"Quần áo trẻ em","Mới và cũ");

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create unique index index_productCode on products (productCode);
drop index index_productCode on products;

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create  index index_name_price on products (productName, productPrice);
drop index index_name_price on products;

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
-- So sánh câu truy vấn trước và sau khi tạo index
explain select productCode 
from products 
where productCode > 4;

explain select productName, productPrice 
		from 
			products 
		where productPrice = 10000 and  productName = "Vở" 
		group by productName;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
create view view_products as
    select 
        productCode, productName, productPrice, productStatus
    from
        products; 
set sql_safe_updates = 0;

-- Tiến hành sửa đổi view
update view_products 
set 
    productName = 'Mũ'
where
    productCode = 2;
set sql_safe_updates = 1;

-- Tiến hành xoá view
drop view view_products;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter $$
create procedure product_info ()
begin
	select * from products;
end $$
delimiter ;

-- Tạo store procedure thêm một sản phẩm mới
delimiter $$
create procedure add_new_product (in id int, `code` int, `name` varchar(40), price int, amount int,`description` varchar(30),`status` varchar(30))
begin
	insert into products 
		value(id,`code`,`name`,price, amount, `description`, `status`);
end $$
delimiter ;
call add_new_product(7,7,"Áo ấm",120000,800,null,"mới");

-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter $$
create procedure update_product (in id int, `code` int, `name` varchar(40), price int, amount int,`description` varchar(30),`status` varchar(30))
begin
	set sql_safe_updates = 0;
	update products 
		set productCode = `code`, 
			productName = `name`,
			productPrice = price,
            productAmount = amount,
            productDescription = `description`, 
            productStatus = `status`
	where Id = id;
    set sql_safe_updates = 1;
end $$
delimiter ;
call update_product(9,9,"Áo ấm",190000,900,null,"cũ");

-- Tạo store procedure xoá sản phẩm theo id
delimiter $$+
create procedure delete_product (in id int)
begin
	delete from products where Id = id;
end $$
delimiter ;
call delete_product(7);