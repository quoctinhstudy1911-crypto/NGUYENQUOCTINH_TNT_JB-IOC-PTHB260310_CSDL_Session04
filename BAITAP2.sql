
-- Dữ liệu 
create database ql_products;

create table  products(
	id serial primary key,
	name varchar(50),
	category varchar(50),
	price decimal(10,2),
	stock int
);

insert into products (name, category, price, stock) values 
('Laptop dell','electronics',1500.00,5),
('Chuột logitech','electronics',25.50,50),
('Bàn phím razer','electronics',120.00,20),
('Tủ lạnh lg','home applicances',800.00,3),
('Máy giặt samsung','home applicances',600.00,2);

--Yêu cầu:
-- Thêm sản phẩm mới: 'Điều hòa Panasonic', category 'Home Appliances', giá 400.00, stock 10
insert into products(name,category,price,stock) values 
('Điều hòa Panasonic','home appliances',400.00,10);

-- Cập nhật stock của 'Laptop Dell' thành 7
update products 
set stock = 7
where name ilike 'Laptop Dell'

-- Xóa các sản phẩm có stock bằng 0 (nếu có)
delete from products
where stock = 0

-- Liệt kê tất cả sản phẩm theo giá tăng dần
select name as "Tên sản phẩm", price as "Giá sản phẩm"
from products 
order by price asc

-- Liệt kê danh mục duy nhất của các sản phẩm (DISTINCT)
select distinct category as "Các danh mục sản phẩm"
from products

-- Liệt kê sản phẩm có giá từ 100 đến 1000
select name as " Tên sản phẩm ", price as "Giá sản phẩm"
from products
where price between 100 and 1000

-- Liệt kê các sản phẩm có tên chứa từ 'LG' hoặc 'Samsung' (sử dụng LIKE/ILIKE)
select name as "Tên sản phẩm"
from products
where name ilike '%LG%' OR name ilike '%Samsung%'

-- Hiển thị 2 sản phẩm đầu tiên theo giá giảm dần, hoặc lấy sản phẩm thứ 2 đến thứ 3 bằng LIMIT và OFFSET
select name as "Tên sản phẩm", price as "Giá sản phẩm"
from products 
order by price desc
limit 2
offset 1




